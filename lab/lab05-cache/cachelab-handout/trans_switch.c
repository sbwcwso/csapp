char transpose_switch_desc[] = "Transpose with switch statement";
void transpose_switch(int M, int N, int A[N][M], int B[M][N])
{
  register int i, j, ii;
  register int tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7;
  if (M == 32 && N == 32)
    for (i = 0; i < M; i += 8)
      for (j = 0; j < N; j += 8)
        for (ii = 0; ii < 8; ii++)
        {
          /*Read a block from A*/
          tmp0 = A[j + ii][i];
          tmp1 = A[j + ii][i + 1];
          tmp2 = A[j + ii][i + 2];
          tmp3 = A[j + ii][i + 3];
          tmp4 = A[j + ii][i + 4];
          tmp5 = A[j + ii][i + 5];
          tmp6 = A[j + ii][i + 6];
          tmp7 = A[j + ii][i + 7];

          /* Include and after the diagonal */
          switch (ii)
          {
          case 0:
            B[i + ii][j] = tmp0;
            /* fall through */
          case 1:
            B[i + ii][j + 1] = tmp1;
            /* fall through */
          case 2:
            B[i + ii][j + 2] = tmp2;
            /* fall through */
          case 3:
            B[i + ii][j + 3] = tmp3;
            /* fall through */
          case 4:
            B[i + ii][j + 4] = tmp4;
            /* fall through */
          case 5:
            B[i + ii][j + 5] = tmp5;
            /* fall through */
          case 6:
            B[i + ii][j + 6] = tmp6;
            /* fall through */
          case 7:
            B[i + ii][j + 7] = tmp7;
            /* fall through */
          default:
            break;
          }

          /* Update the row before the diagonal and the column  at the diagonal */
          switch (ii)
          {
          case 7:
            B[i + ii][j + 6] = B[i + 6][j + ii];
            B[i + 6][j + ii] = tmp6;
            /* fall through */
          case 6:
            B[i + ii][j + 5] = B[i + 5][j + ii];
            B[i + 5][j + ii] = tmp5;
            /* fall through */
          case 5:
            B[i + ii][j + 4] = B[i + 4][j + ii];
            B[i + 4][j + ii] = tmp4;
            /* fall through */
          case 4:
            B[i + ii][j + 3] = B[i + 3][j + ii];
            B[i + 3][j + ii] = tmp3;
            /* fall through */
          case 3:
            B[i + ii][j + 2] = B[i + 2][j + ii];
            B[i + 2][j + ii] = tmp2;
            /* fall through */
          case 2:
            B[i + ii][j + 1] = B[i + 1][j + ii];
            B[i + 1][j + ii] = tmp1;
            /* fall through */
          case 1:
            B[i + ii][j] = B[i][j + ii];
            B[i][j + ii] = tmp0;
            /* fall through */

          default:
            break;
          }
        }
}
