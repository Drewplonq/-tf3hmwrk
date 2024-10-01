#### Задание 1

  <img src="https://github.com/user-attachments/assets/f72028ba-260a-474c-a198-67c3ee74f4e1" width ="500" >




 #### Задание 2.1

 https://github.com/Drewplonq/-tf3hmwrk/blob/main/count-vm.tf

<img src="https://github.com/user-attachments/assets/0d3e1c2e-2ee9-4976-b264-26989adb5740" width ="1050" >





<img src="https://github.com/user-attachments/assets/3d9a86c4-a6fd-4a0a-a6cb-c31ca6806fef" width ="500" >

<img src="https://github.com/user-attachments/assets/8c7aafa6-ae09-494e-a8d6-53e29e18db83" width ="500" >

 #### Задание 2.2

 https://github.com/Drewplonq/-tf3hmwrk/blob/main/for_each-vm.tf

 код переменной

 ```
variable "each_vm" {
  type = list(object({  vm_name=string, cpu=number, ram=number, disk_volume=number }))
  default = [ {
    vm_name = "main"
    cpu = 2
    ram = 1
    disk_volume = 5
  },
  {
    vm_name = "replica"
    cpu = 2
    ram = 2
    disk_volume = 10
  }]
}
```  

 Main Replica создаются первыми, потом уже веб ВМ-ы
 
<img src="https://github.com/user-attachments/assets/04cb74e6-3189-4c28-b61d-6d32f22be05f" width ="500" height ="240" >

https://github.com/Drewplonq/-tf3hmwrk/blob/main/locals.tf


#### Задание 3


https://github.com/Drewplonq/-tf3hmwrk/blob/main/disk_vm.tf

<img src="https://github.com/user-attachments/assets/b1843023-16e6-45fb-bf2d-ddee31dc7fc5"  width ="500" >


<img src="https://github.com/user-attachments/assets/7369a83d-5f4b-4086-a1e4-c447e471bff9" width ="500" >

