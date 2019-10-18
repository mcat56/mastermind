class GenerateCode

  def self.generate_code(number)
    characters = ['R','G','B','Y']
    Array.new(number) {characters.sample}.join
  end
end
