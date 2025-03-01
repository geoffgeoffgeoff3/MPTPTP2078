%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.ApJuhUWuDR

% Computer   : n023.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:38:47 EST 2020

% Result     : Theorem 0.38s
% Output     : Refutation 0.38s
% Verified   : 
% Statistics : Number of formulae       :   79 ( 406 expanded)
%              Number of leaves         :   25 ( 132 expanded)
%              Depth                    :   13
%              Number of atoms          :  511 (3470 expanded)
%              Number of equality atoms :   75 ( 513 expanded)
%              Maximal formula depth    :   13 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(zip_tseitin_0_type,type,(
    zip_tseitin_0: $i > $i > $i > $i > $o )).

thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(k2_xboole_0_type,type,(
    k2_xboole_0: $i > $i > $i )).

thf(k1_setfam_1_type,type,(
    k1_setfam_1: $i > $i )).

thf(k3_xboole_0_type,type,(
    k3_xboole_0: $i > $i > $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(k1_enumset1_type,type,(
    k1_enumset1: $i > $i > $i > $i )).

thf(r1_xboole_0_type,type,(
    r1_xboole_0: $i > $i > $o )).

thf(k1_tarski_type,type,(
    k1_tarski: $i > $i )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(k2_tarski_type,type,(
    k2_tarski: $i > $i > $i )).

thf(t12_setfam_1,conjecture,(
    ! [A: $i,B: $i] :
      ( ( k1_setfam_1 @ ( k2_tarski @ A @ B ) )
      = ( k3_xboole_0 @ A @ B ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i] :
        ( ( k1_setfam_1 @ ( k2_tarski @ A @ B ) )
        = ( k3_xboole_0 @ A @ B ) ) ),
    inference('cnf.neg',[status(esa)],[t12_setfam_1])).

thf('0',plain,(
    ( k1_setfam_1 @ ( k2_tarski @ sk_A @ sk_B ) )
 != ( k3_xboole_0 @ sk_A @ sk_B ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(idempotence_k3_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ( k3_xboole_0 @ A @ A )
      = A ) )).

thf('1',plain,(
    ! [X3: $i] :
      ( ( k3_xboole_0 @ X3 @ X3 )
      = X3 ) ),
    inference(cnf,[status(esa)],[idempotence_k3_xboole_0])).

thf(d7_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_xboole_0 @ A @ B )
    <=> ( ( k3_xboole_0 @ A @ B )
        = k1_xboole_0 ) ) )).

thf('2',plain,(
    ! [X0: $i,X2: $i] :
      ( ( r1_xboole_0 @ X0 @ X2 )
      | ( ( k3_xboole_0 @ X0 @ X2 )
       != k1_xboole_0 ) ) ),
    inference(cnf,[status(esa)],[d7_xboole_0])).

thf('3',plain,(
    ! [X0: $i] :
      ( ( X0 != k1_xboole_0 )
      | ( r1_xboole_0 @ X0 @ X0 ) ) ),
    inference('sup-',[status(thm)],['1','2'])).

thf('4',plain,(
    r1_xboole_0 @ k1_xboole_0 @ k1_xboole_0 ),
    inference(simplify,[status(thm)],['3'])).

thf(t41_enumset1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k2_tarski @ A @ B )
      = ( k2_xboole_0 @ ( k1_tarski @ A ) @ ( k1_tarski @ B ) ) ) )).

thf('5',plain,(
    ! [X16: $i,X17: $i] :
      ( ( k2_tarski @ X16 @ X17 )
      = ( k2_xboole_0 @ ( k1_tarski @ X16 ) @ ( k1_tarski @ X17 ) ) ) ),
    inference(cnf,[status(esa)],[t41_enumset1])).

thf(t11_setfam_1,axiom,(
    ! [A: $i] :
      ( ( k1_setfam_1 @ ( k1_tarski @ A ) )
      = A ) )).

thf('6',plain,(
    ! [X34: $i] :
      ( ( k1_setfam_1 @ ( k1_tarski @ X34 ) )
      = X34 ) ),
    inference(cnf,[status(esa)],[t11_setfam_1])).

thf(t10_setfam_1,axiom,(
    ! [A: $i,B: $i] :
      ~ ( ( A != k1_xboole_0 )
        & ( B != k1_xboole_0 )
        & ( ( k1_setfam_1 @ ( k2_xboole_0 @ A @ B ) )
         != ( k3_xboole_0 @ ( k1_setfam_1 @ A ) @ ( k1_setfam_1 @ B ) ) ) ) )).

thf('7',plain,(
    ! [X32: $i,X33: $i] :
      ( ( X32 = k1_xboole_0 )
      | ( ( k1_setfam_1 @ ( k2_xboole_0 @ X32 @ X33 ) )
        = ( k3_xboole_0 @ ( k1_setfam_1 @ X32 ) @ ( k1_setfam_1 @ X33 ) ) )
      | ( X33 = k1_xboole_0 ) ) ),
    inference(cnf,[status(esa)],[t10_setfam_1])).

thf('8',plain,(
    ! [X0: $i,X1: $i] :
      ( ( ( k1_setfam_1 @ ( k2_xboole_0 @ ( k1_tarski @ X0 ) @ X1 ) )
        = ( k3_xboole_0 @ X0 @ ( k1_setfam_1 @ X1 ) ) )
      | ( X1 = k1_xboole_0 )
      | ( ( k1_tarski @ X0 )
        = k1_xboole_0 ) ) ),
    inference('sup+',[status(thm)],['6','7'])).

thf('9',plain,(
    ! [X0: $i,X1: $i] :
      ( ( ( k1_setfam_1 @ ( k2_tarski @ X1 @ X0 ) )
        = ( k3_xboole_0 @ X1 @ ( k1_setfam_1 @ ( k1_tarski @ X0 ) ) ) )
      | ( ( k1_tarski @ X1 )
        = k1_xboole_0 )
      | ( ( k1_tarski @ X0 )
        = k1_xboole_0 ) ) ),
    inference('sup+',[status(thm)],['5','8'])).

thf('10',plain,(
    ! [X34: $i] :
      ( ( k1_setfam_1 @ ( k1_tarski @ X34 ) )
      = X34 ) ),
    inference(cnf,[status(esa)],[t11_setfam_1])).

thf('11',plain,(
    ! [X0: $i,X1: $i] :
      ( ( ( k1_setfam_1 @ ( k2_tarski @ X1 @ X0 ) )
        = ( k3_xboole_0 @ X1 @ X0 ) )
      | ( ( k1_tarski @ X1 )
        = k1_xboole_0 )
      | ( ( k1_tarski @ X0 )
        = k1_xboole_0 ) ) ),
    inference(demod,[status(thm)],['9','10'])).

thf('12',plain,(
    ( k1_setfam_1 @ ( k2_tarski @ sk_A @ sk_B ) )
 != ( k3_xboole_0 @ sk_A @ sk_B ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('13',plain,
    ( ( ( k3_xboole_0 @ sk_A @ sk_B )
     != ( k3_xboole_0 @ sk_A @ sk_B ) )
    | ( ( k1_tarski @ sk_B )
      = k1_xboole_0 )
    | ( ( k1_tarski @ sk_A )
      = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['11','12'])).

thf('14',plain,
    ( ( ( k1_tarski @ sk_A )
      = k1_xboole_0 )
    | ( ( k1_tarski @ sk_B )
      = k1_xboole_0 ) ),
    inference(simplify,[status(thm)],['13'])).

thf(t69_enumset1,axiom,(
    ! [A: $i] :
      ( ( k2_tarski @ A @ A )
      = ( k1_tarski @ A ) ) )).

thf('15',plain,(
    ! [X21: $i] :
      ( ( k2_tarski @ X21 @ X21 )
      = ( k1_tarski @ X21 ) ) ),
    inference(cnf,[status(esa)],[t69_enumset1])).

thf(t55_zfmisc_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ~ ( ( r1_xboole_0 @ ( k2_tarski @ A @ B ) @ C )
        & ( r2_hidden @ A @ C ) ) )).

thf('16',plain,(
    ! [X29: $i,X30: $i,X31: $i] :
      ( ~ ( r1_xboole_0 @ ( k2_tarski @ X29 @ X30 ) @ X31 )
      | ~ ( r2_hidden @ X29 @ X31 ) ) ),
    inference(cnf,[status(esa)],[t55_zfmisc_1])).

thf('17',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( r1_xboole_0 @ ( k1_tarski @ X0 ) @ X1 )
      | ~ ( r2_hidden @ X0 @ X1 ) ) ),
    inference('sup-',[status(thm)],['15','16'])).

thf('18',plain,(
    ! [X0: $i] :
      ( ~ ( r1_xboole_0 @ k1_xboole_0 @ X0 )
      | ( ( k1_tarski @ sk_A )
        = k1_xboole_0 )
      | ~ ( r2_hidden @ sk_B @ X0 ) ) ),
    inference('sup-',[status(thm)],['14','17'])).

thf('19',plain,
    ( ~ ( r2_hidden @ sk_B @ k1_xboole_0 )
    | ( ( k1_tarski @ sk_A )
      = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['4','18'])).

thf('20',plain,
    ( ( ( k1_tarski @ sk_A )
      = k1_xboole_0 )
    | ( ( k1_tarski @ sk_B )
      = k1_xboole_0 ) ),
    inference(simplify,[status(thm)],['13'])).

thf('21',plain,(
    ! [X21: $i] :
      ( ( k2_tarski @ X21 @ X21 )
      = ( k1_tarski @ X21 ) ) ),
    inference(cnf,[status(esa)],[t69_enumset1])).

thf(t70_enumset1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k1_enumset1 @ A @ A @ B )
      = ( k2_tarski @ A @ B ) ) )).

thf('22',plain,(
    ! [X22: $i,X23: $i] :
      ( ( k1_enumset1 @ X22 @ X22 @ X23 )
      = ( k2_tarski @ X22 @ X23 ) ) ),
    inference(cnf,[status(esa)],[t70_enumset1])).

thf(d1_enumset1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( D
        = ( k1_enumset1 @ A @ B @ C ) )
    <=> ! [E: $i] :
          ( ( r2_hidden @ E @ D )
        <=> ~ ( ( E != C )
              & ( E != B )
              & ( E != A ) ) ) ) )).

thf(zf_stmt_1,type,(
    zip_tseitin_0: $i > $i > $i > $i > $o )).

thf(zf_stmt_2,axiom,(
    ! [E: $i,C: $i,B: $i,A: $i] :
      ( ( zip_tseitin_0 @ E @ C @ B @ A )
    <=> ( ( E != A )
        & ( E != B )
        & ( E != C ) ) ) )).

thf(zf_stmt_3,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( D
        = ( k1_enumset1 @ A @ B @ C ) )
    <=> ! [E: $i] :
          ( ( r2_hidden @ E @ D )
        <=> ~ ( zip_tseitin_0 @ E @ C @ B @ A ) ) ) )).

thf('23',plain,(
    ! [X9: $i,X10: $i,X11: $i,X12: $i,X13: $i] :
      ( ( zip_tseitin_0 @ X9 @ X10 @ X11 @ X12 )
      | ( r2_hidden @ X9 @ X13 )
      | ( X13
       != ( k1_enumset1 @ X12 @ X11 @ X10 ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_3])).

thf('24',plain,(
    ! [X9: $i,X10: $i,X11: $i,X12: $i] :
      ( ( r2_hidden @ X9 @ ( k1_enumset1 @ X12 @ X11 @ X10 ) )
      | ( zip_tseitin_0 @ X9 @ X10 @ X11 @ X12 ) ) ),
    inference(simplify,[status(thm)],['23'])).

thf('25',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( r2_hidden @ X2 @ ( k2_tarski @ X1 @ X0 ) )
      | ( zip_tseitin_0 @ X2 @ X0 @ X1 @ X1 ) ) ),
    inference('sup+',[status(thm)],['22','24'])).

thf('26',plain,(
    ! [X4: $i,X5: $i,X6: $i,X7: $i] :
      ( ( X5 != X4 )
      | ~ ( zip_tseitin_0 @ X5 @ X6 @ X7 @ X4 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_2])).

thf('27',plain,(
    ! [X4: $i,X6: $i,X7: $i] :
      ~ ( zip_tseitin_0 @ X4 @ X6 @ X7 @ X4 ) ),
    inference(simplify,[status(thm)],['26'])).

thf('28',plain,(
    ! [X0: $i,X1: $i] :
      ( r2_hidden @ X0 @ ( k2_tarski @ X0 @ X1 ) ) ),
    inference('sup-',[status(thm)],['25','27'])).

thf('29',plain,(
    ! [X0: $i] :
      ( r2_hidden @ X0 @ ( k1_tarski @ X0 ) ) ),
    inference('sup+',[status(thm)],['21','28'])).

thf('30',plain,
    ( ( r2_hidden @ sk_B @ k1_xboole_0 )
    | ( ( k1_tarski @ sk_A )
      = k1_xboole_0 ) ),
    inference('sup+',[status(thm)],['20','29'])).

thf('31',plain,
    ( ( k1_tarski @ sk_A )
    = k1_xboole_0 ),
    inference(clc,[status(thm)],['19','30'])).

thf('32',plain,(
    ! [X34: $i] :
      ( ( k1_setfam_1 @ ( k1_tarski @ X34 ) )
      = X34 ) ),
    inference(cnf,[status(esa)],[t11_setfam_1])).

thf('33',plain,
    ( ( k1_setfam_1 @ k1_xboole_0 )
    = sk_A ),
    inference('sup+',[status(thm)],['31','32'])).

thf('34',plain,(
    r1_xboole_0 @ k1_xboole_0 @ k1_xboole_0 ),
    inference(simplify,[status(thm)],['3'])).

thf('35',plain,
    ( ( ( k1_tarski @ sk_A )
      = k1_xboole_0 )
    | ( ( k1_tarski @ sk_B )
      = k1_xboole_0 ) ),
    inference(simplify,[status(thm)],['13'])).

thf('36',plain,(
    ! [X34: $i] :
      ( ( k1_setfam_1 @ ( k1_tarski @ X34 ) )
      = X34 ) ),
    inference(cnf,[status(esa)],[t11_setfam_1])).

thf('37',plain,
    ( ( ( k1_setfam_1 @ k1_xboole_0 )
      = sk_B )
    | ( ( k1_tarski @ sk_A )
      = k1_xboole_0 ) ),
    inference('sup+',[status(thm)],['35','36'])).

thf('38',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( r1_xboole_0 @ ( k1_tarski @ X0 ) @ X1 )
      | ~ ( r2_hidden @ X0 @ X1 ) ) ),
    inference('sup-',[status(thm)],['15','16'])).

thf('39',plain,(
    ! [X0: $i] :
      ( ~ ( r1_xboole_0 @ k1_xboole_0 @ X0 )
      | ( ( k1_setfam_1 @ k1_xboole_0 )
        = sk_B )
      | ~ ( r2_hidden @ sk_A @ X0 ) ) ),
    inference('sup-',[status(thm)],['37','38'])).

thf('40',plain,
    ( ~ ( r2_hidden @ sk_A @ k1_xboole_0 )
    | ( ( k1_setfam_1 @ k1_xboole_0 )
      = sk_B ) ),
    inference('sup-',[status(thm)],['34','39'])).

thf('41',plain,
    ( ( ( k1_setfam_1 @ k1_xboole_0 )
      = sk_B )
    | ( ( k1_tarski @ sk_A )
      = k1_xboole_0 ) ),
    inference('sup+',[status(thm)],['35','36'])).

thf('42',plain,(
    ! [X0: $i] :
      ( r2_hidden @ X0 @ ( k1_tarski @ X0 ) ) ),
    inference('sup+',[status(thm)],['21','28'])).

thf('43',plain,
    ( ( r2_hidden @ sk_A @ k1_xboole_0 )
    | ( ( k1_setfam_1 @ k1_xboole_0 )
      = sk_B ) ),
    inference('sup+',[status(thm)],['41','42'])).

thf('44',plain,
    ( ( k1_setfam_1 @ k1_xboole_0 )
    = sk_B ),
    inference(clc,[status(thm)],['40','43'])).

thf('45',plain,(
    sk_A = sk_B ),
    inference('sup+',[status(thm)],['33','44'])).

thf('46',plain,(
    ! [X21: $i] :
      ( ( k2_tarski @ X21 @ X21 )
      = ( k1_tarski @ X21 ) ) ),
    inference(cnf,[status(esa)],[t69_enumset1])).

thf('47',plain,
    ( ( k1_tarski @ sk_A )
    = k1_xboole_0 ),
    inference(clc,[status(thm)],['19','30'])).

thf('48',plain,
    ( ( k1_setfam_1 @ k1_xboole_0 )
    = sk_A ),
    inference('sup+',[status(thm)],['31','32'])).

thf('49',plain,(
    sk_A = sk_B ),
    inference('sup+',[status(thm)],['33','44'])).

thf('50',plain,(
    ! [X3: $i] :
      ( ( k3_xboole_0 @ X3 @ X3 )
      = X3 ) ),
    inference(cnf,[status(esa)],[idempotence_k3_xboole_0])).

thf('51',plain,(
    sk_A != sk_A ),
    inference(demod,[status(thm)],['0','45','46','47','48','49','50'])).

thf('52',plain,(
    $false ),
    inference(simplify,[status(thm)],['51'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.ApJuhUWuDR
% 0.13/0.36  % Computer   : n023.cluster.edu
% 0.13/0.36  % Model      : x86_64 x86_64
% 0.13/0.36  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.36  % Memory     : 8042.1875MB
% 0.13/0.36  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.36  % CPULimit   : 60
% 0.13/0.36  % DateTime   : Tue Dec  1 12:05:06 EST 2020
% 0.13/0.36  % CPUTime    : 
% 0.13/0.36  % Running portfolio for 600 s
% 0.13/0.36  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.13/0.36  % Number of cores: 8
% 0.22/0.37  % Python version: Python 3.6.8
% 0.22/0.37  % Running in FO mode
% 0.38/0.58  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.38/0.58  % Solved by: fo/fo7.sh
% 0.38/0.58  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.38/0.58  % done 312 iterations in 0.102s
% 0.38/0.58  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.38/0.58  % SZS output start Refutation
% 0.38/0.58  thf(zip_tseitin_0_type, type, zip_tseitin_0: $i > $i > $i > $i > $o).
% 0.38/0.58  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 0.38/0.58  thf(sk_B_type, type, sk_B: $i).
% 0.38/0.58  thf(k2_xboole_0_type, type, k2_xboole_0: $i > $i > $i).
% 0.38/0.58  thf(k1_setfam_1_type, type, k1_setfam_1: $i > $i).
% 0.38/0.58  thf(k3_xboole_0_type, type, k3_xboole_0: $i > $i > $i).
% 0.38/0.58  thf(sk_A_type, type, sk_A: $i).
% 0.38/0.58  thf(k1_enumset1_type, type, k1_enumset1: $i > $i > $i > $i).
% 0.38/0.58  thf(r1_xboole_0_type, type, r1_xboole_0: $i > $i > $o).
% 0.38/0.58  thf(k1_tarski_type, type, k1_tarski: $i > $i).
% 0.38/0.58  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.38/0.58  thf(k2_tarski_type, type, k2_tarski: $i > $i > $i).
% 0.38/0.58  thf(t12_setfam_1, conjecture,
% 0.38/0.58    (![A:$i,B:$i]:
% 0.38/0.58     ( ( k1_setfam_1 @ ( k2_tarski @ A @ B ) ) = ( k3_xboole_0 @ A @ B ) ))).
% 0.38/0.58  thf(zf_stmt_0, negated_conjecture,
% 0.38/0.58    (~( ![A:$i,B:$i]:
% 0.38/0.58        ( ( k1_setfam_1 @ ( k2_tarski @ A @ B ) ) = ( k3_xboole_0 @ A @ B ) ) )),
% 0.38/0.58    inference('cnf.neg', [status(esa)], [t12_setfam_1])).
% 0.38/0.58  thf('0', plain,
% 0.38/0.58      (((k1_setfam_1 @ (k2_tarski @ sk_A @ sk_B))
% 0.38/0.58         != (k3_xboole_0 @ sk_A @ sk_B))),
% 0.38/0.58      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.38/0.58  thf(idempotence_k3_xboole_0, axiom,
% 0.38/0.58    (![A:$i,B:$i]: ( ( k3_xboole_0 @ A @ A ) = ( A ) ))).
% 0.38/0.58  thf('1', plain, (![X3 : $i]: ((k3_xboole_0 @ X3 @ X3) = (X3))),
% 0.38/0.58      inference('cnf', [status(esa)], [idempotence_k3_xboole_0])).
% 0.38/0.58  thf(d7_xboole_0, axiom,
% 0.38/0.58    (![A:$i,B:$i]:
% 0.38/0.58     ( ( r1_xboole_0 @ A @ B ) <=>
% 0.38/0.58       ( ( k3_xboole_0 @ A @ B ) = ( k1_xboole_0 ) ) ))).
% 0.38/0.58  thf('2', plain,
% 0.38/0.58      (![X0 : $i, X2 : $i]:
% 0.38/0.58         ((r1_xboole_0 @ X0 @ X2) | ((k3_xboole_0 @ X0 @ X2) != (k1_xboole_0)))),
% 0.38/0.58      inference('cnf', [status(esa)], [d7_xboole_0])).
% 0.38/0.58  thf('3', plain,
% 0.38/0.58      (![X0 : $i]: (((X0) != (k1_xboole_0)) | (r1_xboole_0 @ X0 @ X0))),
% 0.38/0.58      inference('sup-', [status(thm)], ['1', '2'])).
% 0.38/0.58  thf('4', plain, ((r1_xboole_0 @ k1_xboole_0 @ k1_xboole_0)),
% 0.38/0.58      inference('simplify', [status(thm)], ['3'])).
% 0.38/0.58  thf(t41_enumset1, axiom,
% 0.38/0.58    (![A:$i,B:$i]:
% 0.38/0.58     ( ( k2_tarski @ A @ B ) =
% 0.38/0.58       ( k2_xboole_0 @ ( k1_tarski @ A ) @ ( k1_tarski @ B ) ) ))).
% 0.38/0.58  thf('5', plain,
% 0.38/0.58      (![X16 : $i, X17 : $i]:
% 0.38/0.58         ((k2_tarski @ X16 @ X17)
% 0.38/0.58           = (k2_xboole_0 @ (k1_tarski @ X16) @ (k1_tarski @ X17)))),
% 0.38/0.58      inference('cnf', [status(esa)], [t41_enumset1])).
% 0.38/0.58  thf(t11_setfam_1, axiom,
% 0.38/0.58    (![A:$i]: ( ( k1_setfam_1 @ ( k1_tarski @ A ) ) = ( A ) ))).
% 0.38/0.58  thf('6', plain, (![X34 : $i]: ((k1_setfam_1 @ (k1_tarski @ X34)) = (X34))),
% 0.38/0.58      inference('cnf', [status(esa)], [t11_setfam_1])).
% 0.38/0.58  thf(t10_setfam_1, axiom,
% 0.38/0.58    (![A:$i,B:$i]:
% 0.38/0.58     ( ~( ( ( A ) != ( k1_xboole_0 ) ) & ( ( B ) != ( k1_xboole_0 ) ) & 
% 0.38/0.58          ( ( k1_setfam_1 @ ( k2_xboole_0 @ A @ B ) ) !=
% 0.38/0.58            ( k3_xboole_0 @ ( k1_setfam_1 @ A ) @ ( k1_setfam_1 @ B ) ) ) ) ))).
% 0.38/0.58  thf('7', plain,
% 0.38/0.58      (![X32 : $i, X33 : $i]:
% 0.38/0.58         (((X32) = (k1_xboole_0))
% 0.38/0.58          | ((k1_setfam_1 @ (k2_xboole_0 @ X32 @ X33))
% 0.38/0.58              = (k3_xboole_0 @ (k1_setfam_1 @ X32) @ (k1_setfam_1 @ X33)))
% 0.38/0.58          | ((X33) = (k1_xboole_0)))),
% 0.38/0.58      inference('cnf', [status(esa)], [t10_setfam_1])).
% 0.38/0.58  thf('8', plain,
% 0.38/0.58      (![X0 : $i, X1 : $i]:
% 0.38/0.58         (((k1_setfam_1 @ (k2_xboole_0 @ (k1_tarski @ X0) @ X1))
% 0.38/0.58            = (k3_xboole_0 @ X0 @ (k1_setfam_1 @ X1)))
% 0.38/0.58          | ((X1) = (k1_xboole_0))
% 0.38/0.58          | ((k1_tarski @ X0) = (k1_xboole_0)))),
% 0.38/0.58      inference('sup+', [status(thm)], ['6', '7'])).
% 0.38/0.58  thf('9', plain,
% 0.38/0.58      (![X0 : $i, X1 : $i]:
% 0.38/0.58         (((k1_setfam_1 @ (k2_tarski @ X1 @ X0))
% 0.38/0.58            = (k3_xboole_0 @ X1 @ (k1_setfam_1 @ (k1_tarski @ X0))))
% 0.38/0.58          | ((k1_tarski @ X1) = (k1_xboole_0))
% 0.38/0.58          | ((k1_tarski @ X0) = (k1_xboole_0)))),
% 0.38/0.58      inference('sup+', [status(thm)], ['5', '8'])).
% 0.38/0.58  thf('10', plain, (![X34 : $i]: ((k1_setfam_1 @ (k1_tarski @ X34)) = (X34))),
% 0.38/0.58      inference('cnf', [status(esa)], [t11_setfam_1])).
% 0.38/0.58  thf('11', plain,
% 0.38/0.58      (![X0 : $i, X1 : $i]:
% 0.38/0.58         (((k1_setfam_1 @ (k2_tarski @ X1 @ X0)) = (k3_xboole_0 @ X1 @ X0))
% 0.38/0.58          | ((k1_tarski @ X1) = (k1_xboole_0))
% 0.38/0.58          | ((k1_tarski @ X0) = (k1_xboole_0)))),
% 0.38/0.58      inference('demod', [status(thm)], ['9', '10'])).
% 0.38/0.58  thf('12', plain,
% 0.38/0.58      (((k1_setfam_1 @ (k2_tarski @ sk_A @ sk_B))
% 0.38/0.58         != (k3_xboole_0 @ sk_A @ sk_B))),
% 0.38/0.58      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.38/0.58  thf('13', plain,
% 0.38/0.58      ((((k3_xboole_0 @ sk_A @ sk_B) != (k3_xboole_0 @ sk_A @ sk_B))
% 0.38/0.58        | ((k1_tarski @ sk_B) = (k1_xboole_0))
% 0.38/0.58        | ((k1_tarski @ sk_A) = (k1_xboole_0)))),
% 0.38/0.58      inference('sup-', [status(thm)], ['11', '12'])).
% 0.38/0.58  thf('14', plain,
% 0.38/0.58      ((((k1_tarski @ sk_A) = (k1_xboole_0))
% 0.38/0.58        | ((k1_tarski @ sk_B) = (k1_xboole_0)))),
% 0.38/0.58      inference('simplify', [status(thm)], ['13'])).
% 0.38/0.58  thf(t69_enumset1, axiom,
% 0.38/0.58    (![A:$i]: ( ( k2_tarski @ A @ A ) = ( k1_tarski @ A ) ))).
% 0.38/0.58  thf('15', plain,
% 0.38/0.58      (![X21 : $i]: ((k2_tarski @ X21 @ X21) = (k1_tarski @ X21))),
% 0.38/0.58      inference('cnf', [status(esa)], [t69_enumset1])).
% 0.38/0.58  thf(t55_zfmisc_1, axiom,
% 0.38/0.58    (![A:$i,B:$i,C:$i]:
% 0.38/0.58     ( ~( ( r1_xboole_0 @ ( k2_tarski @ A @ B ) @ C ) & ( r2_hidden @ A @ C ) ) ))).
% 0.38/0.58  thf('16', plain,
% 0.38/0.58      (![X29 : $i, X30 : $i, X31 : $i]:
% 0.38/0.58         (~ (r1_xboole_0 @ (k2_tarski @ X29 @ X30) @ X31)
% 0.38/0.58          | ~ (r2_hidden @ X29 @ X31))),
% 0.38/0.58      inference('cnf', [status(esa)], [t55_zfmisc_1])).
% 0.38/0.58  thf('17', plain,
% 0.38/0.58      (![X0 : $i, X1 : $i]:
% 0.38/0.58         (~ (r1_xboole_0 @ (k1_tarski @ X0) @ X1) | ~ (r2_hidden @ X0 @ X1))),
% 0.38/0.58      inference('sup-', [status(thm)], ['15', '16'])).
% 0.38/0.58  thf('18', plain,
% 0.38/0.58      (![X0 : $i]:
% 0.38/0.58         (~ (r1_xboole_0 @ k1_xboole_0 @ X0)
% 0.38/0.58          | ((k1_tarski @ sk_A) = (k1_xboole_0))
% 0.38/0.58          | ~ (r2_hidden @ sk_B @ X0))),
% 0.38/0.58      inference('sup-', [status(thm)], ['14', '17'])).
% 0.38/0.58  thf('19', plain,
% 0.38/0.58      ((~ (r2_hidden @ sk_B @ k1_xboole_0)
% 0.38/0.58        | ((k1_tarski @ sk_A) = (k1_xboole_0)))),
% 0.38/0.58      inference('sup-', [status(thm)], ['4', '18'])).
% 0.38/0.58  thf('20', plain,
% 0.38/0.58      ((((k1_tarski @ sk_A) = (k1_xboole_0))
% 0.38/0.58        | ((k1_tarski @ sk_B) = (k1_xboole_0)))),
% 0.38/0.58      inference('simplify', [status(thm)], ['13'])).
% 0.38/0.58  thf('21', plain,
% 0.38/0.58      (![X21 : $i]: ((k2_tarski @ X21 @ X21) = (k1_tarski @ X21))),
% 0.38/0.58      inference('cnf', [status(esa)], [t69_enumset1])).
% 0.38/0.58  thf(t70_enumset1, axiom,
% 0.38/0.58    (![A:$i,B:$i]: ( ( k1_enumset1 @ A @ A @ B ) = ( k2_tarski @ A @ B ) ))).
% 0.38/0.58  thf('22', plain,
% 0.38/0.58      (![X22 : $i, X23 : $i]:
% 0.38/0.58         ((k1_enumset1 @ X22 @ X22 @ X23) = (k2_tarski @ X22 @ X23))),
% 0.38/0.58      inference('cnf', [status(esa)], [t70_enumset1])).
% 0.38/0.58  thf(d1_enumset1, axiom,
% 0.38/0.58    (![A:$i,B:$i,C:$i,D:$i]:
% 0.38/0.58     ( ( ( D ) = ( k1_enumset1 @ A @ B @ C ) ) <=>
% 0.38/0.58       ( ![E:$i]:
% 0.38/0.58         ( ( r2_hidden @ E @ D ) <=>
% 0.38/0.58           ( ~( ( ( E ) != ( C ) ) & ( ( E ) != ( B ) ) & ( ( E ) != ( A ) ) ) ) ) ) ))).
% 0.38/0.58  thf(zf_stmt_1, type, zip_tseitin_0 : $i > $i > $i > $i > $o).
% 0.38/0.58  thf(zf_stmt_2, axiom,
% 0.38/0.58    (![E:$i,C:$i,B:$i,A:$i]:
% 0.38/0.58     ( ( zip_tseitin_0 @ E @ C @ B @ A ) <=>
% 0.38/0.58       ( ( ( E ) != ( A ) ) & ( ( E ) != ( B ) ) & ( ( E ) != ( C ) ) ) ))).
% 0.38/0.58  thf(zf_stmt_3, axiom,
% 0.38/0.58    (![A:$i,B:$i,C:$i,D:$i]:
% 0.38/0.58     ( ( ( D ) = ( k1_enumset1 @ A @ B @ C ) ) <=>
% 0.38/0.58       ( ![E:$i]:
% 0.38/0.58         ( ( r2_hidden @ E @ D ) <=> ( ~( zip_tseitin_0 @ E @ C @ B @ A ) ) ) ) ))).
% 0.38/0.58  thf('23', plain,
% 0.38/0.58      (![X9 : $i, X10 : $i, X11 : $i, X12 : $i, X13 : $i]:
% 0.38/0.58         ((zip_tseitin_0 @ X9 @ X10 @ X11 @ X12)
% 0.38/0.58          | (r2_hidden @ X9 @ X13)
% 0.38/0.58          | ((X13) != (k1_enumset1 @ X12 @ X11 @ X10)))),
% 0.38/0.58      inference('cnf', [status(esa)], [zf_stmt_3])).
% 0.38/0.58  thf('24', plain,
% 0.38/0.58      (![X9 : $i, X10 : $i, X11 : $i, X12 : $i]:
% 0.38/0.58         ((r2_hidden @ X9 @ (k1_enumset1 @ X12 @ X11 @ X10))
% 0.38/0.58          | (zip_tseitin_0 @ X9 @ X10 @ X11 @ X12))),
% 0.38/0.58      inference('simplify', [status(thm)], ['23'])).
% 0.38/0.58  thf('25', plain,
% 0.38/0.58      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.38/0.58         ((r2_hidden @ X2 @ (k2_tarski @ X1 @ X0))
% 0.38/0.58          | (zip_tseitin_0 @ X2 @ X0 @ X1 @ X1))),
% 0.38/0.58      inference('sup+', [status(thm)], ['22', '24'])).
% 0.38/0.58  thf('26', plain,
% 0.38/0.58      (![X4 : $i, X5 : $i, X6 : $i, X7 : $i]:
% 0.38/0.58         (((X5) != (X4)) | ~ (zip_tseitin_0 @ X5 @ X6 @ X7 @ X4))),
% 0.38/0.58      inference('cnf', [status(esa)], [zf_stmt_2])).
% 0.38/0.58  thf('27', plain,
% 0.38/0.58      (![X4 : $i, X6 : $i, X7 : $i]: ~ (zip_tseitin_0 @ X4 @ X6 @ X7 @ X4)),
% 0.38/0.58      inference('simplify', [status(thm)], ['26'])).
% 0.38/0.58  thf('28', plain,
% 0.38/0.58      (![X0 : $i, X1 : $i]: (r2_hidden @ X0 @ (k2_tarski @ X0 @ X1))),
% 0.38/0.58      inference('sup-', [status(thm)], ['25', '27'])).
% 0.38/0.58  thf('29', plain, (![X0 : $i]: (r2_hidden @ X0 @ (k1_tarski @ X0))),
% 0.38/0.58      inference('sup+', [status(thm)], ['21', '28'])).
% 0.38/0.58  thf('30', plain,
% 0.38/0.58      (((r2_hidden @ sk_B @ k1_xboole_0) | ((k1_tarski @ sk_A) = (k1_xboole_0)))),
% 0.38/0.58      inference('sup+', [status(thm)], ['20', '29'])).
% 0.38/0.58  thf('31', plain, (((k1_tarski @ sk_A) = (k1_xboole_0))),
% 0.38/0.58      inference('clc', [status(thm)], ['19', '30'])).
% 0.38/0.58  thf('32', plain, (![X34 : $i]: ((k1_setfam_1 @ (k1_tarski @ X34)) = (X34))),
% 0.38/0.58      inference('cnf', [status(esa)], [t11_setfam_1])).
% 0.38/0.58  thf('33', plain, (((k1_setfam_1 @ k1_xboole_0) = (sk_A))),
% 0.38/0.58      inference('sup+', [status(thm)], ['31', '32'])).
% 0.38/0.58  thf('34', plain, ((r1_xboole_0 @ k1_xboole_0 @ k1_xboole_0)),
% 0.38/0.58      inference('simplify', [status(thm)], ['3'])).
% 0.38/0.58  thf('35', plain,
% 0.38/0.58      ((((k1_tarski @ sk_A) = (k1_xboole_0))
% 0.38/0.58        | ((k1_tarski @ sk_B) = (k1_xboole_0)))),
% 0.38/0.58      inference('simplify', [status(thm)], ['13'])).
% 0.38/0.58  thf('36', plain, (![X34 : $i]: ((k1_setfam_1 @ (k1_tarski @ X34)) = (X34))),
% 0.38/0.58      inference('cnf', [status(esa)], [t11_setfam_1])).
% 0.38/0.58  thf('37', plain,
% 0.38/0.58      ((((k1_setfam_1 @ k1_xboole_0) = (sk_B))
% 0.38/0.58        | ((k1_tarski @ sk_A) = (k1_xboole_0)))),
% 0.38/0.58      inference('sup+', [status(thm)], ['35', '36'])).
% 0.38/0.58  thf('38', plain,
% 0.38/0.58      (![X0 : $i, X1 : $i]:
% 0.38/0.58         (~ (r1_xboole_0 @ (k1_tarski @ X0) @ X1) | ~ (r2_hidden @ X0 @ X1))),
% 0.38/0.58      inference('sup-', [status(thm)], ['15', '16'])).
% 0.38/0.58  thf('39', plain,
% 0.38/0.58      (![X0 : $i]:
% 0.38/0.58         (~ (r1_xboole_0 @ k1_xboole_0 @ X0)
% 0.38/0.58          | ((k1_setfam_1 @ k1_xboole_0) = (sk_B))
% 0.38/0.58          | ~ (r2_hidden @ sk_A @ X0))),
% 0.38/0.58      inference('sup-', [status(thm)], ['37', '38'])).
% 0.38/0.58  thf('40', plain,
% 0.38/0.58      ((~ (r2_hidden @ sk_A @ k1_xboole_0)
% 0.38/0.58        | ((k1_setfam_1 @ k1_xboole_0) = (sk_B)))),
% 0.38/0.58      inference('sup-', [status(thm)], ['34', '39'])).
% 0.38/0.58  thf('41', plain,
% 0.38/0.58      ((((k1_setfam_1 @ k1_xboole_0) = (sk_B))
% 0.38/0.58        | ((k1_tarski @ sk_A) = (k1_xboole_0)))),
% 0.38/0.58      inference('sup+', [status(thm)], ['35', '36'])).
% 0.38/0.58  thf('42', plain, (![X0 : $i]: (r2_hidden @ X0 @ (k1_tarski @ X0))),
% 0.38/0.58      inference('sup+', [status(thm)], ['21', '28'])).
% 0.38/0.58  thf('43', plain,
% 0.38/0.58      (((r2_hidden @ sk_A @ k1_xboole_0)
% 0.38/0.58        | ((k1_setfam_1 @ k1_xboole_0) = (sk_B)))),
% 0.38/0.58      inference('sup+', [status(thm)], ['41', '42'])).
% 0.38/0.58  thf('44', plain, (((k1_setfam_1 @ k1_xboole_0) = (sk_B))),
% 0.38/0.58      inference('clc', [status(thm)], ['40', '43'])).
% 0.38/0.58  thf('45', plain, (((sk_A) = (sk_B))),
% 0.38/0.58      inference('sup+', [status(thm)], ['33', '44'])).
% 0.38/0.58  thf('46', plain,
% 0.38/0.58      (![X21 : $i]: ((k2_tarski @ X21 @ X21) = (k1_tarski @ X21))),
% 0.38/0.58      inference('cnf', [status(esa)], [t69_enumset1])).
% 0.38/0.58  thf('47', plain, (((k1_tarski @ sk_A) = (k1_xboole_0))),
% 0.38/0.58      inference('clc', [status(thm)], ['19', '30'])).
% 0.38/0.58  thf('48', plain, (((k1_setfam_1 @ k1_xboole_0) = (sk_A))),
% 0.38/0.58      inference('sup+', [status(thm)], ['31', '32'])).
% 0.38/0.58  thf('49', plain, (((sk_A) = (sk_B))),
% 0.38/0.58      inference('sup+', [status(thm)], ['33', '44'])).
% 0.38/0.58  thf('50', plain, (![X3 : $i]: ((k3_xboole_0 @ X3 @ X3) = (X3))),
% 0.38/0.58      inference('cnf', [status(esa)], [idempotence_k3_xboole_0])).
% 0.38/0.58  thf('51', plain, (((sk_A) != (sk_A))),
% 0.38/0.58      inference('demod', [status(thm)],
% 0.38/0.58                ['0', '45', '46', '47', '48', '49', '50'])).
% 0.38/0.58  thf('52', plain, ($false), inference('simplify', [status(thm)], ['51'])).
% 0.38/0.58  
% 0.38/0.58  % SZS output end Refutation
% 0.38/0.58  
% 0.38/0.58  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
