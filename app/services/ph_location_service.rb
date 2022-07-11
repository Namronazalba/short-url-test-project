class PhLocationService
  attr_reader :url
  def initialize
    @url = 'https://psgc.gitlab.io/api'
  end

  def get_regions
    response = RestClient.get("#{url}/regions")
    regions = JSON.parse(response.body)
    regions.each do |region|
      Region.find_or_create_by(code: region['code'], name: region['name'], region_name: region['regionName'])
    end
  end

  def get_provinces
    response = RestClient.get("#{url}/provinces")
    provinces = JSON.parse(response.body)
    provinces.each do |province|
      region = Region.find_by_code(province['regionCode'])
      Province.find_or_create_by(code: province['code'], name: province['name'], region: region)
    end
  end

  def get_districts
    response = RestClient.get("#{url}/districts")
    districts = JSON.parse(response.body)
    districts.each do |district|
      province = Province.find_by_code(district['provinceCode'])
      District.find_or_create_by(code: district['code'], name: district['name'], province: province)
    end
  end

  def get_minicipalities
    response = RestClient.get("#{url}/municipalities")
    municipalities = JSON.parse(response.body)
    municipalities.each do |municipality|
      district = Province.find_by_code(municipality['provinceCode'])
      Municipality.find_or_create_by(code: municipality['code'], name: municipality['name'], district: district )
    end
  end
  
end