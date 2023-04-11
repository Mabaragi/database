from django.db import models

# Create your models here.
class Doctor(models.Model):
    name = models.TextField()

    def __str__(self):
        return f"{self.name} 전문의"
    
class Patient(models.Model):
    doctors = models.ManyToManyField(Doctor, through='Reservation')
    name =models.TextField()
    
    
    def __str__(self):
        return f"{self.name} 환자"
    
class Reservation(models.Model):
    doctor = models.ForeignKey(Doctor, on_delete=models.CASCADE)
    patient = models.ForeignKey(Patient, on_delete=models.CASCADE)
    symtom = models.TextField()
    reserved_at = models.DateTimeField(auto_now_add=True)

# class Reservation(models.Model):
#     doctor = models.ForeignKey(Doctor, on_delete=models.CASCADE)
#     patient = models.ForeignKey(Patient, on_delete=models.CASCADE)
    
#     def __str__(self):
#         return f"{self.doctor_id}번 의사의 {self.patient_id}번 환자"