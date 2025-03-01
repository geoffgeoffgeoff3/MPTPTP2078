%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.9fNXJHzBr5

% Computer   : n023.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:46:33 EST 2020

% Result     : Theorem 1.52s
% Output     : Refutation 1.52s
% Verified   : 
% Statistics : Number of formulae       :   54 (  83 expanded)
%              Number of leaves         :   19 (  34 expanded)
%              Depth                    :   12
%              Number of atoms          :  459 ( 728 expanded)
%              Number of equality atoms :   14 (  36 expanded)
%              Maximal formula depth    :   13 (   7 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k2_tarski_type,type,(
    k2_tarski: $i > $i > $i )).

thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(k9_relat_1_type,type,(
    k9_relat_1: $i > $i > $i )).

thf(k3_xboole_0_type,type,(
    k3_xboole_0: $i > $i > $i )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(v1_funct_1_type,type,(
    v1_funct_1: $i > $o )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(sk_C_type,type,(
    sk_C: $i )).

thf(k1_setfam_1_type,type,(
    k1_setfam_1: $i > $i )).

thf(k10_relat_1_type,type,(
    k10_relat_1: $i > $i > $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(commutativity_k2_tarski,axiom,(
    ! [A: $i,B: $i] :
      ( ( k2_tarski @ A @ B )
      = ( k2_tarski @ B @ A ) ) )).

thf('0',plain,(
    ! [X8: $i,X9: $i] :
      ( ( k2_tarski @ X9 @ X8 )
      = ( k2_tarski @ X8 @ X9 ) ) ),
    inference(cnf,[status(esa)],[commutativity_k2_tarski])).

thf(t12_setfam_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k1_setfam_1 @ ( k2_tarski @ A @ B ) )
      = ( k3_xboole_0 @ A @ B ) ) )).

thf('1',plain,(
    ! [X12: $i,X13: $i] :
      ( ( k1_setfam_1 @ ( k2_tarski @ X12 @ X13 ) )
      = ( k3_xboole_0 @ X12 @ X13 ) ) ),
    inference(cnf,[status(esa)],[t12_setfam_1])).

thf('2',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k1_setfam_1 @ ( k2_tarski @ X1 @ X0 ) )
      = ( k3_xboole_0 @ X0 @ X1 ) ) ),
    inference('sup+',[status(thm)],['0','1'])).

thf('3',plain,(
    ! [X12: $i,X13: $i] :
      ( ( k1_setfam_1 @ ( k2_tarski @ X12 @ X13 ) )
      = ( k3_xboole_0 @ X12 @ X13 ) ) ),
    inference(cnf,[status(esa)],[t12_setfam_1])).

thf('4',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k3_xboole_0 @ X1 @ X0 )
      = ( k3_xboole_0 @ X0 @ X1 ) ) ),
    inference('sup+',[status(thm)],['2','3'])).

thf(t154_relat_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( v1_relat_1 @ C )
     => ( r1_tarski @ ( k9_relat_1 @ C @ ( k3_xboole_0 @ A @ B ) ) @ ( k3_xboole_0 @ ( k9_relat_1 @ C @ A ) @ ( k9_relat_1 @ C @ B ) ) ) ) )).

thf('5',plain,(
    ! [X14: $i,X15: $i,X16: $i] :
      ( ( r1_tarski @ ( k9_relat_1 @ X14 @ ( k3_xboole_0 @ X15 @ X16 ) ) @ ( k3_xboole_0 @ ( k9_relat_1 @ X14 @ X15 ) @ ( k9_relat_1 @ X14 @ X16 ) ) )
      | ~ ( v1_relat_1 @ X14 ) ) ),
    inference(cnf,[status(esa)],[t154_relat_1])).

thf('6',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k3_xboole_0 @ X1 @ X0 )
      = ( k3_xboole_0 @ X0 @ X1 ) ) ),
    inference('sup+',[status(thm)],['2','3'])).

thf(t18_xboole_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( r1_tarski @ A @ ( k3_xboole_0 @ B @ C ) )
     => ( r1_tarski @ A @ B ) ) )).

thf('7',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( r1_tarski @ X0 @ X1 )
      | ~ ( r1_tarski @ X0 @ ( k3_xboole_0 @ X1 @ X2 ) ) ) ),
    inference(cnf,[status(esa)],[t18_xboole_1])).

thf('8',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( r1_tarski @ X2 @ ( k3_xboole_0 @ X1 @ X0 ) )
      | ( r1_tarski @ X2 @ X0 ) ) ),
    inference('sup-',[status(thm)],['6','7'])).

thf('9',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( v1_relat_1 @ X1 )
      | ( r1_tarski @ ( k9_relat_1 @ X1 @ ( k3_xboole_0 @ X2 @ X0 ) ) @ ( k9_relat_1 @ X1 @ X0 ) ) ) ),
    inference('sup-',[status(thm)],['5','8'])).

thf(t145_funct_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( ( v1_relat_1 @ B )
        & ( v1_funct_1 @ B ) )
     => ( r1_tarski @ ( k9_relat_1 @ B @ ( k10_relat_1 @ B @ A ) ) @ A ) ) )).

thf('10',plain,(
    ! [X17: $i,X18: $i] :
      ( ( r1_tarski @ ( k9_relat_1 @ X17 @ ( k10_relat_1 @ X17 @ X18 ) ) @ X18 )
      | ~ ( v1_funct_1 @ X17 )
      | ~ ( v1_relat_1 @ X17 ) ) ),
    inference(cnf,[status(esa)],[t145_funct_1])).

thf(t28_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_tarski @ A @ B )
     => ( ( k3_xboole_0 @ A @ B )
        = A ) ) )).

thf('11',plain,(
    ! [X6: $i,X7: $i] :
      ( ( ( k3_xboole_0 @ X6 @ X7 )
        = X6 )
      | ~ ( r1_tarski @ X6 @ X7 ) ) ),
    inference(cnf,[status(esa)],[t28_xboole_1])).

thf('12',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( v1_relat_1 @ X1 )
      | ~ ( v1_funct_1 @ X1 )
      | ( ( k3_xboole_0 @ ( k9_relat_1 @ X1 @ ( k10_relat_1 @ X1 @ X0 ) ) @ X0 )
        = ( k9_relat_1 @ X1 @ ( k10_relat_1 @ X1 @ X0 ) ) ) ) ),
    inference('sup-',[status(thm)],['10','11'])).

thf('13',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k3_xboole_0 @ X1 @ X0 )
      = ( k3_xboole_0 @ X0 @ X1 ) ) ),
    inference('sup+',[status(thm)],['2','3'])).

thf('14',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( v1_relat_1 @ X1 )
      | ~ ( v1_funct_1 @ X1 )
      | ( ( k3_xboole_0 @ X0 @ ( k9_relat_1 @ X1 @ ( k10_relat_1 @ X1 @ X0 ) ) )
        = ( k9_relat_1 @ X1 @ ( k10_relat_1 @ X1 @ X0 ) ) ) ) ),
    inference(demod,[status(thm)],['12','13'])).

thf('15',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( r1_tarski @ X0 @ X1 )
      | ~ ( r1_tarski @ X0 @ ( k3_xboole_0 @ X1 @ X2 ) ) ) ),
    inference(cnf,[status(esa)],[t18_xboole_1])).

thf('16',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( r1_tarski @ X2 @ ( k9_relat_1 @ X1 @ ( k10_relat_1 @ X1 @ X0 ) ) )
      | ~ ( v1_funct_1 @ X1 )
      | ~ ( v1_relat_1 @ X1 )
      | ( r1_tarski @ X2 @ X0 ) ) ),
    inference('sup-',[status(thm)],['14','15'])).

thf('17',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( v1_relat_1 @ X1 )
      | ( r1_tarski @ ( k9_relat_1 @ X1 @ ( k3_xboole_0 @ X2 @ ( k10_relat_1 @ X1 @ X0 ) ) ) @ X0 )
      | ~ ( v1_relat_1 @ X1 )
      | ~ ( v1_funct_1 @ X1 ) ) ),
    inference('sup-',[status(thm)],['9','16'])).

thf('18',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( v1_funct_1 @ X1 )
      | ( r1_tarski @ ( k9_relat_1 @ X1 @ ( k3_xboole_0 @ X2 @ ( k10_relat_1 @ X1 @ X0 ) ) ) @ X0 )
      | ~ ( v1_relat_1 @ X1 ) ) ),
    inference(simplify,[status(thm)],['17'])).

thf('19',plain,(
    ! [X14: $i,X15: $i,X16: $i] :
      ( ( r1_tarski @ ( k9_relat_1 @ X14 @ ( k3_xboole_0 @ X15 @ X16 ) ) @ ( k3_xboole_0 @ ( k9_relat_1 @ X14 @ X15 ) @ ( k9_relat_1 @ X14 @ X16 ) ) )
      | ~ ( v1_relat_1 @ X14 ) ) ),
    inference(cnf,[status(esa)],[t154_relat_1])).

thf('20',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( r1_tarski @ X0 @ X1 )
      | ~ ( r1_tarski @ X0 @ ( k3_xboole_0 @ X1 @ X2 ) ) ) ),
    inference(cnf,[status(esa)],[t18_xboole_1])).

thf('21',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( v1_relat_1 @ X1 )
      | ( r1_tarski @ ( k9_relat_1 @ X1 @ ( k3_xboole_0 @ X2 @ X0 ) ) @ ( k9_relat_1 @ X1 @ X2 ) ) ) ),
    inference('sup-',[status(thm)],['19','20'])).

thf(t19_xboole_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( ( r1_tarski @ A @ B )
        & ( r1_tarski @ A @ C ) )
     => ( r1_tarski @ A @ ( k3_xboole_0 @ B @ C ) ) ) )).

thf('22',plain,(
    ! [X3: $i,X4: $i,X5: $i] :
      ( ~ ( r1_tarski @ X3 @ X4 )
      | ~ ( r1_tarski @ X3 @ X5 )
      | ( r1_tarski @ X3 @ ( k3_xboole_0 @ X4 @ X5 ) ) ) ),
    inference(cnf,[status(esa)],[t19_xboole_1])).

thf('23',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i] :
      ( ~ ( v1_relat_1 @ X1 )
      | ( r1_tarski @ ( k9_relat_1 @ X1 @ ( k3_xboole_0 @ X0 @ X2 ) ) @ ( k3_xboole_0 @ ( k9_relat_1 @ X1 @ X0 ) @ X3 ) )
      | ~ ( r1_tarski @ ( k9_relat_1 @ X1 @ ( k3_xboole_0 @ X0 @ X2 ) ) @ X3 ) ) ),
    inference('sup-',[status(thm)],['21','22'])).

thf('24',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( v1_relat_1 @ X1 )
      | ~ ( v1_funct_1 @ X1 )
      | ( r1_tarski @ ( k9_relat_1 @ X1 @ ( k3_xboole_0 @ X2 @ ( k10_relat_1 @ X1 @ X0 ) ) ) @ ( k3_xboole_0 @ ( k9_relat_1 @ X1 @ X2 ) @ X0 ) )
      | ~ ( v1_relat_1 @ X1 ) ) ),
    inference('sup-',[status(thm)],['18','23'])).

thf('25',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( r1_tarski @ ( k9_relat_1 @ X1 @ ( k3_xboole_0 @ X2 @ ( k10_relat_1 @ X1 @ X0 ) ) ) @ ( k3_xboole_0 @ ( k9_relat_1 @ X1 @ X2 ) @ X0 ) )
      | ~ ( v1_funct_1 @ X1 )
      | ~ ( v1_relat_1 @ X1 ) ) ),
    inference(simplify,[status(thm)],['24'])).

thf('26',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( r1_tarski @ ( k9_relat_1 @ X1 @ ( k3_xboole_0 @ X0 @ ( k10_relat_1 @ X1 @ X2 ) ) ) @ ( k3_xboole_0 @ X2 @ ( k9_relat_1 @ X1 @ X0 ) ) )
      | ~ ( v1_relat_1 @ X1 )
      | ~ ( v1_funct_1 @ X1 ) ) ),
    inference('sup+',[status(thm)],['4','25'])).

thf(t149_funct_1,conjecture,(
    ! [A: $i,B: $i,C: $i] :
      ( ( ( v1_relat_1 @ C )
        & ( v1_funct_1 @ C ) )
     => ( r1_tarski @ ( k9_relat_1 @ C @ ( k3_xboole_0 @ A @ ( k10_relat_1 @ C @ B ) ) ) @ ( k3_xboole_0 @ ( k9_relat_1 @ C @ A ) @ B ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i,C: $i] :
        ( ( ( v1_relat_1 @ C )
          & ( v1_funct_1 @ C ) )
       => ( r1_tarski @ ( k9_relat_1 @ C @ ( k3_xboole_0 @ A @ ( k10_relat_1 @ C @ B ) ) ) @ ( k3_xboole_0 @ ( k9_relat_1 @ C @ A ) @ B ) ) ) ),
    inference('cnf.neg',[status(esa)],[t149_funct_1])).

thf('27',plain,(
    ~ ( r1_tarski @ ( k9_relat_1 @ sk_C @ ( k3_xboole_0 @ sk_A @ ( k10_relat_1 @ sk_C @ sk_B ) ) ) @ ( k3_xboole_0 @ ( k9_relat_1 @ sk_C @ sk_A ) @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('28',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k3_xboole_0 @ X1 @ X0 )
      = ( k3_xboole_0 @ X0 @ X1 ) ) ),
    inference('sup+',[status(thm)],['2','3'])).

thf('29',plain,(
    ~ ( r1_tarski @ ( k9_relat_1 @ sk_C @ ( k3_xboole_0 @ sk_A @ ( k10_relat_1 @ sk_C @ sk_B ) ) ) @ ( k3_xboole_0 @ sk_B @ ( k9_relat_1 @ sk_C @ sk_A ) ) ) ),
    inference(demod,[status(thm)],['27','28'])).

thf('30',plain,
    ( ~ ( v1_funct_1 @ sk_C )
    | ~ ( v1_relat_1 @ sk_C ) ),
    inference('sup-',[status(thm)],['26','29'])).

thf('31',plain,(
    v1_funct_1 @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('32',plain,(
    v1_relat_1 @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('33',plain,(
    $false ),
    inference(demod,[status(thm)],['30','31','32'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.13  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.14  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.9fNXJHzBr5
% 0.13/0.35  % Computer   : n023.cluster.edu
% 0.13/0.35  % Model      : x86_64 x86_64
% 0.13/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.35  % Memory     : 8042.1875MB
% 0.13/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.36  % CPULimit   : 60
% 0.13/0.36  % DateTime   : Tue Dec  1 19:09:51 EST 2020
% 0.13/0.36  % CPUTime    : 
% 0.13/0.36  % Running portfolio for 600 s
% 0.13/0.36  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.13/0.36  % Number of cores: 8
% 0.21/0.36  % Python version: Python 3.6.8
% 0.21/0.36  % Running in FO mode
% 1.52/1.69  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 1.52/1.69  % Solved by: fo/fo7.sh
% 1.52/1.69  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 1.52/1.69  % done 612 iterations in 1.221s
% 1.52/1.69  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 1.52/1.69  % SZS output start Refutation
% 1.52/1.69  thf(k2_tarski_type, type, k2_tarski: $i > $i > $i).
% 1.52/1.69  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 1.52/1.69  thf(k9_relat_1_type, type, k9_relat_1: $i > $i > $i).
% 1.52/1.69  thf(k3_xboole_0_type, type, k3_xboole_0: $i > $i > $i).
% 1.52/1.69  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 1.52/1.69  thf(v1_funct_1_type, type, v1_funct_1: $i > $o).
% 1.52/1.69  thf(sk_B_type, type, sk_B: $i).
% 1.52/1.69  thf(sk_C_type, type, sk_C: $i).
% 1.52/1.69  thf(k1_setfam_1_type, type, k1_setfam_1: $i > $i).
% 1.52/1.69  thf(k10_relat_1_type, type, k10_relat_1: $i > $i > $i).
% 1.52/1.69  thf(sk_A_type, type, sk_A: $i).
% 1.52/1.69  thf(commutativity_k2_tarski, axiom,
% 1.52/1.69    (![A:$i,B:$i]: ( ( k2_tarski @ A @ B ) = ( k2_tarski @ B @ A ) ))).
% 1.52/1.69  thf('0', plain,
% 1.52/1.69      (![X8 : $i, X9 : $i]: ((k2_tarski @ X9 @ X8) = (k2_tarski @ X8 @ X9))),
% 1.52/1.69      inference('cnf', [status(esa)], [commutativity_k2_tarski])).
% 1.52/1.69  thf(t12_setfam_1, axiom,
% 1.52/1.69    (![A:$i,B:$i]:
% 1.52/1.69     ( ( k1_setfam_1 @ ( k2_tarski @ A @ B ) ) = ( k3_xboole_0 @ A @ B ) ))).
% 1.52/1.69  thf('1', plain,
% 1.52/1.69      (![X12 : $i, X13 : $i]:
% 1.52/1.69         ((k1_setfam_1 @ (k2_tarski @ X12 @ X13)) = (k3_xboole_0 @ X12 @ X13))),
% 1.52/1.69      inference('cnf', [status(esa)], [t12_setfam_1])).
% 1.52/1.69  thf('2', plain,
% 1.52/1.69      (![X0 : $i, X1 : $i]:
% 1.52/1.69         ((k1_setfam_1 @ (k2_tarski @ X1 @ X0)) = (k3_xboole_0 @ X0 @ X1))),
% 1.52/1.69      inference('sup+', [status(thm)], ['0', '1'])).
% 1.52/1.69  thf('3', plain,
% 1.52/1.69      (![X12 : $i, X13 : $i]:
% 1.52/1.69         ((k1_setfam_1 @ (k2_tarski @ X12 @ X13)) = (k3_xboole_0 @ X12 @ X13))),
% 1.52/1.69      inference('cnf', [status(esa)], [t12_setfam_1])).
% 1.52/1.69  thf('4', plain,
% 1.52/1.69      (![X0 : $i, X1 : $i]: ((k3_xboole_0 @ X1 @ X0) = (k3_xboole_0 @ X0 @ X1))),
% 1.52/1.69      inference('sup+', [status(thm)], ['2', '3'])).
% 1.52/1.69  thf(t154_relat_1, axiom,
% 1.52/1.69    (![A:$i,B:$i,C:$i]:
% 1.52/1.69     ( ( v1_relat_1 @ C ) =>
% 1.52/1.69       ( r1_tarski @
% 1.52/1.69         ( k9_relat_1 @ C @ ( k3_xboole_0 @ A @ B ) ) @ 
% 1.52/1.69         ( k3_xboole_0 @ ( k9_relat_1 @ C @ A ) @ ( k9_relat_1 @ C @ B ) ) ) ))).
% 1.52/1.69  thf('5', plain,
% 1.52/1.69      (![X14 : $i, X15 : $i, X16 : $i]:
% 1.52/1.69         ((r1_tarski @ (k9_relat_1 @ X14 @ (k3_xboole_0 @ X15 @ X16)) @ 
% 1.52/1.69           (k3_xboole_0 @ (k9_relat_1 @ X14 @ X15) @ (k9_relat_1 @ X14 @ X16)))
% 1.52/1.69          | ~ (v1_relat_1 @ X14))),
% 1.52/1.69      inference('cnf', [status(esa)], [t154_relat_1])).
% 1.52/1.69  thf('6', plain,
% 1.52/1.69      (![X0 : $i, X1 : $i]: ((k3_xboole_0 @ X1 @ X0) = (k3_xboole_0 @ X0 @ X1))),
% 1.52/1.69      inference('sup+', [status(thm)], ['2', '3'])).
% 1.52/1.69  thf(t18_xboole_1, axiom,
% 1.52/1.69    (![A:$i,B:$i,C:$i]:
% 1.52/1.69     ( ( r1_tarski @ A @ ( k3_xboole_0 @ B @ C ) ) => ( r1_tarski @ A @ B ) ))).
% 1.52/1.69  thf('7', plain,
% 1.52/1.69      (![X0 : $i, X1 : $i, X2 : $i]:
% 1.52/1.69         ((r1_tarski @ X0 @ X1) | ~ (r1_tarski @ X0 @ (k3_xboole_0 @ X1 @ X2)))),
% 1.52/1.69      inference('cnf', [status(esa)], [t18_xboole_1])).
% 1.52/1.69  thf('8', plain,
% 1.52/1.69      (![X0 : $i, X1 : $i, X2 : $i]:
% 1.52/1.69         (~ (r1_tarski @ X2 @ (k3_xboole_0 @ X1 @ X0)) | (r1_tarski @ X2 @ X0))),
% 1.52/1.69      inference('sup-', [status(thm)], ['6', '7'])).
% 1.52/1.69  thf('9', plain,
% 1.52/1.69      (![X0 : $i, X1 : $i, X2 : $i]:
% 1.52/1.69         (~ (v1_relat_1 @ X1)
% 1.52/1.69          | (r1_tarski @ (k9_relat_1 @ X1 @ (k3_xboole_0 @ X2 @ X0)) @ 
% 1.52/1.69             (k9_relat_1 @ X1 @ X0)))),
% 1.52/1.69      inference('sup-', [status(thm)], ['5', '8'])).
% 1.52/1.69  thf(t145_funct_1, axiom,
% 1.52/1.69    (![A:$i,B:$i]:
% 1.52/1.69     ( ( ( v1_relat_1 @ B ) & ( v1_funct_1 @ B ) ) =>
% 1.52/1.69       ( r1_tarski @ ( k9_relat_1 @ B @ ( k10_relat_1 @ B @ A ) ) @ A ) ))).
% 1.52/1.69  thf('10', plain,
% 1.52/1.69      (![X17 : $i, X18 : $i]:
% 1.52/1.69         ((r1_tarski @ (k9_relat_1 @ X17 @ (k10_relat_1 @ X17 @ X18)) @ X18)
% 1.52/1.69          | ~ (v1_funct_1 @ X17)
% 1.52/1.69          | ~ (v1_relat_1 @ X17))),
% 1.52/1.69      inference('cnf', [status(esa)], [t145_funct_1])).
% 1.52/1.69  thf(t28_xboole_1, axiom,
% 1.52/1.69    (![A:$i,B:$i]:
% 1.52/1.69     ( ( r1_tarski @ A @ B ) => ( ( k3_xboole_0 @ A @ B ) = ( A ) ) ))).
% 1.52/1.69  thf('11', plain,
% 1.52/1.69      (![X6 : $i, X7 : $i]:
% 1.52/1.69         (((k3_xboole_0 @ X6 @ X7) = (X6)) | ~ (r1_tarski @ X6 @ X7))),
% 1.52/1.69      inference('cnf', [status(esa)], [t28_xboole_1])).
% 1.52/1.69  thf('12', plain,
% 1.52/1.69      (![X0 : $i, X1 : $i]:
% 1.52/1.69         (~ (v1_relat_1 @ X1)
% 1.52/1.69          | ~ (v1_funct_1 @ X1)
% 1.52/1.69          | ((k3_xboole_0 @ (k9_relat_1 @ X1 @ (k10_relat_1 @ X1 @ X0)) @ X0)
% 1.52/1.69              = (k9_relat_1 @ X1 @ (k10_relat_1 @ X1 @ X0))))),
% 1.52/1.69      inference('sup-', [status(thm)], ['10', '11'])).
% 1.52/1.69  thf('13', plain,
% 1.52/1.69      (![X0 : $i, X1 : $i]: ((k3_xboole_0 @ X1 @ X0) = (k3_xboole_0 @ X0 @ X1))),
% 1.52/1.69      inference('sup+', [status(thm)], ['2', '3'])).
% 1.52/1.69  thf('14', plain,
% 1.52/1.69      (![X0 : $i, X1 : $i]:
% 1.52/1.69         (~ (v1_relat_1 @ X1)
% 1.52/1.69          | ~ (v1_funct_1 @ X1)
% 1.52/1.69          | ((k3_xboole_0 @ X0 @ (k9_relat_1 @ X1 @ (k10_relat_1 @ X1 @ X0)))
% 1.52/1.69              = (k9_relat_1 @ X1 @ (k10_relat_1 @ X1 @ X0))))),
% 1.52/1.69      inference('demod', [status(thm)], ['12', '13'])).
% 1.52/1.69  thf('15', plain,
% 1.52/1.69      (![X0 : $i, X1 : $i, X2 : $i]:
% 1.52/1.69         ((r1_tarski @ X0 @ X1) | ~ (r1_tarski @ X0 @ (k3_xboole_0 @ X1 @ X2)))),
% 1.52/1.69      inference('cnf', [status(esa)], [t18_xboole_1])).
% 1.52/1.69  thf('16', plain,
% 1.52/1.69      (![X0 : $i, X1 : $i, X2 : $i]:
% 1.52/1.69         (~ (r1_tarski @ X2 @ (k9_relat_1 @ X1 @ (k10_relat_1 @ X1 @ X0)))
% 1.52/1.69          | ~ (v1_funct_1 @ X1)
% 1.52/1.69          | ~ (v1_relat_1 @ X1)
% 1.52/1.69          | (r1_tarski @ X2 @ X0))),
% 1.52/1.69      inference('sup-', [status(thm)], ['14', '15'])).
% 1.52/1.69  thf('17', plain,
% 1.52/1.69      (![X0 : $i, X1 : $i, X2 : $i]:
% 1.52/1.69         (~ (v1_relat_1 @ X1)
% 1.52/1.69          | (r1_tarski @ 
% 1.52/1.69             (k9_relat_1 @ X1 @ (k3_xboole_0 @ X2 @ (k10_relat_1 @ X1 @ X0))) @ 
% 1.52/1.69             X0)
% 1.52/1.69          | ~ (v1_relat_1 @ X1)
% 1.52/1.69          | ~ (v1_funct_1 @ X1))),
% 1.52/1.69      inference('sup-', [status(thm)], ['9', '16'])).
% 1.52/1.69  thf('18', plain,
% 1.52/1.69      (![X0 : $i, X1 : $i, X2 : $i]:
% 1.52/1.69         (~ (v1_funct_1 @ X1)
% 1.52/1.69          | (r1_tarski @ 
% 1.52/1.69             (k9_relat_1 @ X1 @ (k3_xboole_0 @ X2 @ (k10_relat_1 @ X1 @ X0))) @ 
% 1.52/1.69             X0)
% 1.52/1.69          | ~ (v1_relat_1 @ X1))),
% 1.52/1.69      inference('simplify', [status(thm)], ['17'])).
% 1.52/1.69  thf('19', plain,
% 1.52/1.69      (![X14 : $i, X15 : $i, X16 : $i]:
% 1.52/1.69         ((r1_tarski @ (k9_relat_1 @ X14 @ (k3_xboole_0 @ X15 @ X16)) @ 
% 1.52/1.69           (k3_xboole_0 @ (k9_relat_1 @ X14 @ X15) @ (k9_relat_1 @ X14 @ X16)))
% 1.52/1.69          | ~ (v1_relat_1 @ X14))),
% 1.52/1.69      inference('cnf', [status(esa)], [t154_relat_1])).
% 1.52/1.69  thf('20', plain,
% 1.52/1.69      (![X0 : $i, X1 : $i, X2 : $i]:
% 1.52/1.69         ((r1_tarski @ X0 @ X1) | ~ (r1_tarski @ X0 @ (k3_xboole_0 @ X1 @ X2)))),
% 1.52/1.69      inference('cnf', [status(esa)], [t18_xboole_1])).
% 1.52/1.69  thf('21', plain,
% 1.52/1.69      (![X0 : $i, X1 : $i, X2 : $i]:
% 1.52/1.69         (~ (v1_relat_1 @ X1)
% 1.52/1.69          | (r1_tarski @ (k9_relat_1 @ X1 @ (k3_xboole_0 @ X2 @ X0)) @ 
% 1.52/1.69             (k9_relat_1 @ X1 @ X2)))),
% 1.52/1.69      inference('sup-', [status(thm)], ['19', '20'])).
% 1.52/1.69  thf(t19_xboole_1, axiom,
% 1.52/1.69    (![A:$i,B:$i,C:$i]:
% 1.52/1.69     ( ( ( r1_tarski @ A @ B ) & ( r1_tarski @ A @ C ) ) =>
% 1.52/1.69       ( r1_tarski @ A @ ( k3_xboole_0 @ B @ C ) ) ))).
% 1.52/1.69  thf('22', plain,
% 1.52/1.69      (![X3 : $i, X4 : $i, X5 : $i]:
% 1.52/1.69         (~ (r1_tarski @ X3 @ X4)
% 1.52/1.69          | ~ (r1_tarski @ X3 @ X5)
% 1.52/1.69          | (r1_tarski @ X3 @ (k3_xboole_0 @ X4 @ X5)))),
% 1.52/1.69      inference('cnf', [status(esa)], [t19_xboole_1])).
% 1.52/1.69  thf('23', plain,
% 1.52/1.69      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i]:
% 1.52/1.69         (~ (v1_relat_1 @ X1)
% 1.52/1.69          | (r1_tarski @ (k9_relat_1 @ X1 @ (k3_xboole_0 @ X0 @ X2)) @ 
% 1.52/1.69             (k3_xboole_0 @ (k9_relat_1 @ X1 @ X0) @ X3))
% 1.52/1.69          | ~ (r1_tarski @ (k9_relat_1 @ X1 @ (k3_xboole_0 @ X0 @ X2)) @ X3))),
% 1.52/1.69      inference('sup-', [status(thm)], ['21', '22'])).
% 1.52/1.69  thf('24', plain,
% 1.52/1.69      (![X0 : $i, X1 : $i, X2 : $i]:
% 1.52/1.69         (~ (v1_relat_1 @ X1)
% 1.52/1.69          | ~ (v1_funct_1 @ X1)
% 1.52/1.69          | (r1_tarski @ 
% 1.52/1.69             (k9_relat_1 @ X1 @ (k3_xboole_0 @ X2 @ (k10_relat_1 @ X1 @ X0))) @ 
% 1.52/1.69             (k3_xboole_0 @ (k9_relat_1 @ X1 @ X2) @ X0))
% 1.52/1.69          | ~ (v1_relat_1 @ X1))),
% 1.52/1.69      inference('sup-', [status(thm)], ['18', '23'])).
% 1.52/1.69  thf('25', plain,
% 1.52/1.69      (![X0 : $i, X1 : $i, X2 : $i]:
% 1.52/1.69         ((r1_tarski @ 
% 1.52/1.69           (k9_relat_1 @ X1 @ (k3_xboole_0 @ X2 @ (k10_relat_1 @ X1 @ X0))) @ 
% 1.52/1.69           (k3_xboole_0 @ (k9_relat_1 @ X1 @ X2) @ X0))
% 1.52/1.69          | ~ (v1_funct_1 @ X1)
% 1.52/1.69          | ~ (v1_relat_1 @ X1))),
% 1.52/1.69      inference('simplify', [status(thm)], ['24'])).
% 1.52/1.69  thf('26', plain,
% 1.52/1.69      (![X0 : $i, X1 : $i, X2 : $i]:
% 1.52/1.69         ((r1_tarski @ 
% 1.52/1.69           (k9_relat_1 @ X1 @ (k3_xboole_0 @ X0 @ (k10_relat_1 @ X1 @ X2))) @ 
% 1.52/1.69           (k3_xboole_0 @ X2 @ (k9_relat_1 @ X1 @ X0)))
% 1.52/1.69          | ~ (v1_relat_1 @ X1)
% 1.52/1.69          | ~ (v1_funct_1 @ X1))),
% 1.52/1.69      inference('sup+', [status(thm)], ['4', '25'])).
% 1.52/1.69  thf(t149_funct_1, conjecture,
% 1.52/1.69    (![A:$i,B:$i,C:$i]:
% 1.52/1.69     ( ( ( v1_relat_1 @ C ) & ( v1_funct_1 @ C ) ) =>
% 1.52/1.69       ( r1_tarski @
% 1.52/1.69         ( k9_relat_1 @ C @ ( k3_xboole_0 @ A @ ( k10_relat_1 @ C @ B ) ) ) @ 
% 1.52/1.69         ( k3_xboole_0 @ ( k9_relat_1 @ C @ A ) @ B ) ) ))).
% 1.52/1.69  thf(zf_stmt_0, negated_conjecture,
% 1.52/1.69    (~( ![A:$i,B:$i,C:$i]:
% 1.52/1.69        ( ( ( v1_relat_1 @ C ) & ( v1_funct_1 @ C ) ) =>
% 1.52/1.69          ( r1_tarski @
% 1.52/1.69            ( k9_relat_1 @ C @ ( k3_xboole_0 @ A @ ( k10_relat_1 @ C @ B ) ) ) @ 
% 1.52/1.69            ( k3_xboole_0 @ ( k9_relat_1 @ C @ A ) @ B ) ) ) )),
% 1.52/1.69    inference('cnf.neg', [status(esa)], [t149_funct_1])).
% 1.52/1.69  thf('27', plain,
% 1.52/1.69      (~ (r1_tarski @ 
% 1.52/1.69          (k9_relat_1 @ sk_C @ 
% 1.52/1.69           (k3_xboole_0 @ sk_A @ (k10_relat_1 @ sk_C @ sk_B))) @ 
% 1.52/1.69          (k3_xboole_0 @ (k9_relat_1 @ sk_C @ sk_A) @ sk_B))),
% 1.52/1.69      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.52/1.69  thf('28', plain,
% 1.52/1.69      (![X0 : $i, X1 : $i]: ((k3_xboole_0 @ X1 @ X0) = (k3_xboole_0 @ X0 @ X1))),
% 1.52/1.69      inference('sup+', [status(thm)], ['2', '3'])).
% 1.52/1.69  thf('29', plain,
% 1.52/1.69      (~ (r1_tarski @ 
% 1.52/1.69          (k9_relat_1 @ sk_C @ 
% 1.52/1.69           (k3_xboole_0 @ sk_A @ (k10_relat_1 @ sk_C @ sk_B))) @ 
% 1.52/1.69          (k3_xboole_0 @ sk_B @ (k9_relat_1 @ sk_C @ sk_A)))),
% 1.52/1.69      inference('demod', [status(thm)], ['27', '28'])).
% 1.52/1.69  thf('30', plain, ((~ (v1_funct_1 @ sk_C) | ~ (v1_relat_1 @ sk_C))),
% 1.52/1.69      inference('sup-', [status(thm)], ['26', '29'])).
% 1.52/1.69  thf('31', plain, ((v1_funct_1 @ sk_C)),
% 1.52/1.69      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.52/1.69  thf('32', plain, ((v1_relat_1 @ sk_C)),
% 1.52/1.69      inference('cnf', [status(esa)], [zf_stmt_0])).
% 1.52/1.69  thf('33', plain, ($false),
% 1.52/1.69      inference('demod', [status(thm)], ['30', '31', '32'])).
% 1.52/1.69  
% 1.52/1.69  % SZS output end Refutation
% 1.52/1.69  
% 1.52/1.70  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
