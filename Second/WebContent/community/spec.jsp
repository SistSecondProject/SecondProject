<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style type="text/css">
  .row{
  margin: 0px auto;
  }
  </style>
</head>
<body>

<div class="container">
	<div class="row">
  <h2>���� ��</h2>
  <p>������ �����Ӱ� �ڽ��� ������ �򰡹޴� �����Դϴ�</p>
  <div class="row" style="height: 60px">
  <a href="spec_insert.do">
  <button type="button" class="btn btn-primary" style="float: right;" >�۾���</button>
  </a>
   </div>
  <table class="table table-hover">
    <thead>
      <tr>
        <th width=10% class="text-center">��ȣ</th>
        <th width=5%></th>
        <th width=40% class="text-center">����</th>
        <th width=20% class="text-center">�ۼ���</th>
        <th width=10% class="text-center">�ۼ���</th>
        <th width=10% class="text-center">��ȸ��</th>
        <th width=5% class="text-center">���ƿ�</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td class="text-center">John</td>
        <td></td>
        <td>Doe</td>
        <td class="text-center">john@example.com</td>
          <td class="text-center">John</td>
        <td class="text-center">Doe</td>
        <td class="text-center">john@example.com</td>
      </tr>
     
    </tbody>
  </table>
  <table class="table table-hover">
        <tr>
         <td class="text-left">
          Search:&nbsp;  <select class="input">
                  <option>�ۼ���</option>
                  <option>����</option>
                 </select>&nbsp;
                 <input type=text name=ss class="input" size=12>
                 <input type=submit class="btn btn-sm btn-info" value=�˻�>
         </td>
         <td class="text-right" style="padding-right: 100px">
         <button type="button" class="btn btn-xs btn-default">��</button>
           <a href="#">1</a>&nbsp;&nbsp;
           <a href="#">2</a>&nbsp;&nbsp;
           <a href="#">3</a>&nbsp;&nbsp;
           <a href="#">4</a>&nbsp;&nbsp;
           <a href="#">5</a>
           <button type="button" class="btn btn-xs btn-default">��</button>
           
         </td>
        </tr>
      </table>
  </div>
</div>

</body>
</html>
