$(document).ready(function() {
         main();
        });

        function main() {
            $('#opsuhcmbundle_persona_idMunicipio').hide();
            $('#opsuhcmbundle_persona_idparroquia').hide();
            $("#opsuhcmbundle_persona_idEstado").change(function(){
               municipio($(this).val());
            })
        }

         function municipio(municipio_elegido) { //recibe el valor=numero del estado seleccionado
             //alert(municipio_elegido);
             $.ajax({
                url: '../../municipio',
                type: 'POST',
                dataType: 'json',
                data: {idMunicipio: municipio_elegido}, //esto es un 2 el numero del estado que regresa cuando lo seleccionas
                success: function(data) {
                   //alert(JSON.stringify(data));
                        var pro= data[0].municipio;
                    //    alert(pro);
                    ajaxMunicipio(data);
                }
            });
        }

        function ajaxMunicipio(data) {
           // alert(data);
             // alert(JSON.stringify(data));
             $('#opsuhcmbundle_persona_idMunicipio').show();
         var $province_selector = $('#opsuhcmbundle_persona_idMunicipio');
             
             $province_selector.html('<option>Seleccione...</option>');

            for (var i=0, total = data.length; i < total; i++) {
                $province_selector.append('<option value="' + data[i].id + '">' + data[i].descripcion + '</option>');
                 }
            $('#opsuhcmbundle_persona_idparroquia').html("<option>Parroquia</option>");
             parroquia();
        }

        function parroquia() {
      
            $("#opsuhcmbundle_persona_idMunicipio").change(function(){
               var data = {
                idMunicipio: $(this).val()
                };
            $.ajax({
                url: "../../parroquia",
                type: 'POST',
                dataType: 'json',
                data: data,
                success: function(data) {
                    alert(JSON.stringify(data));
                    var pro= data[0].parroquia;
                    alert(pro);
                    ajaxParroquia(data);
                }
              });
            });
        }

        function ajaxParroquia(data){
          //  alert(JSON.stringify(data));
            $('#opsuhcmbundle_persona_idparroquia').show();
        var $city_selector = $('#opsuhcmbundle_persona_idparroquia');

            $city_selector.html('<option>Seleccione...</option>');

            for (var i=0, total = data.length; i < total; i++) {
                $city_selector.append('<option value="' + data[i].id + '">' + data[i].descripcion + '</option>');
                }

            }

