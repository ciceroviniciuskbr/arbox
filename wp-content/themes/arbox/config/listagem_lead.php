<?php
    if(isset($_POST['excluir']))
        $wpdb->delete( "wp_lead_exit", array( 'cd_lead' => $_POST['excluir'] ) );
	function listar_lead_saida(){

			global $wpdb;

			$total_reg = "10";

			$pagina = (isset($_GET['pagina']))? $_GET['pagina'] : "1";
			$pc = $pagina;

			$inicio = $pc - 1;
			$inicio = $inicio * $total_reg;

			$busca = "Select * from wp_lead_exit";
			$limite =  "LIMIT $inicio,$total_reg";

            if(isset($_GET['pesquisa']) && !is_null($_GET['pesquisa']) && !empty($_GET['pesquisa']) ){
                // $query = $busca." WHERE nm_lead LIKE '%".$_GET['pesquisa']."%' OR telefone_lead LIKE '%".$_GET['pesquisa']."%'";
                $query = $busca." WHERE nm_lead LIKE '%".$_GET['pesquisa']."%' OR telefone_lead LIKE '%".$_GET['pesquisa']."%'";

                $dados = $wpdb->get_results("$query ORDER BY cd_lead DESC $limite");
            } else {
				$dados = $wpdb->get_results("$busca order by cd_lead desc $limite");
			}

			$tr =  $wpdb->get_var("SELECT COUNT(*) FROM wp_lead_exit");
			$tp = $tr / $total_reg;

			$anterior = $pc -1;
			$proximo = $pc +1;
		?>

		<div class="wrap">

			<h1 class="wp-heading-inline">Leads Popup Exit</h1>

			<form id="comments-form" method="get">

				<div class="actions">
                    <input type="text" id="pesquisa" name="pesquisa"/>
                    <input type="submit" id="submit" class="button" value="Filtrar">
                </div>

            </form>

            <!-- <form action="excel-lead-whatsapp/" method="post">
                <input type="hidden" name="leads" value="<?= $_GET['pesquisa'] ?>">
                <input type="submit" class="button" value="Excel">
            </form> -->

			<hr class="wp-header-end">
            <br class="clear">

			<table class="wp-list-table widefat fixed striped comments">

				<thead>

					<tr>

						<th><b><span>Nome</span></b><span class="sorting-indicator"></span></th>

                        <th><b><span>Telefone</span></b><span class="sorting-indicator"></span></th>

						<th><b><span>Data</span></b><span class="sorting-indicator"></span></th>

						<th><b><span>Excluir</span></b></th>

					</tr>

				</thead>

				<?php



					if(!empty($dados)):

				?>

				<tbody>

					<?php

						foreach ($dados as $dado):

							?>

							<tr class="no-items">

								<td><?= ucwords(strtolower($dado->nm_lead)) ?></td>

                                <td><?= $dado->telefone_lead ?></td>

								<td><?= $dado->dt_lead ? date('d/m/Y', strtotime($dado->dt_lead)) : "" ?></td>

                                <td>
                                    <form method="post">
                                        <input type="hidden" name="excluir" value="<?= esc_html($dado->cd_lead) ?>"/>
                                        <input type="submit" class="button" value="Excluir"></a>
                                    </form>
                                </td>

							</tr>

						<?php
							endforeach;
						?>

					</tbody>

				<?php
					else:
				?>

				<tbody id="the-extra-comment-list" data-wp-lists="list:comment" style="display: none;">
					<tr class="no-items"><td class="colspanchange" colspan="5">Nenhum lead encontrado.</td></tr>
                </tbody>

				<?php
					endif;
				?>

			</table>

            <br class="clear">

			<div style="text-align: center;">

                <?php

                    if ($pc>1) {
                        echo " <a href='?page=lead_menu&pagina=$anterior'><- Anterior</a> ";
                    }

                    echo "|";

                    if ($pc<$tp) {
                        echo " <a href='?page=lead_menu&pagina=$proximo'>Próxima -></a>";
                    }

                ?>

			</div>

			<script type="text/javascript">

				$("#submit").click(function(e){

					e.preventDefault();

					let pesquisa = $("#pesquisa").val();
                    let link = "<?php get_site_url() ?>/wp-admin/admin.php?page=lead_menu"

                    if (pesquisa != "")
					    link = link.concat("&pesquisa=" + pesquisa);

                    window.location.href = link;

				});

			</script>

	<?php
	}
?>