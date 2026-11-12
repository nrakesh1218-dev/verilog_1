module diamond;
integer n, i, k, j;
initial begin
n = 5;
for (i = 1; i <= n; i = i + 1) begin
for (j = 0; j < n - i; j = j + 1)
$write("  ");
for (k = i; k >= 1; k = k - 1)
$write("%0d ", k);
for (k = 2; k <= i; k = k + 1)
$write("%0d ", k);
$write("\n");
end
for (i = n - 1; i >= 1; i = i - 1) begin
for (j = 0; j < n - i; j = j + 1
$write("  ");
for (k = i; k >= 1; k = k - 1)
$write("%0d ", k);
for (k = 2; k <= i; k = k + 1)
$write("%0d ", k);
$write("\n");
end
$finish;
end
endmodule
