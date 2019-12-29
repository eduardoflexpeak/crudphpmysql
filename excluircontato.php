<?php
$tituloPagina = "Excluir Contato";

include_once "layouts/header.php";

include_once 'classes/BancoDados.php';
include_once 'classes/Contato.php';

$bancoDados = new BancoDados();
$db = $bancoDados->getConexao();

$contato = new Contato($db);

if (isset($_GET['id'])) {
    $contato->id = $_GET['id'];
    $contato->selecionar();
}

if(isset($_GET['excluir'])) {
    $contato->id = $_GET['excluir'];
    $contato->excluir();

    header('Location: index.php');
}

?>

<h3>Deseja mesmo excluir o contato <?php echo $contato->nome ?>?</h3>
<a class="btn btn-success" href="excluircontato.php?excluir=<?php echo $contato->id ?>">Sim</a>
<a class="btn btn-warning" href="index.php">Cancelar</a>

<?php
include_once "layouts/footer.php";
?>

