%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.n7eirty5X6

% Computer   : n002.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:41:42 EST 2020

% Result     : Theorem 0.63s
% Output     : Refutation 0.63s
% Verified   : 
% Statistics : Number of formulae       :   45 (  58 expanded)
%              Number of leaves         :   17 (  24 expanded)
%              Depth                    :   13
%              Number of atoms          :  298 ( 436 expanded)
%              Number of equality atoms :   25 (  36 expanded)
%              Maximal formula depth    :   12 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(k3_xboole_0_type,type,(
    k3_xboole_0: $i > $i > $i )).

thf(sk_C_3_type,type,(
    sk_C_3: $i )).

thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(k4_xboole_0_type,type,(
    k4_xboole_0: $i > $i > $i )).

thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(sk_D_type,type,(
    sk_D: $i > $i > $i > $i )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(k8_relat_1_type,type,(
    k8_relat_1: $i > $i > $i )).

thf(t127_relat_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( v1_relat_1 @ C )
     => ( ( k8_relat_1 @ A @ ( k8_relat_1 @ B @ C ) )
        = ( k8_relat_1 @ ( k3_xboole_0 @ A @ B ) @ C ) ) ) )).

thf('0',plain,(
    ! [X22: $i,X23: $i,X24: $i] :
      ( ( ( k8_relat_1 @ X22 @ ( k8_relat_1 @ X23 @ X24 ) )
        = ( k8_relat_1 @ ( k3_xboole_0 @ X22 @ X23 ) @ X24 ) )
      | ~ ( v1_relat_1 @ X24 ) ) ),
    inference(cnf,[status(esa)],[t127_relat_1])).

thf(t130_relat_1,conjecture,(
    ! [A: $i,B: $i,C: $i] :
      ( ( v1_relat_1 @ C )
     => ( ( r1_tarski @ A @ B )
       => ( ( k8_relat_1 @ A @ ( k8_relat_1 @ B @ C ) )
          = ( k8_relat_1 @ A @ C ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i,C: $i] :
        ( ( v1_relat_1 @ C )
       => ( ( r1_tarski @ A @ B )
         => ( ( k8_relat_1 @ A @ ( k8_relat_1 @ B @ C ) )
            = ( k8_relat_1 @ A @ C ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t130_relat_1])).

thf('1',plain,(
    ( k8_relat_1 @ sk_A @ ( k8_relat_1 @ sk_B @ sk_C_3 ) )
 != ( k8_relat_1 @ sk_A @ sk_C_3 ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('2',plain,
    ( ( ( k8_relat_1 @ ( k3_xboole_0 @ sk_A @ sk_B ) @ sk_C_3 )
     != ( k8_relat_1 @ sk_A @ sk_C_3 ) )
    | ~ ( v1_relat_1 @ sk_C_3 ) ),
    inference('sup-',[status(thm)],['0','1'])).

thf('3',plain,(
    v1_relat_1 @ sk_C_3 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('4',plain,(
    ( k8_relat_1 @ ( k3_xboole_0 @ sk_A @ sk_B ) @ sk_C_3 )
 != ( k8_relat_1 @ sk_A @ sk_C_3 ) ),
    inference(demod,[status(thm)],['2','3'])).

thf(d5_xboole_0,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( C
        = ( k4_xboole_0 @ A @ B ) )
    <=> ! [D: $i] :
          ( ( r2_hidden @ D @ C )
        <=> ( ( r2_hidden @ D @ A )
            & ~ ( r2_hidden @ D @ B ) ) ) ) )).

thf('5',plain,(
    ! [X5: $i,X6: $i,X9: $i] :
      ( ( X9
        = ( k4_xboole_0 @ X5 @ X6 ) )
      | ( r2_hidden @ ( sk_D @ X9 @ X6 @ X5 ) @ X5 )
      | ( r2_hidden @ ( sk_D @ X9 @ X6 @ X5 ) @ X9 ) ) ),
    inference(cnf,[status(esa)],[d5_xboole_0])).

thf(t3_boole,axiom,(
    ! [A: $i] :
      ( ( k4_xboole_0 @ A @ k1_xboole_0 )
      = A ) )).

thf('6',plain,(
    ! [X12: $i] :
      ( ( k4_xboole_0 @ X12 @ k1_xboole_0 )
      = X12 ) ),
    inference(cnf,[status(esa)],[t3_boole])).

thf('7',plain,(
    ! [X5: $i,X6: $i,X7: $i,X8: $i] :
      ( ~ ( r2_hidden @ X8 @ X7 )
      | ~ ( r2_hidden @ X8 @ X6 )
      | ( X7
       != ( k4_xboole_0 @ X5 @ X6 ) ) ) ),
    inference(cnf,[status(esa)],[d5_xboole_0])).

thf('8',plain,(
    ! [X5: $i,X6: $i,X8: $i] :
      ( ~ ( r2_hidden @ X8 @ X6 )
      | ~ ( r2_hidden @ X8 @ ( k4_xboole_0 @ X5 @ X6 ) ) ) ),
    inference(simplify,[status(thm)],['7'])).

thf('9',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( r2_hidden @ X1 @ X0 )
      | ~ ( r2_hidden @ X1 @ k1_xboole_0 ) ) ),
    inference('sup-',[status(thm)],['6','8'])).

thf('10',plain,(
    ! [X0: $i] :
      ~ ( r2_hidden @ X0 @ k1_xboole_0 ) ),
    inference(condensation,[status(thm)],['9'])).

thf('11',plain,(
    ! [X0: $i,X1: $i] :
      ( ( r2_hidden @ ( sk_D @ k1_xboole_0 @ X1 @ X0 ) @ X0 )
      | ( k1_xboole_0
        = ( k4_xboole_0 @ X0 @ X1 ) ) ) ),
    inference('sup-',[status(thm)],['5','10'])).

thf('12',plain,(
    r1_tarski @ sk_A @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(d3_tarski,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_tarski @ A @ B )
    <=> ! [C: $i] :
          ( ( r2_hidden @ C @ A )
         => ( r2_hidden @ C @ B ) ) ) )).

thf('13',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( r2_hidden @ X0 @ X1 )
      | ( r2_hidden @ X0 @ X2 )
      | ~ ( r1_tarski @ X1 @ X2 ) ) ),
    inference(cnf,[status(esa)],[d3_tarski])).

thf('14',plain,(
    ! [X0: $i] :
      ( ( r2_hidden @ X0 @ sk_B )
      | ~ ( r2_hidden @ X0 @ sk_A ) ) ),
    inference('sup-',[status(thm)],['12','13'])).

thf('15',plain,(
    ! [X0: $i] :
      ( ( k1_xboole_0
        = ( k4_xboole_0 @ sk_A @ X0 ) )
      | ( r2_hidden @ ( sk_D @ k1_xboole_0 @ X0 @ sk_A ) @ sk_B ) ) ),
    inference('sup-',[status(thm)],['11','14'])).

thf('16',plain,(
    ! [X5: $i,X6: $i,X9: $i] :
      ( ( X9
        = ( k4_xboole_0 @ X5 @ X6 ) )
      | ~ ( r2_hidden @ ( sk_D @ X9 @ X6 @ X5 ) @ X6 )
      | ( r2_hidden @ ( sk_D @ X9 @ X6 @ X5 ) @ X9 ) ) ),
    inference(cnf,[status(esa)],[d5_xboole_0])).

thf('17',plain,
    ( ( k1_xboole_0
      = ( k4_xboole_0 @ sk_A @ sk_B ) )
    | ( r2_hidden @ ( sk_D @ k1_xboole_0 @ sk_B @ sk_A ) @ k1_xboole_0 )
    | ( k1_xboole_0
      = ( k4_xboole_0 @ sk_A @ sk_B ) ) ),
    inference('sup-',[status(thm)],['15','16'])).

thf('18',plain,
    ( ( r2_hidden @ ( sk_D @ k1_xboole_0 @ sk_B @ sk_A ) @ k1_xboole_0 )
    | ( k1_xboole_0
      = ( k4_xboole_0 @ sk_A @ sk_B ) ) ),
    inference(simplify,[status(thm)],['17'])).

thf('19',plain,(
    ! [X0: $i] :
      ~ ( r2_hidden @ X0 @ k1_xboole_0 ) ),
    inference(condensation,[status(thm)],['9'])).

thf('20',plain,
    ( k1_xboole_0
    = ( k4_xboole_0 @ sk_A @ sk_B ) ),
    inference(clc,[status(thm)],['18','19'])).

thf(t48_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k4_xboole_0 @ A @ ( k4_xboole_0 @ A @ B ) )
      = ( k3_xboole_0 @ A @ B ) ) )).

thf('21',plain,(
    ! [X13: $i,X14: $i] :
      ( ( k4_xboole_0 @ X13 @ ( k4_xboole_0 @ X13 @ X14 ) )
      = ( k3_xboole_0 @ X13 @ X14 ) ) ),
    inference(cnf,[status(esa)],[t48_xboole_1])).

thf('22',plain,
    ( ( k4_xboole_0 @ sk_A @ k1_xboole_0 )
    = ( k3_xboole_0 @ sk_A @ sk_B ) ),
    inference('sup+',[status(thm)],['20','21'])).

thf('23',plain,(
    ! [X12: $i] :
      ( ( k4_xboole_0 @ X12 @ k1_xboole_0 )
      = X12 ) ),
    inference(cnf,[status(esa)],[t3_boole])).

thf('24',plain,
    ( sk_A
    = ( k3_xboole_0 @ sk_A @ sk_B ) ),
    inference(demod,[status(thm)],['22','23'])).

thf('25',plain,(
    ( k8_relat_1 @ sk_A @ sk_C_3 )
 != ( k8_relat_1 @ sk_A @ sk_C_3 ) ),
    inference(demod,[status(thm)],['4','24'])).

thf('26',plain,(
    $false ),
    inference(simplify,[status(thm)],['25'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.12/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.12/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.n7eirty5X6
% 0.13/0.34  % Computer   : n002.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 20:31:52 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running portfolio for 600 s
% 0.13/0.34  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.13/0.35  % Number of cores: 8
% 0.13/0.35  % Python version: Python 3.6.8
% 0.13/0.35  % Running in FO mode
% 0.63/0.83  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.63/0.83  % Solved by: fo/fo7.sh
% 0.63/0.83  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.63/0.83  % done 939 iterations in 0.373s
% 0.63/0.83  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.63/0.83  % SZS output start Refutation
% 0.63/0.83  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.63/0.83  thf(k3_xboole_0_type, type, k3_xboole_0: $i > $i > $i).
% 0.63/0.83  thf(sk_C_3_type, type, sk_C_3: $i).
% 0.63/0.83  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 0.63/0.83  thf(k4_xboole_0_type, type, k4_xboole_0: $i > $i > $i).
% 0.63/0.83  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 0.63/0.83  thf(sk_D_type, type, sk_D: $i > $i > $i > $i).
% 0.63/0.83  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.63/0.83  thf(sk_A_type, type, sk_A: $i).
% 0.63/0.83  thf(sk_B_type, type, sk_B: $i).
% 0.63/0.83  thf(k8_relat_1_type, type, k8_relat_1: $i > $i > $i).
% 0.63/0.83  thf(t127_relat_1, axiom,
% 0.63/0.83    (![A:$i,B:$i,C:$i]:
% 0.63/0.83     ( ( v1_relat_1 @ C ) =>
% 0.63/0.83       ( ( k8_relat_1 @ A @ ( k8_relat_1 @ B @ C ) ) =
% 0.63/0.83         ( k8_relat_1 @ ( k3_xboole_0 @ A @ B ) @ C ) ) ))).
% 0.63/0.83  thf('0', plain,
% 0.63/0.83      (![X22 : $i, X23 : $i, X24 : $i]:
% 0.63/0.83         (((k8_relat_1 @ X22 @ (k8_relat_1 @ X23 @ X24))
% 0.63/0.83            = (k8_relat_1 @ (k3_xboole_0 @ X22 @ X23) @ X24))
% 0.63/0.83          | ~ (v1_relat_1 @ X24))),
% 0.63/0.83      inference('cnf', [status(esa)], [t127_relat_1])).
% 0.63/0.83  thf(t130_relat_1, conjecture,
% 0.63/0.83    (![A:$i,B:$i,C:$i]:
% 0.63/0.83     ( ( v1_relat_1 @ C ) =>
% 0.63/0.83       ( ( r1_tarski @ A @ B ) =>
% 0.63/0.83         ( ( k8_relat_1 @ A @ ( k8_relat_1 @ B @ C ) ) = ( k8_relat_1 @ A @ C ) ) ) ))).
% 0.63/0.83  thf(zf_stmt_0, negated_conjecture,
% 0.63/0.83    (~( ![A:$i,B:$i,C:$i]:
% 0.63/0.83        ( ( v1_relat_1 @ C ) =>
% 0.63/0.83          ( ( r1_tarski @ A @ B ) =>
% 0.63/0.83            ( ( k8_relat_1 @ A @ ( k8_relat_1 @ B @ C ) ) =
% 0.63/0.83              ( k8_relat_1 @ A @ C ) ) ) ) )),
% 0.63/0.83    inference('cnf.neg', [status(esa)], [t130_relat_1])).
% 0.63/0.83  thf('1', plain,
% 0.63/0.83      (((k8_relat_1 @ sk_A @ (k8_relat_1 @ sk_B @ sk_C_3))
% 0.63/0.83         != (k8_relat_1 @ sk_A @ sk_C_3))),
% 0.63/0.83      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.63/0.83  thf('2', plain,
% 0.63/0.83      ((((k8_relat_1 @ (k3_xboole_0 @ sk_A @ sk_B) @ sk_C_3)
% 0.63/0.83          != (k8_relat_1 @ sk_A @ sk_C_3))
% 0.63/0.83        | ~ (v1_relat_1 @ sk_C_3))),
% 0.63/0.83      inference('sup-', [status(thm)], ['0', '1'])).
% 0.63/0.83  thf('3', plain, ((v1_relat_1 @ sk_C_3)),
% 0.63/0.83      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.63/0.83  thf('4', plain,
% 0.63/0.83      (((k8_relat_1 @ (k3_xboole_0 @ sk_A @ sk_B) @ sk_C_3)
% 0.63/0.83         != (k8_relat_1 @ sk_A @ sk_C_3))),
% 0.63/0.83      inference('demod', [status(thm)], ['2', '3'])).
% 0.63/0.83  thf(d5_xboole_0, axiom,
% 0.63/0.83    (![A:$i,B:$i,C:$i]:
% 0.63/0.83     ( ( ( C ) = ( k4_xboole_0 @ A @ B ) ) <=>
% 0.63/0.83       ( ![D:$i]:
% 0.63/0.83         ( ( r2_hidden @ D @ C ) <=>
% 0.63/0.83           ( ( r2_hidden @ D @ A ) & ( ~( r2_hidden @ D @ B ) ) ) ) ) ))).
% 0.63/0.83  thf('5', plain,
% 0.63/0.83      (![X5 : $i, X6 : $i, X9 : $i]:
% 0.63/0.83         (((X9) = (k4_xboole_0 @ X5 @ X6))
% 0.63/0.83          | (r2_hidden @ (sk_D @ X9 @ X6 @ X5) @ X5)
% 0.63/0.83          | (r2_hidden @ (sk_D @ X9 @ X6 @ X5) @ X9))),
% 0.63/0.83      inference('cnf', [status(esa)], [d5_xboole_0])).
% 0.63/0.83  thf(t3_boole, axiom,
% 0.63/0.83    (![A:$i]: ( ( k4_xboole_0 @ A @ k1_xboole_0 ) = ( A ) ))).
% 0.63/0.83  thf('6', plain, (![X12 : $i]: ((k4_xboole_0 @ X12 @ k1_xboole_0) = (X12))),
% 0.63/0.83      inference('cnf', [status(esa)], [t3_boole])).
% 0.63/0.83  thf('7', plain,
% 0.63/0.83      (![X5 : $i, X6 : $i, X7 : $i, X8 : $i]:
% 0.63/0.83         (~ (r2_hidden @ X8 @ X7)
% 0.63/0.83          | ~ (r2_hidden @ X8 @ X6)
% 0.63/0.83          | ((X7) != (k4_xboole_0 @ X5 @ X6)))),
% 0.63/0.83      inference('cnf', [status(esa)], [d5_xboole_0])).
% 0.63/0.83  thf('8', plain,
% 0.63/0.83      (![X5 : $i, X6 : $i, X8 : $i]:
% 0.63/0.83         (~ (r2_hidden @ X8 @ X6)
% 0.63/0.83          | ~ (r2_hidden @ X8 @ (k4_xboole_0 @ X5 @ X6)))),
% 0.63/0.83      inference('simplify', [status(thm)], ['7'])).
% 0.63/0.83  thf('9', plain,
% 0.63/0.83      (![X0 : $i, X1 : $i]:
% 0.63/0.83         (~ (r2_hidden @ X1 @ X0) | ~ (r2_hidden @ X1 @ k1_xboole_0))),
% 0.63/0.83      inference('sup-', [status(thm)], ['6', '8'])).
% 0.63/0.83  thf('10', plain, (![X0 : $i]: ~ (r2_hidden @ X0 @ k1_xboole_0)),
% 0.63/0.83      inference('condensation', [status(thm)], ['9'])).
% 0.63/0.83  thf('11', plain,
% 0.63/0.83      (![X0 : $i, X1 : $i]:
% 0.63/0.83         ((r2_hidden @ (sk_D @ k1_xboole_0 @ X1 @ X0) @ X0)
% 0.63/0.83          | ((k1_xboole_0) = (k4_xboole_0 @ X0 @ X1)))),
% 0.63/0.83      inference('sup-', [status(thm)], ['5', '10'])).
% 0.63/0.83  thf('12', plain, ((r1_tarski @ sk_A @ sk_B)),
% 0.63/0.83      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.63/0.83  thf(d3_tarski, axiom,
% 0.63/0.83    (![A:$i,B:$i]:
% 0.63/0.83     ( ( r1_tarski @ A @ B ) <=>
% 0.63/0.83       ( ![C:$i]: ( ( r2_hidden @ C @ A ) => ( r2_hidden @ C @ B ) ) ) ))).
% 0.63/0.83  thf('13', plain,
% 0.63/0.83      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.63/0.83         (~ (r2_hidden @ X0 @ X1)
% 0.63/0.83          | (r2_hidden @ X0 @ X2)
% 0.63/0.83          | ~ (r1_tarski @ X1 @ X2))),
% 0.63/0.83      inference('cnf', [status(esa)], [d3_tarski])).
% 0.63/0.83  thf('14', plain,
% 0.63/0.83      (![X0 : $i]: ((r2_hidden @ X0 @ sk_B) | ~ (r2_hidden @ X0 @ sk_A))),
% 0.63/0.83      inference('sup-', [status(thm)], ['12', '13'])).
% 0.63/0.83  thf('15', plain,
% 0.63/0.83      (![X0 : $i]:
% 0.63/0.83         (((k1_xboole_0) = (k4_xboole_0 @ sk_A @ X0))
% 0.63/0.83          | (r2_hidden @ (sk_D @ k1_xboole_0 @ X0 @ sk_A) @ sk_B))),
% 0.63/0.83      inference('sup-', [status(thm)], ['11', '14'])).
% 0.63/0.83  thf('16', plain,
% 0.63/0.83      (![X5 : $i, X6 : $i, X9 : $i]:
% 0.63/0.83         (((X9) = (k4_xboole_0 @ X5 @ X6))
% 0.63/0.83          | ~ (r2_hidden @ (sk_D @ X9 @ X6 @ X5) @ X6)
% 0.63/0.83          | (r2_hidden @ (sk_D @ X9 @ X6 @ X5) @ X9))),
% 0.63/0.83      inference('cnf', [status(esa)], [d5_xboole_0])).
% 0.63/0.83  thf('17', plain,
% 0.63/0.83      ((((k1_xboole_0) = (k4_xboole_0 @ sk_A @ sk_B))
% 0.63/0.83        | (r2_hidden @ (sk_D @ k1_xboole_0 @ sk_B @ sk_A) @ k1_xboole_0)
% 0.63/0.83        | ((k1_xboole_0) = (k4_xboole_0 @ sk_A @ sk_B)))),
% 0.63/0.83      inference('sup-', [status(thm)], ['15', '16'])).
% 0.63/0.83  thf('18', plain,
% 0.63/0.83      (((r2_hidden @ (sk_D @ k1_xboole_0 @ sk_B @ sk_A) @ k1_xboole_0)
% 0.63/0.83        | ((k1_xboole_0) = (k4_xboole_0 @ sk_A @ sk_B)))),
% 0.63/0.83      inference('simplify', [status(thm)], ['17'])).
% 0.63/0.83  thf('19', plain, (![X0 : $i]: ~ (r2_hidden @ X0 @ k1_xboole_0)),
% 0.63/0.83      inference('condensation', [status(thm)], ['9'])).
% 0.63/0.83  thf('20', plain, (((k1_xboole_0) = (k4_xboole_0 @ sk_A @ sk_B))),
% 0.63/0.83      inference('clc', [status(thm)], ['18', '19'])).
% 0.63/0.83  thf(t48_xboole_1, axiom,
% 0.63/0.83    (![A:$i,B:$i]:
% 0.63/0.83     ( ( k4_xboole_0 @ A @ ( k4_xboole_0 @ A @ B ) ) = ( k3_xboole_0 @ A @ B ) ))).
% 0.63/0.83  thf('21', plain,
% 0.63/0.83      (![X13 : $i, X14 : $i]:
% 0.63/0.83         ((k4_xboole_0 @ X13 @ (k4_xboole_0 @ X13 @ X14))
% 0.63/0.83           = (k3_xboole_0 @ X13 @ X14))),
% 0.63/0.83      inference('cnf', [status(esa)], [t48_xboole_1])).
% 0.63/0.83  thf('22', plain,
% 0.63/0.83      (((k4_xboole_0 @ sk_A @ k1_xboole_0) = (k3_xboole_0 @ sk_A @ sk_B))),
% 0.63/0.83      inference('sup+', [status(thm)], ['20', '21'])).
% 0.63/0.83  thf('23', plain, (![X12 : $i]: ((k4_xboole_0 @ X12 @ k1_xboole_0) = (X12))),
% 0.63/0.83      inference('cnf', [status(esa)], [t3_boole])).
% 0.63/0.83  thf('24', plain, (((sk_A) = (k3_xboole_0 @ sk_A @ sk_B))),
% 0.63/0.83      inference('demod', [status(thm)], ['22', '23'])).
% 0.63/0.83  thf('25', plain,
% 0.63/0.83      (((k8_relat_1 @ sk_A @ sk_C_3) != (k8_relat_1 @ sk_A @ sk_C_3))),
% 0.63/0.83      inference('demod', [status(thm)], ['4', '24'])).
% 0.63/0.83  thf('26', plain, ($false), inference('simplify', [status(thm)], ['25'])).
% 0.63/0.83  
% 0.63/0.83  % SZS output end Refutation
% 0.63/0.83  
% 0.68/0.84  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
