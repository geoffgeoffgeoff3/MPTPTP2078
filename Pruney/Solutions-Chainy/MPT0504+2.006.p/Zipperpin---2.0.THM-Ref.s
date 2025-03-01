%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.BCXQiz3URw

% Computer   : n016.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:41:16 EST 2020

% Result     : Theorem 0.20s
% Output     : Refutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   39 (  45 expanded)
%              Number of leaves         :   16 (  20 expanded)
%              Depth                    :    8
%              Number of atoms          :  235 ( 308 expanded)
%              Number of equality atoms :   24 (  30 expanded)
%              Maximal formula depth    :   12 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k4_xboole_0_type,type,(
    k4_xboole_0: $i > $i > $i )).

thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(k3_xboole_0_type,type,(
    k3_xboole_0: $i > $i > $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(sk_C_type,type,(
    sk_C: $i )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(k7_relat_1_type,type,(
    k7_relat_1: $i > $i > $i )).

thf(t100_relat_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( v1_relat_1 @ C )
     => ( ( k7_relat_1 @ ( k7_relat_1 @ C @ A ) @ B )
        = ( k7_relat_1 @ C @ ( k3_xboole_0 @ A @ B ) ) ) ) )).

thf('0',plain,(
    ! [X11: $i,X12: $i,X13: $i] :
      ( ( ( k7_relat_1 @ ( k7_relat_1 @ X11 @ X12 ) @ X13 )
        = ( k7_relat_1 @ X11 @ ( k3_xboole_0 @ X12 @ X13 ) ) )
      | ~ ( v1_relat_1 @ X11 ) ) ),
    inference(cnf,[status(esa)],[t100_relat_1])).

thf(t102_relat_1,conjecture,(
    ! [A: $i,B: $i,C: $i] :
      ( ( v1_relat_1 @ C )
     => ( ( r1_tarski @ A @ B )
       => ( ( k7_relat_1 @ ( k7_relat_1 @ C @ A ) @ B )
          = ( k7_relat_1 @ C @ A ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i,C: $i] :
        ( ( v1_relat_1 @ C )
       => ( ( r1_tarski @ A @ B )
         => ( ( k7_relat_1 @ ( k7_relat_1 @ C @ A ) @ B )
            = ( k7_relat_1 @ C @ A ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t102_relat_1])).

thf('1',plain,(
    ( k7_relat_1 @ ( k7_relat_1 @ sk_C @ sk_A ) @ sk_B )
 != ( k7_relat_1 @ sk_C @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('2',plain,
    ( ( ( k7_relat_1 @ sk_C @ ( k3_xboole_0 @ sk_A @ sk_B ) )
     != ( k7_relat_1 @ sk_C @ sk_A ) )
    | ~ ( v1_relat_1 @ sk_C ) ),
    inference('sup-',[status(thm)],['0','1'])).

thf('3',plain,(
    r1_tarski @ sk_A @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(l32_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( ( k4_xboole_0 @ A @ B )
        = k1_xboole_0 )
    <=> ( r1_tarski @ A @ B ) ) )).

thf('4',plain,(
    ! [X3: $i,X5: $i] :
      ( ( ( k4_xboole_0 @ X3 @ X5 )
        = k1_xboole_0 )
      | ~ ( r1_tarski @ X3 @ X5 ) ) ),
    inference(cnf,[status(esa)],[l32_xboole_1])).

thf('5',plain,
    ( ( k4_xboole_0 @ sk_A @ sk_B )
    = k1_xboole_0 ),
    inference('sup-',[status(thm)],['3','4'])).

thf(t48_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k4_xboole_0 @ A @ ( k4_xboole_0 @ A @ B ) )
      = ( k3_xboole_0 @ A @ B ) ) )).

thf('6',plain,(
    ! [X9: $i,X10: $i] :
      ( ( k4_xboole_0 @ X9 @ ( k4_xboole_0 @ X9 @ X10 ) )
      = ( k3_xboole_0 @ X9 @ X10 ) ) ),
    inference(cnf,[status(esa)],[t48_xboole_1])).

thf('7',plain,
    ( ( k4_xboole_0 @ sk_A @ k1_xboole_0 )
    = ( k3_xboole_0 @ sk_A @ sk_B ) ),
    inference('sup+',[status(thm)],['5','6'])).

thf('8',plain,(
    v1_relat_1 @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('9',plain,(
    ( k7_relat_1 @ sk_C @ ( k4_xboole_0 @ sk_A @ k1_xboole_0 ) )
 != ( k7_relat_1 @ sk_C @ sk_A ) ),
    inference(demod,[status(thm)],['2','7','8'])).

thf(t2_boole,axiom,(
    ! [A: $i] :
      ( ( k3_xboole_0 @ A @ k1_xboole_0 )
      = k1_xboole_0 ) )).

thf('10',plain,(
    ! [X6: $i] :
      ( ( k3_xboole_0 @ X6 @ k1_xboole_0 )
      = k1_xboole_0 ) ),
    inference(cnf,[status(esa)],[t2_boole])).

thf('11',plain,(
    ! [X9: $i,X10: $i] :
      ( ( k4_xboole_0 @ X9 @ ( k4_xboole_0 @ X9 @ X10 ) )
      = ( k3_xboole_0 @ X9 @ X10 ) ) ),
    inference(cnf,[status(esa)],[t48_xboole_1])).

thf('12',plain,(
    ! [X3: $i,X4: $i] :
      ( ( r1_tarski @ X3 @ X4 )
      | ( ( k4_xboole_0 @ X3 @ X4 )
       != k1_xboole_0 ) ) ),
    inference(cnf,[status(esa)],[l32_xboole_1])).

thf('13',plain,(
    ! [X0: $i,X1: $i] :
      ( ( ( k3_xboole_0 @ X1 @ X0 )
       != k1_xboole_0 )
      | ( r1_tarski @ X1 @ ( k4_xboole_0 @ X1 @ X0 ) ) ) ),
    inference('sup-',[status(thm)],['11','12'])).

thf('14',plain,(
    ! [X0: $i] :
      ( ( k1_xboole_0 != k1_xboole_0 )
      | ( r1_tarski @ X0 @ ( k4_xboole_0 @ X0 @ k1_xboole_0 ) ) ) ),
    inference('sup-',[status(thm)],['10','13'])).

thf('15',plain,(
    ! [X0: $i] :
      ( r1_tarski @ X0 @ ( k4_xboole_0 @ X0 @ k1_xboole_0 ) ) ),
    inference(simplify,[status(thm)],['14'])).

thf(d10_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ( A = B )
    <=> ( ( r1_tarski @ A @ B )
        & ( r1_tarski @ B @ A ) ) ) )).

thf('16',plain,(
    ! [X0: $i,X2: $i] :
      ( ( X0 = X2 )
      | ~ ( r1_tarski @ X2 @ X0 )
      | ~ ( r1_tarski @ X0 @ X2 ) ) ),
    inference(cnf,[status(esa)],[d10_xboole_0])).

thf('17',plain,(
    ! [X0: $i] :
      ( ~ ( r1_tarski @ ( k4_xboole_0 @ X0 @ k1_xboole_0 ) @ X0 )
      | ( ( k4_xboole_0 @ X0 @ k1_xboole_0 )
        = X0 ) ) ),
    inference('sup-',[status(thm)],['15','16'])).

thf(t36_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( r1_tarski @ ( k4_xboole_0 @ A @ B ) @ A ) )).

thf('18',plain,(
    ! [X7: $i,X8: $i] :
      ( r1_tarski @ ( k4_xboole_0 @ X7 @ X8 ) @ X7 ) ),
    inference(cnf,[status(esa)],[t36_xboole_1])).

thf('19',plain,(
    ! [X0: $i] :
      ( ( k4_xboole_0 @ X0 @ k1_xboole_0 )
      = X0 ) ),
    inference(demod,[status(thm)],['17','18'])).

thf('20',plain,(
    ( k7_relat_1 @ sk_C @ sk_A )
 != ( k7_relat_1 @ sk_C @ sk_A ) ),
    inference(demod,[status(thm)],['9','19'])).

thf('21',plain,(
    $false ),
    inference(simplify,[status(thm)],['20'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.BCXQiz3URw
% 0.13/0.34  % Computer   : n016.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 14:42:34 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running portfolio for 600 s
% 0.13/0.34  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.13/0.34  % Number of cores: 8
% 0.13/0.35  % Python version: Python 3.6.8
% 0.13/0.35  % Running in FO mode
% 0.20/0.47  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.20/0.47  % Solved by: fo/fo7.sh
% 0.20/0.47  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.20/0.47  % done 34 iterations in 0.018s
% 0.20/0.47  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.20/0.47  % SZS output start Refutation
% 0.20/0.47  thf(k4_xboole_0_type, type, k4_xboole_0: $i > $i > $i).
% 0.20/0.47  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 0.20/0.47  thf(k3_xboole_0_type, type, k3_xboole_0: $i > $i > $i).
% 0.20/0.47  thf(sk_B_type, type, sk_B: $i).
% 0.20/0.47  thf(sk_C_type, type, sk_C: $i).
% 0.20/0.47  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.20/0.47  thf(sk_A_type, type, sk_A: $i).
% 0.20/0.47  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 0.20/0.47  thf(k7_relat_1_type, type, k7_relat_1: $i > $i > $i).
% 0.20/0.47  thf(t100_relat_1, axiom,
% 0.20/0.47    (![A:$i,B:$i,C:$i]:
% 0.20/0.47     ( ( v1_relat_1 @ C ) =>
% 0.20/0.47       ( ( k7_relat_1 @ ( k7_relat_1 @ C @ A ) @ B ) =
% 0.20/0.47         ( k7_relat_1 @ C @ ( k3_xboole_0 @ A @ B ) ) ) ))).
% 0.20/0.47  thf('0', plain,
% 0.20/0.47      (![X11 : $i, X12 : $i, X13 : $i]:
% 0.20/0.47         (((k7_relat_1 @ (k7_relat_1 @ X11 @ X12) @ X13)
% 0.20/0.47            = (k7_relat_1 @ X11 @ (k3_xboole_0 @ X12 @ X13)))
% 0.20/0.47          | ~ (v1_relat_1 @ X11))),
% 0.20/0.47      inference('cnf', [status(esa)], [t100_relat_1])).
% 0.20/0.47  thf(t102_relat_1, conjecture,
% 0.20/0.47    (![A:$i,B:$i,C:$i]:
% 0.20/0.47     ( ( v1_relat_1 @ C ) =>
% 0.20/0.47       ( ( r1_tarski @ A @ B ) =>
% 0.20/0.47         ( ( k7_relat_1 @ ( k7_relat_1 @ C @ A ) @ B ) = ( k7_relat_1 @ C @ A ) ) ) ))).
% 0.20/0.47  thf(zf_stmt_0, negated_conjecture,
% 0.20/0.47    (~( ![A:$i,B:$i,C:$i]:
% 0.20/0.47        ( ( v1_relat_1 @ C ) =>
% 0.20/0.47          ( ( r1_tarski @ A @ B ) =>
% 0.20/0.47            ( ( k7_relat_1 @ ( k7_relat_1 @ C @ A ) @ B ) =
% 0.20/0.47              ( k7_relat_1 @ C @ A ) ) ) ) )),
% 0.20/0.47    inference('cnf.neg', [status(esa)], [t102_relat_1])).
% 0.20/0.47  thf('1', plain,
% 0.20/0.47      (((k7_relat_1 @ (k7_relat_1 @ sk_C @ sk_A) @ sk_B)
% 0.20/0.47         != (k7_relat_1 @ sk_C @ sk_A))),
% 0.20/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.47  thf('2', plain,
% 0.20/0.47      ((((k7_relat_1 @ sk_C @ (k3_xboole_0 @ sk_A @ sk_B))
% 0.20/0.47          != (k7_relat_1 @ sk_C @ sk_A))
% 0.20/0.47        | ~ (v1_relat_1 @ sk_C))),
% 0.20/0.47      inference('sup-', [status(thm)], ['0', '1'])).
% 0.20/0.47  thf('3', plain, ((r1_tarski @ sk_A @ sk_B)),
% 0.20/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.47  thf(l32_xboole_1, axiom,
% 0.20/0.47    (![A:$i,B:$i]:
% 0.20/0.47     ( ( ( k4_xboole_0 @ A @ B ) = ( k1_xboole_0 ) ) <=> ( r1_tarski @ A @ B ) ))).
% 0.20/0.47  thf('4', plain,
% 0.20/0.47      (![X3 : $i, X5 : $i]:
% 0.20/0.47         (((k4_xboole_0 @ X3 @ X5) = (k1_xboole_0)) | ~ (r1_tarski @ X3 @ X5))),
% 0.20/0.47      inference('cnf', [status(esa)], [l32_xboole_1])).
% 0.20/0.47  thf('5', plain, (((k4_xboole_0 @ sk_A @ sk_B) = (k1_xboole_0))),
% 0.20/0.47      inference('sup-', [status(thm)], ['3', '4'])).
% 0.20/0.47  thf(t48_xboole_1, axiom,
% 0.20/0.47    (![A:$i,B:$i]:
% 0.20/0.47     ( ( k4_xboole_0 @ A @ ( k4_xboole_0 @ A @ B ) ) = ( k3_xboole_0 @ A @ B ) ))).
% 0.20/0.47  thf('6', plain,
% 0.20/0.47      (![X9 : $i, X10 : $i]:
% 0.20/0.47         ((k4_xboole_0 @ X9 @ (k4_xboole_0 @ X9 @ X10))
% 0.20/0.47           = (k3_xboole_0 @ X9 @ X10))),
% 0.20/0.47      inference('cnf', [status(esa)], [t48_xboole_1])).
% 0.20/0.47  thf('7', plain,
% 0.20/0.47      (((k4_xboole_0 @ sk_A @ k1_xboole_0) = (k3_xboole_0 @ sk_A @ sk_B))),
% 0.20/0.47      inference('sup+', [status(thm)], ['5', '6'])).
% 0.20/0.47  thf('8', plain, ((v1_relat_1 @ sk_C)),
% 0.20/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.47  thf('9', plain,
% 0.20/0.47      (((k7_relat_1 @ sk_C @ (k4_xboole_0 @ sk_A @ k1_xboole_0))
% 0.20/0.47         != (k7_relat_1 @ sk_C @ sk_A))),
% 0.20/0.47      inference('demod', [status(thm)], ['2', '7', '8'])).
% 0.20/0.47  thf(t2_boole, axiom,
% 0.20/0.47    (![A:$i]: ( ( k3_xboole_0 @ A @ k1_xboole_0 ) = ( k1_xboole_0 ) ))).
% 0.20/0.47  thf('10', plain,
% 0.20/0.47      (![X6 : $i]: ((k3_xboole_0 @ X6 @ k1_xboole_0) = (k1_xboole_0))),
% 0.20/0.47      inference('cnf', [status(esa)], [t2_boole])).
% 0.20/0.47  thf('11', plain,
% 0.20/0.47      (![X9 : $i, X10 : $i]:
% 0.20/0.47         ((k4_xboole_0 @ X9 @ (k4_xboole_0 @ X9 @ X10))
% 0.20/0.47           = (k3_xboole_0 @ X9 @ X10))),
% 0.20/0.47      inference('cnf', [status(esa)], [t48_xboole_1])).
% 0.20/0.47  thf('12', plain,
% 0.20/0.47      (![X3 : $i, X4 : $i]:
% 0.20/0.47         ((r1_tarski @ X3 @ X4) | ((k4_xboole_0 @ X3 @ X4) != (k1_xboole_0)))),
% 0.20/0.47      inference('cnf', [status(esa)], [l32_xboole_1])).
% 0.20/0.47  thf('13', plain,
% 0.20/0.47      (![X0 : $i, X1 : $i]:
% 0.20/0.47         (((k3_xboole_0 @ X1 @ X0) != (k1_xboole_0))
% 0.20/0.47          | (r1_tarski @ X1 @ (k4_xboole_0 @ X1 @ X0)))),
% 0.20/0.47      inference('sup-', [status(thm)], ['11', '12'])).
% 0.20/0.47  thf('14', plain,
% 0.20/0.47      (![X0 : $i]:
% 0.20/0.47         (((k1_xboole_0) != (k1_xboole_0))
% 0.20/0.47          | (r1_tarski @ X0 @ (k4_xboole_0 @ X0 @ k1_xboole_0)))),
% 0.20/0.47      inference('sup-', [status(thm)], ['10', '13'])).
% 0.20/0.47  thf('15', plain,
% 0.20/0.47      (![X0 : $i]: (r1_tarski @ X0 @ (k4_xboole_0 @ X0 @ k1_xboole_0))),
% 0.20/0.47      inference('simplify', [status(thm)], ['14'])).
% 0.20/0.47  thf(d10_xboole_0, axiom,
% 0.20/0.47    (![A:$i,B:$i]:
% 0.20/0.47     ( ( ( A ) = ( B ) ) <=> ( ( r1_tarski @ A @ B ) & ( r1_tarski @ B @ A ) ) ))).
% 0.20/0.47  thf('16', plain,
% 0.20/0.47      (![X0 : $i, X2 : $i]:
% 0.20/0.47         (((X0) = (X2)) | ~ (r1_tarski @ X2 @ X0) | ~ (r1_tarski @ X0 @ X2))),
% 0.20/0.47      inference('cnf', [status(esa)], [d10_xboole_0])).
% 0.20/0.47  thf('17', plain,
% 0.20/0.47      (![X0 : $i]:
% 0.20/0.47         (~ (r1_tarski @ (k4_xboole_0 @ X0 @ k1_xboole_0) @ X0)
% 0.20/0.47          | ((k4_xboole_0 @ X0 @ k1_xboole_0) = (X0)))),
% 0.20/0.47      inference('sup-', [status(thm)], ['15', '16'])).
% 0.20/0.47  thf(t36_xboole_1, axiom,
% 0.20/0.47    (![A:$i,B:$i]: ( r1_tarski @ ( k4_xboole_0 @ A @ B ) @ A ))).
% 0.20/0.47  thf('18', plain,
% 0.20/0.47      (![X7 : $i, X8 : $i]: (r1_tarski @ (k4_xboole_0 @ X7 @ X8) @ X7)),
% 0.20/0.47      inference('cnf', [status(esa)], [t36_xboole_1])).
% 0.20/0.47  thf('19', plain, (![X0 : $i]: ((k4_xboole_0 @ X0 @ k1_xboole_0) = (X0))),
% 0.20/0.47      inference('demod', [status(thm)], ['17', '18'])).
% 0.20/0.47  thf('20', plain,
% 0.20/0.47      (((k7_relat_1 @ sk_C @ sk_A) != (k7_relat_1 @ sk_C @ sk_A))),
% 0.20/0.47      inference('demod', [status(thm)], ['9', '19'])).
% 0.20/0.47  thf('21', plain, ($false), inference('simplify', [status(thm)], ['20'])).
% 0.20/0.47  
% 0.20/0.47  % SZS output end Refutation
% 0.20/0.47  
% 0.20/0.48  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
