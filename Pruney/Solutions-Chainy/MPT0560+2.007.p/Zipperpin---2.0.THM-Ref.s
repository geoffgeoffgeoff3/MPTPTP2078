%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.Wd2jBTEdrk

% Computer   : n004.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:42:38 EST 2020

% Result     : Theorem 0.46s
% Output     : Refutation 0.46s
% Verified   : 
% Statistics : Number of formulae       :   49 (  58 expanded)
%              Number of leaves         :   18 (  24 expanded)
%              Depth                    :   15
%              Number of atoms          :  376 ( 489 expanded)
%              Number of equality atoms :   26 (  34 expanded)
%              Maximal formula depth    :   12 (   7 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(k1_relat_1_type,type,(
    k1_relat_1: $i > $i )).

thf(k7_relat_1_type,type,(
    k7_relat_1: $i > $i > $i )).

thf(k9_relat_1_type,type,(
    k9_relat_1: $i > $i > $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(k3_xboole_0_type,type,(
    k3_xboole_0: $i > $i > $i )).

thf(k2_relat_1_type,type,(
    k2_relat_1: $i > $i )).

thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(sk_C_type,type,(
    sk_C: $i )).

thf(t148_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ B )
     => ( ( k2_relat_1 @ ( k7_relat_1 @ B @ A ) )
        = ( k9_relat_1 @ B @ A ) ) ) )).

thf('0',plain,(
    ! [X16: $i,X17: $i] :
      ( ( ( k2_relat_1 @ ( k7_relat_1 @ X16 @ X17 ) )
        = ( k9_relat_1 @ X16 @ X17 ) )
      | ~ ( v1_relat_1 @ X16 ) ) ),
    inference(cnf,[status(esa)],[t148_relat_1])).

thf(t162_relat_1,conjecture,(
    ! [A: $i] :
      ( ( v1_relat_1 @ A )
     => ! [B: $i,C: $i] :
          ( ( r1_tarski @ B @ C )
         => ( ( k9_relat_1 @ ( k7_relat_1 @ A @ C ) @ B )
            = ( k9_relat_1 @ A @ B ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i] :
        ( ( v1_relat_1 @ A )
       => ! [B: $i,C: $i] :
            ( ( r1_tarski @ B @ C )
           => ( ( k9_relat_1 @ ( k7_relat_1 @ A @ C ) @ B )
              = ( k9_relat_1 @ A @ B ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t162_relat_1])).

thf('1',plain,(
    r1_tarski @ sk_B @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t87_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ B )
     => ( r1_tarski @ ( k1_relat_1 @ ( k7_relat_1 @ B @ A ) ) @ A ) ) )).

thf('2',plain,(
    ! [X18: $i,X19: $i] :
      ( ( r1_tarski @ ( k1_relat_1 @ ( k7_relat_1 @ X18 @ X19 ) ) @ X19 )
      | ~ ( v1_relat_1 @ X18 ) ) ),
    inference(cnf,[status(esa)],[t87_relat_1])).

thf(t1_xboole_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( ( r1_tarski @ A @ B )
        & ( r1_tarski @ B @ C ) )
     => ( r1_tarski @ A @ C ) ) )).

thf('3',plain,(
    ! [X5: $i,X6: $i,X7: $i] :
      ( ~ ( r1_tarski @ X5 @ X6 )
      | ~ ( r1_tarski @ X6 @ X7 )
      | ( r1_tarski @ X5 @ X7 ) ) ),
    inference(cnf,[status(esa)],[t1_xboole_1])).

thf('4',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( v1_relat_1 @ X1 )
      | ( r1_tarski @ ( k1_relat_1 @ ( k7_relat_1 @ X1 @ X0 ) ) @ X2 )
      | ~ ( r1_tarski @ X0 @ X2 ) ) ),
    inference('sup-',[status(thm)],['2','3'])).

thf('5',plain,(
    ! [X0: $i] :
      ( ( r1_tarski @ ( k1_relat_1 @ ( k7_relat_1 @ X0 @ sk_B ) ) @ sk_C )
      | ~ ( v1_relat_1 @ X0 ) ) ),
    inference('sup-',[status(thm)],['1','4'])).

thf(t97_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ B )
     => ( ( r1_tarski @ ( k1_relat_1 @ B ) @ A )
       => ( ( k7_relat_1 @ B @ A )
          = B ) ) ) )).

thf('6',plain,(
    ! [X20: $i,X21: $i] :
      ( ~ ( r1_tarski @ ( k1_relat_1 @ X20 ) @ X21 )
      | ( ( k7_relat_1 @ X20 @ X21 )
        = X20 )
      | ~ ( v1_relat_1 @ X20 ) ) ),
    inference(cnf,[status(esa)],[t97_relat_1])).

thf('7',plain,(
    ! [X0: $i] :
      ( ~ ( v1_relat_1 @ X0 )
      | ~ ( v1_relat_1 @ ( k7_relat_1 @ X0 @ sk_B ) )
      | ( ( k7_relat_1 @ ( k7_relat_1 @ X0 @ sk_B ) @ sk_C )
        = ( k7_relat_1 @ X0 @ sk_B ) ) ) ),
    inference('sup-',[status(thm)],['5','6'])).

thf(dt_k7_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ A )
     => ( v1_relat_1 @ ( k7_relat_1 @ A @ B ) ) ) )).

thf('8',plain,(
    ! [X8: $i,X9: $i] :
      ( ~ ( v1_relat_1 @ X8 )
      | ( v1_relat_1 @ ( k7_relat_1 @ X8 @ X9 ) ) ) ),
    inference(cnf,[status(esa)],[dt_k7_relat_1])).

thf('9',plain,(
    ! [X0: $i] :
      ( ( ( k7_relat_1 @ ( k7_relat_1 @ X0 @ sk_B ) @ sk_C )
        = ( k7_relat_1 @ X0 @ sk_B ) )
      | ~ ( v1_relat_1 @ X0 ) ) ),
    inference(clc,[status(thm)],['7','8'])).

thf(t100_relat_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( v1_relat_1 @ C )
     => ( ( k7_relat_1 @ ( k7_relat_1 @ C @ A ) @ B )
        = ( k7_relat_1 @ C @ ( k3_xboole_0 @ A @ B ) ) ) ) )).

thf('10',plain,(
    ! [X10: $i,X11: $i,X12: $i] :
      ( ( ( k7_relat_1 @ ( k7_relat_1 @ X10 @ X11 ) @ X12 )
        = ( k7_relat_1 @ X10 @ ( k3_xboole_0 @ X11 @ X12 ) ) )
      | ~ ( v1_relat_1 @ X10 ) ) ),
    inference(cnf,[status(esa)],[t100_relat_1])).

thf('11',plain,(
    ! [X0: $i] :
      ( ( ( k7_relat_1 @ X0 @ sk_B )
        = ( k7_relat_1 @ X0 @ ( k3_xboole_0 @ sk_B @ sk_C ) ) )
      | ~ ( v1_relat_1 @ X0 )
      | ~ ( v1_relat_1 @ X0 ) ) ),
    inference('sup+',[status(thm)],['9','10'])).

thf(commutativity_k3_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ( k3_xboole_0 @ A @ B )
      = ( k3_xboole_0 @ B @ A ) ) )).

thf('12',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k3_xboole_0 @ X1 @ X0 )
      = ( k3_xboole_0 @ X0 @ X1 ) ) ),
    inference(cnf,[status(esa)],[commutativity_k3_xboole_0])).

thf('13',plain,(
    ! [X0: $i] :
      ( ( ( k7_relat_1 @ X0 @ sk_B )
        = ( k7_relat_1 @ X0 @ ( k3_xboole_0 @ sk_C @ sk_B ) ) )
      | ~ ( v1_relat_1 @ X0 )
      | ~ ( v1_relat_1 @ X0 ) ) ),
    inference(demod,[status(thm)],['11','12'])).

thf('14',plain,(
    ! [X0: $i] :
      ( ~ ( v1_relat_1 @ X0 )
      | ( ( k7_relat_1 @ X0 @ sk_B )
        = ( k7_relat_1 @ X0 @ ( k3_xboole_0 @ sk_C @ sk_B ) ) ) ) ),
    inference(simplify,[status(thm)],['13'])).

thf('15',plain,(
    ! [X10: $i,X11: $i,X12: $i] :
      ( ( ( k7_relat_1 @ ( k7_relat_1 @ X10 @ X11 ) @ X12 )
        = ( k7_relat_1 @ X10 @ ( k3_xboole_0 @ X11 @ X12 ) ) )
      | ~ ( v1_relat_1 @ X10 ) ) ),
    inference(cnf,[status(esa)],[t100_relat_1])).

thf('16',plain,(
    ! [X16: $i,X17: $i] :
      ( ( ( k2_relat_1 @ ( k7_relat_1 @ X16 @ X17 ) )
        = ( k9_relat_1 @ X16 @ X17 ) )
      | ~ ( v1_relat_1 @ X16 ) ) ),
    inference(cnf,[status(esa)],[t148_relat_1])).

thf('17',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( ( k2_relat_1 @ ( k7_relat_1 @ X2 @ ( k3_xboole_0 @ X1 @ X0 ) ) )
        = ( k9_relat_1 @ ( k7_relat_1 @ X2 @ X1 ) @ X0 ) )
      | ~ ( v1_relat_1 @ X2 )
      | ~ ( v1_relat_1 @ ( k7_relat_1 @ X2 @ X1 ) ) ) ),
    inference('sup+',[status(thm)],['15','16'])).

thf('18',plain,(
    ! [X8: $i,X9: $i] :
      ( ~ ( v1_relat_1 @ X8 )
      | ( v1_relat_1 @ ( k7_relat_1 @ X8 @ X9 ) ) ) ),
    inference(cnf,[status(esa)],[dt_k7_relat_1])).

thf('19',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( v1_relat_1 @ X2 )
      | ( ( k2_relat_1 @ ( k7_relat_1 @ X2 @ ( k3_xboole_0 @ X1 @ X0 ) ) )
        = ( k9_relat_1 @ ( k7_relat_1 @ X2 @ X1 ) @ X0 ) ) ) ),
    inference(clc,[status(thm)],['17','18'])).

thf('20',plain,(
    ! [X0: $i] :
      ( ( ( k2_relat_1 @ ( k7_relat_1 @ X0 @ sk_B ) )
        = ( k9_relat_1 @ ( k7_relat_1 @ X0 @ sk_C ) @ sk_B ) )
      | ~ ( v1_relat_1 @ X0 )
      | ~ ( v1_relat_1 @ X0 ) ) ),
    inference('sup+',[status(thm)],['14','19'])).

thf('21',plain,(
    ! [X0: $i] :
      ( ~ ( v1_relat_1 @ X0 )
      | ( ( k2_relat_1 @ ( k7_relat_1 @ X0 @ sk_B ) )
        = ( k9_relat_1 @ ( k7_relat_1 @ X0 @ sk_C ) @ sk_B ) ) ) ),
    inference(simplify,[status(thm)],['20'])).

thf('22',plain,(
    ( k9_relat_1 @ ( k7_relat_1 @ sk_A @ sk_C ) @ sk_B )
 != ( k9_relat_1 @ sk_A @ sk_B ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('23',plain,
    ( ( ( k2_relat_1 @ ( k7_relat_1 @ sk_A @ sk_B ) )
     != ( k9_relat_1 @ sk_A @ sk_B ) )
    | ~ ( v1_relat_1 @ sk_A ) ),
    inference('sup-',[status(thm)],['21','22'])).

thf('24',plain,(
    v1_relat_1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('25',plain,(
    ( k2_relat_1 @ ( k7_relat_1 @ sk_A @ sk_B ) )
 != ( k9_relat_1 @ sk_A @ sk_B ) ),
    inference(demod,[status(thm)],['23','24'])).

thf('26',plain,
    ( ( ( k9_relat_1 @ sk_A @ sk_B )
     != ( k9_relat_1 @ sk_A @ sk_B ) )
    | ~ ( v1_relat_1 @ sk_A ) ),
    inference('sup-',[status(thm)],['0','25'])).

thf('27',plain,(
    v1_relat_1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('28',plain,(
    ( k9_relat_1 @ sk_A @ sk_B )
 != ( k9_relat_1 @ sk_A @ sk_B ) ),
    inference(demod,[status(thm)],['26','27'])).

thf('29',plain,(
    $false ),
    inference(simplify,[status(thm)],['28'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.06/0.13  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.06/0.14  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.Wd2jBTEdrk
% 0.14/0.34  % Computer   : n004.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.35  % CPULimit   : 60
% 0.14/0.35  % DateTime   : Tue Dec  1 20:57:39 EST 2020
% 0.14/0.35  % CPUTime    : 
% 0.14/0.35  % Running portfolio for 600 s
% 0.14/0.35  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.14/0.35  % Number of cores: 8
% 0.14/0.35  % Python version: Python 3.6.8
% 0.14/0.35  % Running in FO mode
% 0.46/0.68  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.46/0.68  % Solved by: fo/fo7.sh
% 0.46/0.68  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.46/0.68  % done 326 iterations in 0.220s
% 0.46/0.68  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.46/0.68  % SZS output start Refutation
% 0.46/0.68  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.46/0.68  thf(sk_A_type, type, sk_A: $i).
% 0.46/0.68  thf(k1_relat_1_type, type, k1_relat_1: $i > $i).
% 0.46/0.68  thf(k7_relat_1_type, type, k7_relat_1: $i > $i > $i).
% 0.46/0.68  thf(k9_relat_1_type, type, k9_relat_1: $i > $i > $i).
% 0.46/0.68  thf(sk_B_type, type, sk_B: $i).
% 0.46/0.68  thf(k3_xboole_0_type, type, k3_xboole_0: $i > $i > $i).
% 0.46/0.68  thf(k2_relat_1_type, type, k2_relat_1: $i > $i).
% 0.46/0.68  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 0.46/0.68  thf(sk_C_type, type, sk_C: $i).
% 0.46/0.68  thf(t148_relat_1, axiom,
% 0.46/0.68    (![A:$i,B:$i]:
% 0.46/0.68     ( ( v1_relat_1 @ B ) =>
% 0.46/0.68       ( ( k2_relat_1 @ ( k7_relat_1 @ B @ A ) ) = ( k9_relat_1 @ B @ A ) ) ))).
% 0.46/0.68  thf('0', plain,
% 0.46/0.68      (![X16 : $i, X17 : $i]:
% 0.46/0.68         (((k2_relat_1 @ (k7_relat_1 @ X16 @ X17)) = (k9_relat_1 @ X16 @ X17))
% 0.46/0.68          | ~ (v1_relat_1 @ X16))),
% 0.46/0.68      inference('cnf', [status(esa)], [t148_relat_1])).
% 0.46/0.68  thf(t162_relat_1, conjecture,
% 0.46/0.68    (![A:$i]:
% 0.46/0.68     ( ( v1_relat_1 @ A ) =>
% 0.46/0.68       ( ![B:$i,C:$i]:
% 0.46/0.68         ( ( r1_tarski @ B @ C ) =>
% 0.46/0.68           ( ( k9_relat_1 @ ( k7_relat_1 @ A @ C ) @ B ) =
% 0.46/0.68             ( k9_relat_1 @ A @ B ) ) ) ) ))).
% 0.46/0.68  thf(zf_stmt_0, negated_conjecture,
% 0.46/0.68    (~( ![A:$i]:
% 0.46/0.68        ( ( v1_relat_1 @ A ) =>
% 0.46/0.68          ( ![B:$i,C:$i]:
% 0.46/0.68            ( ( r1_tarski @ B @ C ) =>
% 0.46/0.68              ( ( k9_relat_1 @ ( k7_relat_1 @ A @ C ) @ B ) =
% 0.46/0.68                ( k9_relat_1 @ A @ B ) ) ) ) ) )),
% 0.46/0.68    inference('cnf.neg', [status(esa)], [t162_relat_1])).
% 0.46/0.68  thf('1', plain, ((r1_tarski @ sk_B @ sk_C)),
% 0.46/0.68      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.46/0.68  thf(t87_relat_1, axiom,
% 0.46/0.68    (![A:$i,B:$i]:
% 0.46/0.68     ( ( v1_relat_1 @ B ) =>
% 0.46/0.68       ( r1_tarski @ ( k1_relat_1 @ ( k7_relat_1 @ B @ A ) ) @ A ) ))).
% 0.46/0.68  thf('2', plain,
% 0.46/0.68      (![X18 : $i, X19 : $i]:
% 0.46/0.68         ((r1_tarski @ (k1_relat_1 @ (k7_relat_1 @ X18 @ X19)) @ X19)
% 0.46/0.68          | ~ (v1_relat_1 @ X18))),
% 0.46/0.68      inference('cnf', [status(esa)], [t87_relat_1])).
% 0.46/0.68  thf(t1_xboole_1, axiom,
% 0.46/0.68    (![A:$i,B:$i,C:$i]:
% 0.46/0.68     ( ( ( r1_tarski @ A @ B ) & ( r1_tarski @ B @ C ) ) =>
% 0.46/0.68       ( r1_tarski @ A @ C ) ))).
% 0.46/0.68  thf('3', plain,
% 0.46/0.68      (![X5 : $i, X6 : $i, X7 : $i]:
% 0.46/0.68         (~ (r1_tarski @ X5 @ X6)
% 0.46/0.68          | ~ (r1_tarski @ X6 @ X7)
% 0.46/0.68          | (r1_tarski @ X5 @ X7))),
% 0.46/0.68      inference('cnf', [status(esa)], [t1_xboole_1])).
% 0.46/0.68  thf('4', plain,
% 0.46/0.68      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.46/0.68         (~ (v1_relat_1 @ X1)
% 0.46/0.68          | (r1_tarski @ (k1_relat_1 @ (k7_relat_1 @ X1 @ X0)) @ X2)
% 0.46/0.68          | ~ (r1_tarski @ X0 @ X2))),
% 0.46/0.68      inference('sup-', [status(thm)], ['2', '3'])).
% 0.46/0.68  thf('5', plain,
% 0.46/0.68      (![X0 : $i]:
% 0.46/0.68         ((r1_tarski @ (k1_relat_1 @ (k7_relat_1 @ X0 @ sk_B)) @ sk_C)
% 0.46/0.68          | ~ (v1_relat_1 @ X0))),
% 0.46/0.68      inference('sup-', [status(thm)], ['1', '4'])).
% 0.46/0.68  thf(t97_relat_1, axiom,
% 0.46/0.68    (![A:$i,B:$i]:
% 0.46/0.68     ( ( v1_relat_1 @ B ) =>
% 0.46/0.68       ( ( r1_tarski @ ( k1_relat_1 @ B ) @ A ) =>
% 0.46/0.68         ( ( k7_relat_1 @ B @ A ) = ( B ) ) ) ))).
% 0.46/0.68  thf('6', plain,
% 0.46/0.68      (![X20 : $i, X21 : $i]:
% 0.46/0.68         (~ (r1_tarski @ (k1_relat_1 @ X20) @ X21)
% 0.46/0.68          | ((k7_relat_1 @ X20 @ X21) = (X20))
% 0.46/0.68          | ~ (v1_relat_1 @ X20))),
% 0.46/0.68      inference('cnf', [status(esa)], [t97_relat_1])).
% 0.46/0.68  thf('7', plain,
% 0.46/0.68      (![X0 : $i]:
% 0.46/0.68         (~ (v1_relat_1 @ X0)
% 0.46/0.68          | ~ (v1_relat_1 @ (k7_relat_1 @ X0 @ sk_B))
% 0.46/0.68          | ((k7_relat_1 @ (k7_relat_1 @ X0 @ sk_B) @ sk_C)
% 0.46/0.68              = (k7_relat_1 @ X0 @ sk_B)))),
% 0.46/0.68      inference('sup-', [status(thm)], ['5', '6'])).
% 0.46/0.68  thf(dt_k7_relat_1, axiom,
% 0.46/0.68    (![A:$i,B:$i]:
% 0.46/0.68     ( ( v1_relat_1 @ A ) => ( v1_relat_1 @ ( k7_relat_1 @ A @ B ) ) ))).
% 0.46/0.68  thf('8', plain,
% 0.46/0.68      (![X8 : $i, X9 : $i]:
% 0.46/0.68         (~ (v1_relat_1 @ X8) | (v1_relat_1 @ (k7_relat_1 @ X8 @ X9)))),
% 0.46/0.68      inference('cnf', [status(esa)], [dt_k7_relat_1])).
% 0.46/0.68  thf('9', plain,
% 0.46/0.68      (![X0 : $i]:
% 0.46/0.68         (((k7_relat_1 @ (k7_relat_1 @ X0 @ sk_B) @ sk_C)
% 0.46/0.68            = (k7_relat_1 @ X0 @ sk_B))
% 0.46/0.68          | ~ (v1_relat_1 @ X0))),
% 0.46/0.68      inference('clc', [status(thm)], ['7', '8'])).
% 0.46/0.68  thf(t100_relat_1, axiom,
% 0.46/0.68    (![A:$i,B:$i,C:$i]:
% 0.46/0.68     ( ( v1_relat_1 @ C ) =>
% 0.46/0.68       ( ( k7_relat_1 @ ( k7_relat_1 @ C @ A ) @ B ) =
% 0.46/0.68         ( k7_relat_1 @ C @ ( k3_xboole_0 @ A @ B ) ) ) ))).
% 0.46/0.68  thf('10', plain,
% 0.46/0.68      (![X10 : $i, X11 : $i, X12 : $i]:
% 0.46/0.68         (((k7_relat_1 @ (k7_relat_1 @ X10 @ X11) @ X12)
% 0.46/0.68            = (k7_relat_1 @ X10 @ (k3_xboole_0 @ X11 @ X12)))
% 0.46/0.68          | ~ (v1_relat_1 @ X10))),
% 0.46/0.68      inference('cnf', [status(esa)], [t100_relat_1])).
% 0.46/0.68  thf('11', plain,
% 0.46/0.68      (![X0 : $i]:
% 0.46/0.68         (((k7_relat_1 @ X0 @ sk_B)
% 0.46/0.68            = (k7_relat_1 @ X0 @ (k3_xboole_0 @ sk_B @ sk_C)))
% 0.46/0.68          | ~ (v1_relat_1 @ X0)
% 0.46/0.68          | ~ (v1_relat_1 @ X0))),
% 0.46/0.68      inference('sup+', [status(thm)], ['9', '10'])).
% 0.46/0.68  thf(commutativity_k3_xboole_0, axiom,
% 0.46/0.68    (![A:$i,B:$i]: ( ( k3_xboole_0 @ A @ B ) = ( k3_xboole_0 @ B @ A ) ))).
% 0.46/0.68  thf('12', plain,
% 0.46/0.68      (![X0 : $i, X1 : $i]: ((k3_xboole_0 @ X1 @ X0) = (k3_xboole_0 @ X0 @ X1))),
% 0.46/0.68      inference('cnf', [status(esa)], [commutativity_k3_xboole_0])).
% 0.46/0.68  thf('13', plain,
% 0.46/0.68      (![X0 : $i]:
% 0.46/0.68         (((k7_relat_1 @ X0 @ sk_B)
% 0.46/0.68            = (k7_relat_1 @ X0 @ (k3_xboole_0 @ sk_C @ sk_B)))
% 0.46/0.68          | ~ (v1_relat_1 @ X0)
% 0.46/0.68          | ~ (v1_relat_1 @ X0))),
% 0.46/0.68      inference('demod', [status(thm)], ['11', '12'])).
% 0.46/0.68  thf('14', plain,
% 0.46/0.68      (![X0 : $i]:
% 0.46/0.68         (~ (v1_relat_1 @ X0)
% 0.46/0.68          | ((k7_relat_1 @ X0 @ sk_B)
% 0.46/0.68              = (k7_relat_1 @ X0 @ (k3_xboole_0 @ sk_C @ sk_B))))),
% 0.46/0.68      inference('simplify', [status(thm)], ['13'])).
% 0.46/0.68  thf('15', plain,
% 0.46/0.68      (![X10 : $i, X11 : $i, X12 : $i]:
% 0.46/0.68         (((k7_relat_1 @ (k7_relat_1 @ X10 @ X11) @ X12)
% 0.46/0.68            = (k7_relat_1 @ X10 @ (k3_xboole_0 @ X11 @ X12)))
% 0.46/0.68          | ~ (v1_relat_1 @ X10))),
% 0.46/0.68      inference('cnf', [status(esa)], [t100_relat_1])).
% 0.46/0.68  thf('16', plain,
% 0.46/0.68      (![X16 : $i, X17 : $i]:
% 0.46/0.68         (((k2_relat_1 @ (k7_relat_1 @ X16 @ X17)) = (k9_relat_1 @ X16 @ X17))
% 0.46/0.68          | ~ (v1_relat_1 @ X16))),
% 0.46/0.68      inference('cnf', [status(esa)], [t148_relat_1])).
% 0.46/0.68  thf('17', plain,
% 0.46/0.68      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.46/0.68         (((k2_relat_1 @ (k7_relat_1 @ X2 @ (k3_xboole_0 @ X1 @ X0)))
% 0.46/0.68            = (k9_relat_1 @ (k7_relat_1 @ X2 @ X1) @ X0))
% 0.46/0.68          | ~ (v1_relat_1 @ X2)
% 0.46/0.68          | ~ (v1_relat_1 @ (k7_relat_1 @ X2 @ X1)))),
% 0.46/0.68      inference('sup+', [status(thm)], ['15', '16'])).
% 0.46/0.68  thf('18', plain,
% 0.46/0.68      (![X8 : $i, X9 : $i]:
% 0.46/0.68         (~ (v1_relat_1 @ X8) | (v1_relat_1 @ (k7_relat_1 @ X8 @ X9)))),
% 0.46/0.68      inference('cnf', [status(esa)], [dt_k7_relat_1])).
% 0.46/0.68  thf('19', plain,
% 0.46/0.68      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.46/0.68         (~ (v1_relat_1 @ X2)
% 0.46/0.68          | ((k2_relat_1 @ (k7_relat_1 @ X2 @ (k3_xboole_0 @ X1 @ X0)))
% 0.46/0.68              = (k9_relat_1 @ (k7_relat_1 @ X2 @ X1) @ X0)))),
% 0.46/0.68      inference('clc', [status(thm)], ['17', '18'])).
% 0.46/0.68  thf('20', plain,
% 0.46/0.68      (![X0 : $i]:
% 0.46/0.68         (((k2_relat_1 @ (k7_relat_1 @ X0 @ sk_B))
% 0.46/0.68            = (k9_relat_1 @ (k7_relat_1 @ X0 @ sk_C) @ sk_B))
% 0.46/0.68          | ~ (v1_relat_1 @ X0)
% 0.46/0.68          | ~ (v1_relat_1 @ X0))),
% 0.46/0.68      inference('sup+', [status(thm)], ['14', '19'])).
% 0.46/0.68  thf('21', plain,
% 0.46/0.68      (![X0 : $i]:
% 0.46/0.68         (~ (v1_relat_1 @ X0)
% 0.46/0.68          | ((k2_relat_1 @ (k7_relat_1 @ X0 @ sk_B))
% 0.46/0.68              = (k9_relat_1 @ (k7_relat_1 @ X0 @ sk_C) @ sk_B)))),
% 0.46/0.68      inference('simplify', [status(thm)], ['20'])).
% 0.46/0.68  thf('22', plain,
% 0.46/0.68      (((k9_relat_1 @ (k7_relat_1 @ sk_A @ sk_C) @ sk_B)
% 0.46/0.68         != (k9_relat_1 @ sk_A @ sk_B))),
% 0.46/0.68      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.46/0.68  thf('23', plain,
% 0.46/0.68      ((((k2_relat_1 @ (k7_relat_1 @ sk_A @ sk_B))
% 0.46/0.68          != (k9_relat_1 @ sk_A @ sk_B))
% 0.46/0.68        | ~ (v1_relat_1 @ sk_A))),
% 0.46/0.68      inference('sup-', [status(thm)], ['21', '22'])).
% 0.46/0.68  thf('24', plain, ((v1_relat_1 @ sk_A)),
% 0.46/0.68      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.46/0.68  thf('25', plain,
% 0.46/0.68      (((k2_relat_1 @ (k7_relat_1 @ sk_A @ sk_B)) != (k9_relat_1 @ sk_A @ sk_B))),
% 0.46/0.68      inference('demod', [status(thm)], ['23', '24'])).
% 0.46/0.68  thf('26', plain,
% 0.46/0.68      ((((k9_relat_1 @ sk_A @ sk_B) != (k9_relat_1 @ sk_A @ sk_B))
% 0.46/0.68        | ~ (v1_relat_1 @ sk_A))),
% 0.46/0.68      inference('sup-', [status(thm)], ['0', '25'])).
% 0.46/0.68  thf('27', plain, ((v1_relat_1 @ sk_A)),
% 0.46/0.68      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.46/0.68  thf('28', plain,
% 0.46/0.68      (((k9_relat_1 @ sk_A @ sk_B) != (k9_relat_1 @ sk_A @ sk_B))),
% 0.46/0.68      inference('demod', [status(thm)], ['26', '27'])).
% 0.46/0.68  thf('29', plain, ($false), inference('simplify', [status(thm)], ['28'])).
% 0.46/0.68  
% 0.46/0.68  % SZS output end Refutation
% 0.46/0.68  
% 0.46/0.69  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
