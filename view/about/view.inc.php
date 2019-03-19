
<?PHP #endregion




require_once('models/CompanyProfileModel.php');    
$company_model = new CompanyProfileModel;   
$company = $company_model->  getCompanyProfile(); 

// echo "<pre>";
// print_r($company) ;
// echo "</pre>";





?>

