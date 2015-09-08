# == Schema Information
#
# Table name: rooms
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  beds        :integer
#  guests      :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  image_url   :string
#

class Room < ActiveRecord::Base

	validates :title, :presence => {in: [true], :message => "El campo Titulo es obligatorio"}
	validates :description, :presence => {in: [true], :message => "El campo Descripción es obligatorio"}, length: {maximum: 400, :message => "El campo Descripción no debe superar los 400 caracteres "}
	validates :beds, :presence => {in: [true], :message => "El campo Número de Camas es obligatorio"}, :numericality => {:only_integer => true, :message => "El campo Número de Camas debe ser Númerico"}
	validates :guests, :presence => {in: [true], :message => "El campo Número de Huespedes es obligatorio"}, :numericality => {:only_integer => true, :message => "El campo Número de Huespedes debe ser Númerico"}
	validates :image_url, :presence => {in: [true], :message => "El campo URL de la Imagen es obligatorio"}
	
end
