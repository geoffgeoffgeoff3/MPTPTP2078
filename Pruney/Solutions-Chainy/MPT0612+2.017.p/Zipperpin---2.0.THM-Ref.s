%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.a8eVDhYLPH

% Computer   : n010.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:44:11 EST 2020

% Result     : Theorem 0.20s
% Output     : Refutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   46 (  52 expanded)
%              Number of leaves         :   19 (  23 expanded)
%              Depth                    :   10
%              Number of atoms          :  308 ( 378 expanded)
%              Number of equality atoms :   25 (  31 expanded)
%              Maximal formula depth    :   13 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(k4_xboole_0_type,type,(
    k4_xboole_0: $i > $i > $i )).

thf(sk_C_type,type,(
    sk_C: $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(r1_xboole_0_type,type,(
    r1_xboole_0: $i > $i > $o )).

thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(k1_relat_1_type,type,(
    k1_relat_1: $i > $i )).

thf(k7_relat_1_type,type,(
    k7_relat_1: $i > $i > $i )).

thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(k6_subset_1_type,type,(
    k6_subset_1: $i > $i > $i )).

thf(d10_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ( A = B )
    <=> ( ( r1_tarski @ A @ B )
        & ( r1_tarski @ B @ A ) ) ) )).

thf('0',plain,(
    ! [X2: $i,X3: $i] :
      ( ( r1_tarski @ X2 @ X3 )
      | ( X2 != X3 ) ) ),
    inference(cnf,[status(esa)],[d10_xboole_0])).

thf('1',plain,(
    ! [X3: $i] :
      ( r1_tarski @ X3 @ X3 ) ),
    inference(simplify,[status(thm)],['0'])).

thf(t97_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ B )
     => ( ( r1_tarski @ ( k1_relat_1 @ B ) @ A )
       => ( ( k7_relat_1 @ B @ A )
          = B ) ) ) )).

thf('2',plain,(
    ! [X16: $i,X17: $i] :
      ( ~ ( r1_tarski @ ( k1_relat_1 @ X16 ) @ X17 )
      | ( ( k7_relat_1 @ X16 @ X17 )
        = X16 )
      | ~ ( v1_relat_1 @ X16 ) ) ),
    inference(cnf,[status(esa)],[t97_relat_1])).

thf('3',plain,(
    ! [X0: $i] :
      ( ~ ( v1_relat_1 @ X0 )
      | ( ( k7_relat_1 @ X0 @ ( k1_relat_1 @ X0 ) )
        = X0 ) ) ),
    inference('sup-',[status(thm)],['1','2'])).

thf(t109_relat_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( v1_relat_1 @ C )
     => ( ( k7_relat_1 @ C @ ( k6_subset_1 @ A @ B ) )
        = ( k6_subset_1 @ ( k7_relat_1 @ C @ A ) @ ( k7_relat_1 @ C @ B ) ) ) ) )).

thf('4',plain,(
    ! [X10: $i,X11: $i,X12: $i] :
      ( ( ( k7_relat_1 @ X10 @ ( k6_subset_1 @ X11 @ X12 ) )
        = ( k6_subset_1 @ ( k7_relat_1 @ X10 @ X11 ) @ ( k7_relat_1 @ X10 @ X12 ) ) )
      | ~ ( v1_relat_1 @ X10 ) ) ),
    inference(cnf,[status(esa)],[t109_relat_1])).

thf(redefinition_k6_subset_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k6_subset_1 @ A @ B )
      = ( k4_xboole_0 @ A @ B ) ) )).

thf('5',plain,(
    ! [X8: $i,X9: $i] :
      ( ( k6_subset_1 @ X8 @ X9 )
      = ( k4_xboole_0 @ X8 @ X9 ) ) ),
    inference(cnf,[status(esa)],[redefinition_k6_subset_1])).

thf('6',plain,(
    ! [X8: $i,X9: $i] :
      ( ( k6_subset_1 @ X8 @ X9 )
      = ( k4_xboole_0 @ X8 @ X9 ) ) ),
    inference(cnf,[status(esa)],[redefinition_k6_subset_1])).

thf('7',plain,(
    ! [X10: $i,X11: $i,X12: $i] :
      ( ( ( k7_relat_1 @ X10 @ ( k4_xboole_0 @ X11 @ X12 ) )
        = ( k4_xboole_0 @ ( k7_relat_1 @ X10 @ X11 ) @ ( k7_relat_1 @ X10 @ X12 ) ) )
      | ~ ( v1_relat_1 @ X10 ) ) ),
    inference(demod,[status(thm)],['4','5','6'])).

thf('8',plain,(
    ! [X0: $i,X1: $i] :
      ( ( ( k7_relat_1 @ X0 @ ( k4_xboole_0 @ ( k1_relat_1 @ X0 ) @ X1 ) )
        = ( k4_xboole_0 @ X0 @ ( k7_relat_1 @ X0 @ X1 ) ) )
      | ~ ( v1_relat_1 @ X0 )
      | ~ ( v1_relat_1 @ X0 ) ) ),
    inference('sup+',[status(thm)],['3','7'])).

thf('9',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( v1_relat_1 @ X0 )
      | ( ( k7_relat_1 @ X0 @ ( k4_xboole_0 @ ( k1_relat_1 @ X0 ) @ X1 ) )
        = ( k4_xboole_0 @ X0 @ ( k7_relat_1 @ X0 @ X1 ) ) ) ) ),
    inference(simplify,[status(thm)],['8'])).

thf(t216_relat_1,conjecture,(
    ! [A: $i,B: $i,C: $i] :
      ( ( v1_relat_1 @ C )
     => ( ( r1_tarski @ A @ B )
       => ( ( k7_relat_1 @ ( k6_subset_1 @ C @ ( k7_relat_1 @ C @ B ) ) @ A )
          = k1_xboole_0 ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i,C: $i] :
        ( ( v1_relat_1 @ C )
       => ( ( r1_tarski @ A @ B )
         => ( ( k7_relat_1 @ ( k6_subset_1 @ C @ ( k7_relat_1 @ C @ B ) ) @ A )
            = k1_xboole_0 ) ) ) ),
    inference('cnf.neg',[status(esa)],[t216_relat_1])).

thf('10',plain,(
    r1_tarski @ sk_A @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t85_xboole_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( r1_tarski @ A @ B )
     => ( r1_xboole_0 @ A @ ( k4_xboole_0 @ C @ B ) ) ) )).

thf('11',plain,(
    ! [X5: $i,X6: $i,X7: $i] :
      ( ~ ( r1_tarski @ X5 @ X6 )
      | ( r1_xboole_0 @ X5 @ ( k4_xboole_0 @ X7 @ X6 ) ) ) ),
    inference(cnf,[status(esa)],[t85_xboole_1])).

thf('12',plain,(
    ! [X0: $i] :
      ( r1_xboole_0 @ sk_A @ ( k4_xboole_0 @ X0 @ sk_B ) ) ),
    inference('sup-',[status(thm)],['10','11'])).

thf(symmetry_r1_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_xboole_0 @ A @ B )
     => ( r1_xboole_0 @ B @ A ) ) )).

thf('13',plain,(
    ! [X0: $i,X1: $i] :
      ( ( r1_xboole_0 @ X0 @ X1 )
      | ~ ( r1_xboole_0 @ X1 @ X0 ) ) ),
    inference(cnf,[status(esa)],[symmetry_r1_xboole_0])).

thf('14',plain,(
    ! [X0: $i] :
      ( r1_xboole_0 @ ( k4_xboole_0 @ X0 @ sk_B ) @ sk_A ) ),
    inference('sup-',[status(thm)],['12','13'])).

thf(t207_relat_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( v1_relat_1 @ C )
     => ( ( r1_xboole_0 @ A @ B )
       => ( ( k7_relat_1 @ ( k7_relat_1 @ C @ A ) @ B )
          = k1_xboole_0 ) ) ) )).

thf('15',plain,(
    ! [X13: $i,X14: $i,X15: $i] :
      ( ~ ( r1_xboole_0 @ X13 @ X14 )
      | ~ ( v1_relat_1 @ X15 )
      | ( ( k7_relat_1 @ ( k7_relat_1 @ X15 @ X13 ) @ X14 )
        = k1_xboole_0 ) ) ),
    inference(cnf,[status(esa)],[t207_relat_1])).

thf('16',plain,(
    ! [X0: $i,X1: $i] :
      ( ( ( k7_relat_1 @ ( k7_relat_1 @ X1 @ ( k4_xboole_0 @ X0 @ sk_B ) ) @ sk_A )
        = k1_xboole_0 )
      | ~ ( v1_relat_1 @ X1 ) ) ),
    inference('sup-',[status(thm)],['14','15'])).

thf('17',plain,(
    ! [X0: $i] :
      ( ( ( k7_relat_1 @ ( k4_xboole_0 @ X0 @ ( k7_relat_1 @ X0 @ sk_B ) ) @ sk_A )
        = k1_xboole_0 )
      | ~ ( v1_relat_1 @ X0 )
      | ~ ( v1_relat_1 @ X0 ) ) ),
    inference('sup+',[status(thm)],['9','16'])).

thf('18',plain,(
    ! [X0: $i] :
      ( ~ ( v1_relat_1 @ X0 )
      | ( ( k7_relat_1 @ ( k4_xboole_0 @ X0 @ ( k7_relat_1 @ X0 @ sk_B ) ) @ sk_A )
        = k1_xboole_0 ) ) ),
    inference(simplify,[status(thm)],['17'])).

thf('19',plain,(
    ( k7_relat_1 @ ( k6_subset_1 @ sk_C @ ( k7_relat_1 @ sk_C @ sk_B ) ) @ sk_A )
 != k1_xboole_0 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('20',plain,(
    ! [X8: $i,X9: $i] :
      ( ( k6_subset_1 @ X8 @ X9 )
      = ( k4_xboole_0 @ X8 @ X9 ) ) ),
    inference(cnf,[status(esa)],[redefinition_k6_subset_1])).

thf('21',plain,(
    ( k7_relat_1 @ ( k4_xboole_0 @ sk_C @ ( k7_relat_1 @ sk_C @ sk_B ) ) @ sk_A )
 != k1_xboole_0 ),
    inference(demod,[status(thm)],['19','20'])).

thf('22',plain,
    ( ( k1_xboole_0 != k1_xboole_0 )
    | ~ ( v1_relat_1 @ sk_C ) ),
    inference('sup-',[status(thm)],['18','21'])).

thf('23',plain,(
    v1_relat_1 @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('24',plain,(
    k1_xboole_0 != k1_xboole_0 ),
    inference(demod,[status(thm)],['22','23'])).

thf('25',plain,(
    $false ),
    inference(simplify,[status(thm)],['24'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.06/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.06/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.a8eVDhYLPH
% 0.13/0.34  % Computer   : n010.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 16:52:14 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running portfolio for 600 s
% 0.13/0.34  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.13/0.34  % Number of cores: 8
% 0.13/0.35  % Python version: Python 3.6.8
% 0.13/0.35  % Running in FO mode
% 0.20/0.48  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.20/0.48  % Solved by: fo/fo7.sh
% 0.20/0.48  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.20/0.48  % done 62 iterations in 0.032s
% 0.20/0.48  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.20/0.48  % SZS output start Refutation
% 0.20/0.48  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.20/0.48  thf(k4_xboole_0_type, type, k4_xboole_0: $i > $i > $i).
% 0.20/0.48  thf(sk_C_type, type, sk_C: $i).
% 0.20/0.48  thf(sk_B_type, type, sk_B: $i).
% 0.20/0.48  thf(r1_xboole_0_type, type, r1_xboole_0: $i > $i > $o).
% 0.20/0.48  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 0.20/0.48  thf(sk_A_type, type, sk_A: $i).
% 0.20/0.48  thf(k1_relat_1_type, type, k1_relat_1: $i > $i).
% 0.20/0.48  thf(k7_relat_1_type, type, k7_relat_1: $i > $i > $i).
% 0.20/0.48  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 0.20/0.48  thf(k6_subset_1_type, type, k6_subset_1: $i > $i > $i).
% 0.20/0.48  thf(d10_xboole_0, axiom,
% 0.20/0.48    (![A:$i,B:$i]:
% 0.20/0.48     ( ( ( A ) = ( B ) ) <=> ( ( r1_tarski @ A @ B ) & ( r1_tarski @ B @ A ) ) ))).
% 0.20/0.48  thf('0', plain,
% 0.20/0.48      (![X2 : $i, X3 : $i]: ((r1_tarski @ X2 @ X3) | ((X2) != (X3)))),
% 0.20/0.48      inference('cnf', [status(esa)], [d10_xboole_0])).
% 0.20/0.48  thf('1', plain, (![X3 : $i]: (r1_tarski @ X3 @ X3)),
% 0.20/0.48      inference('simplify', [status(thm)], ['0'])).
% 0.20/0.48  thf(t97_relat_1, axiom,
% 0.20/0.48    (![A:$i,B:$i]:
% 0.20/0.48     ( ( v1_relat_1 @ B ) =>
% 0.20/0.48       ( ( r1_tarski @ ( k1_relat_1 @ B ) @ A ) =>
% 0.20/0.48         ( ( k7_relat_1 @ B @ A ) = ( B ) ) ) ))).
% 0.20/0.48  thf('2', plain,
% 0.20/0.48      (![X16 : $i, X17 : $i]:
% 0.20/0.48         (~ (r1_tarski @ (k1_relat_1 @ X16) @ X17)
% 0.20/0.48          | ((k7_relat_1 @ X16 @ X17) = (X16))
% 0.20/0.48          | ~ (v1_relat_1 @ X16))),
% 0.20/0.48      inference('cnf', [status(esa)], [t97_relat_1])).
% 0.20/0.48  thf('3', plain,
% 0.20/0.48      (![X0 : $i]:
% 0.20/0.48         (~ (v1_relat_1 @ X0) | ((k7_relat_1 @ X0 @ (k1_relat_1 @ X0)) = (X0)))),
% 0.20/0.48      inference('sup-', [status(thm)], ['1', '2'])).
% 0.20/0.48  thf(t109_relat_1, axiom,
% 0.20/0.48    (![A:$i,B:$i,C:$i]:
% 0.20/0.48     ( ( v1_relat_1 @ C ) =>
% 0.20/0.48       ( ( k7_relat_1 @ C @ ( k6_subset_1 @ A @ B ) ) =
% 0.20/0.48         ( k6_subset_1 @ ( k7_relat_1 @ C @ A ) @ ( k7_relat_1 @ C @ B ) ) ) ))).
% 0.20/0.48  thf('4', plain,
% 0.20/0.48      (![X10 : $i, X11 : $i, X12 : $i]:
% 0.20/0.48         (((k7_relat_1 @ X10 @ (k6_subset_1 @ X11 @ X12))
% 0.20/0.48            = (k6_subset_1 @ (k7_relat_1 @ X10 @ X11) @ 
% 0.20/0.48               (k7_relat_1 @ X10 @ X12)))
% 0.20/0.48          | ~ (v1_relat_1 @ X10))),
% 0.20/0.48      inference('cnf', [status(esa)], [t109_relat_1])).
% 0.20/0.48  thf(redefinition_k6_subset_1, axiom,
% 0.20/0.48    (![A:$i,B:$i]: ( ( k6_subset_1 @ A @ B ) = ( k4_xboole_0 @ A @ B ) ))).
% 0.20/0.48  thf('5', plain,
% 0.20/0.48      (![X8 : $i, X9 : $i]: ((k6_subset_1 @ X8 @ X9) = (k4_xboole_0 @ X8 @ X9))),
% 0.20/0.48      inference('cnf', [status(esa)], [redefinition_k6_subset_1])).
% 0.20/0.48  thf('6', plain,
% 0.20/0.48      (![X8 : $i, X9 : $i]: ((k6_subset_1 @ X8 @ X9) = (k4_xboole_0 @ X8 @ X9))),
% 0.20/0.48      inference('cnf', [status(esa)], [redefinition_k6_subset_1])).
% 0.20/0.48  thf('7', plain,
% 0.20/0.48      (![X10 : $i, X11 : $i, X12 : $i]:
% 0.20/0.48         (((k7_relat_1 @ X10 @ (k4_xboole_0 @ X11 @ X12))
% 0.20/0.48            = (k4_xboole_0 @ (k7_relat_1 @ X10 @ X11) @ 
% 0.20/0.48               (k7_relat_1 @ X10 @ X12)))
% 0.20/0.48          | ~ (v1_relat_1 @ X10))),
% 0.20/0.48      inference('demod', [status(thm)], ['4', '5', '6'])).
% 0.20/0.48  thf('8', plain,
% 0.20/0.48      (![X0 : $i, X1 : $i]:
% 0.20/0.48         (((k7_relat_1 @ X0 @ (k4_xboole_0 @ (k1_relat_1 @ X0) @ X1))
% 0.20/0.48            = (k4_xboole_0 @ X0 @ (k7_relat_1 @ X0 @ X1)))
% 0.20/0.48          | ~ (v1_relat_1 @ X0)
% 0.20/0.48          | ~ (v1_relat_1 @ X0))),
% 0.20/0.48      inference('sup+', [status(thm)], ['3', '7'])).
% 0.20/0.48  thf('9', plain,
% 0.20/0.48      (![X0 : $i, X1 : $i]:
% 0.20/0.48         (~ (v1_relat_1 @ X0)
% 0.20/0.48          | ((k7_relat_1 @ X0 @ (k4_xboole_0 @ (k1_relat_1 @ X0) @ X1))
% 0.20/0.48              = (k4_xboole_0 @ X0 @ (k7_relat_1 @ X0 @ X1))))),
% 0.20/0.48      inference('simplify', [status(thm)], ['8'])).
% 0.20/0.48  thf(t216_relat_1, conjecture,
% 0.20/0.48    (![A:$i,B:$i,C:$i]:
% 0.20/0.48     ( ( v1_relat_1 @ C ) =>
% 0.20/0.48       ( ( r1_tarski @ A @ B ) =>
% 0.20/0.48         ( ( k7_relat_1 @ ( k6_subset_1 @ C @ ( k7_relat_1 @ C @ B ) ) @ A ) =
% 0.20/0.48           ( k1_xboole_0 ) ) ) ))).
% 0.20/0.48  thf(zf_stmt_0, negated_conjecture,
% 0.20/0.48    (~( ![A:$i,B:$i,C:$i]:
% 0.20/0.48        ( ( v1_relat_1 @ C ) =>
% 0.20/0.48          ( ( r1_tarski @ A @ B ) =>
% 0.20/0.48            ( ( k7_relat_1 @ ( k6_subset_1 @ C @ ( k7_relat_1 @ C @ B ) ) @ A ) =
% 0.20/0.48              ( k1_xboole_0 ) ) ) ) )),
% 0.20/0.48    inference('cnf.neg', [status(esa)], [t216_relat_1])).
% 0.20/0.48  thf('10', plain, ((r1_tarski @ sk_A @ sk_B)),
% 0.20/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.48  thf(t85_xboole_1, axiom,
% 0.20/0.48    (![A:$i,B:$i,C:$i]:
% 0.20/0.48     ( ( r1_tarski @ A @ B ) => ( r1_xboole_0 @ A @ ( k4_xboole_0 @ C @ B ) ) ))).
% 0.20/0.48  thf('11', plain,
% 0.20/0.48      (![X5 : $i, X6 : $i, X7 : $i]:
% 0.20/0.48         (~ (r1_tarski @ X5 @ X6)
% 0.20/0.48          | (r1_xboole_0 @ X5 @ (k4_xboole_0 @ X7 @ X6)))),
% 0.20/0.48      inference('cnf', [status(esa)], [t85_xboole_1])).
% 0.20/0.48  thf('12', plain,
% 0.20/0.48      (![X0 : $i]: (r1_xboole_0 @ sk_A @ (k4_xboole_0 @ X0 @ sk_B))),
% 0.20/0.48      inference('sup-', [status(thm)], ['10', '11'])).
% 0.20/0.48  thf(symmetry_r1_xboole_0, axiom,
% 0.20/0.48    (![A:$i,B:$i]: ( ( r1_xboole_0 @ A @ B ) => ( r1_xboole_0 @ B @ A ) ))).
% 0.20/0.48  thf('13', plain,
% 0.20/0.48      (![X0 : $i, X1 : $i]:
% 0.20/0.48         ((r1_xboole_0 @ X0 @ X1) | ~ (r1_xboole_0 @ X1 @ X0))),
% 0.20/0.48      inference('cnf', [status(esa)], [symmetry_r1_xboole_0])).
% 0.20/0.48  thf('14', plain,
% 0.20/0.48      (![X0 : $i]: (r1_xboole_0 @ (k4_xboole_0 @ X0 @ sk_B) @ sk_A)),
% 0.20/0.48      inference('sup-', [status(thm)], ['12', '13'])).
% 0.20/0.48  thf(t207_relat_1, axiom,
% 0.20/0.48    (![A:$i,B:$i,C:$i]:
% 0.20/0.48     ( ( v1_relat_1 @ C ) =>
% 0.20/0.48       ( ( r1_xboole_0 @ A @ B ) =>
% 0.20/0.48         ( ( k7_relat_1 @ ( k7_relat_1 @ C @ A ) @ B ) = ( k1_xboole_0 ) ) ) ))).
% 0.20/0.48  thf('15', plain,
% 0.20/0.48      (![X13 : $i, X14 : $i, X15 : $i]:
% 0.20/0.48         (~ (r1_xboole_0 @ X13 @ X14)
% 0.20/0.48          | ~ (v1_relat_1 @ X15)
% 0.20/0.48          | ((k7_relat_1 @ (k7_relat_1 @ X15 @ X13) @ X14) = (k1_xboole_0)))),
% 0.20/0.48      inference('cnf', [status(esa)], [t207_relat_1])).
% 0.20/0.48  thf('16', plain,
% 0.20/0.48      (![X0 : $i, X1 : $i]:
% 0.20/0.48         (((k7_relat_1 @ (k7_relat_1 @ X1 @ (k4_xboole_0 @ X0 @ sk_B)) @ sk_A)
% 0.20/0.48            = (k1_xboole_0))
% 0.20/0.48          | ~ (v1_relat_1 @ X1))),
% 0.20/0.48      inference('sup-', [status(thm)], ['14', '15'])).
% 0.20/0.48  thf('17', plain,
% 0.20/0.48      (![X0 : $i]:
% 0.20/0.48         (((k7_relat_1 @ (k4_xboole_0 @ X0 @ (k7_relat_1 @ X0 @ sk_B)) @ sk_A)
% 0.20/0.48            = (k1_xboole_0))
% 0.20/0.48          | ~ (v1_relat_1 @ X0)
% 0.20/0.48          | ~ (v1_relat_1 @ X0))),
% 0.20/0.48      inference('sup+', [status(thm)], ['9', '16'])).
% 0.20/0.48  thf('18', plain,
% 0.20/0.48      (![X0 : $i]:
% 0.20/0.48         (~ (v1_relat_1 @ X0)
% 0.20/0.48          | ((k7_relat_1 @ (k4_xboole_0 @ X0 @ (k7_relat_1 @ X0 @ sk_B)) @ sk_A)
% 0.20/0.48              = (k1_xboole_0)))),
% 0.20/0.48      inference('simplify', [status(thm)], ['17'])).
% 0.20/0.48  thf('19', plain,
% 0.20/0.48      (((k7_relat_1 @ (k6_subset_1 @ sk_C @ (k7_relat_1 @ sk_C @ sk_B)) @ sk_A)
% 0.20/0.48         != (k1_xboole_0))),
% 0.20/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.48  thf('20', plain,
% 0.20/0.48      (![X8 : $i, X9 : $i]: ((k6_subset_1 @ X8 @ X9) = (k4_xboole_0 @ X8 @ X9))),
% 0.20/0.48      inference('cnf', [status(esa)], [redefinition_k6_subset_1])).
% 0.20/0.48  thf('21', plain,
% 0.20/0.48      (((k7_relat_1 @ (k4_xboole_0 @ sk_C @ (k7_relat_1 @ sk_C @ sk_B)) @ sk_A)
% 0.20/0.48         != (k1_xboole_0))),
% 0.20/0.48      inference('demod', [status(thm)], ['19', '20'])).
% 0.20/0.48  thf('22', plain,
% 0.20/0.48      ((((k1_xboole_0) != (k1_xboole_0)) | ~ (v1_relat_1 @ sk_C))),
% 0.20/0.48      inference('sup-', [status(thm)], ['18', '21'])).
% 0.20/0.48  thf('23', plain, ((v1_relat_1 @ sk_C)),
% 0.20/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.48  thf('24', plain, (((k1_xboole_0) != (k1_xboole_0))),
% 0.20/0.48      inference('demod', [status(thm)], ['22', '23'])).
% 0.20/0.48  thf('25', plain, ($false), inference('simplify', [status(thm)], ['24'])).
% 0.20/0.48  
% 0.20/0.48  % SZS output end Refutation
% 0.20/0.48  
% 0.35/0.49  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
