%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.BrVIbqR3jU

% Computer   : n025.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:48:25 EST 2020

% Result     : Theorem 0.21s
% Output     : Refutation 0.21s
% Verified   : 
% Statistics : Number of formulae       :   28 (  32 expanded)
%              Number of leaves         :   12 (  15 expanded)
%              Depth                    :    7
%              Number of atoms          :  154 ( 190 expanded)
%              Number of equality atoms :   19 (  23 expanded)
%              Maximal formula depth    :   10 (   5 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k4_xboole_0_type,type,(
    k4_xboole_0: $i > $i > $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(k2_wellord1_type,type,(
    k2_wellord1: $i > $i > $i )).

thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(k3_xboole_0_type,type,(
    k3_xboole_0: $i > $i > $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(t26_wellord1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( v1_relat_1 @ C )
     => ( ( k2_wellord1 @ ( k2_wellord1 @ C @ A ) @ B )
        = ( k2_wellord1 @ C @ ( k3_xboole_0 @ A @ B ) ) ) ) )).

thf('0',plain,(
    ! [X11: $i,X12: $i,X13: $i] :
      ( ( ( k2_wellord1 @ ( k2_wellord1 @ X11 @ X12 ) @ X13 )
        = ( k2_wellord1 @ X11 @ ( k3_xboole_0 @ X12 @ X13 ) ) )
      | ~ ( v1_relat_1 @ X11 ) ) ),
    inference(cnf,[status(esa)],[t26_wellord1])).

thf(t28_wellord1,conjecture,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ B )
     => ( ( k2_wellord1 @ ( k2_wellord1 @ B @ A ) @ A )
        = ( k2_wellord1 @ B @ A ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i] :
        ( ( v1_relat_1 @ B )
       => ( ( k2_wellord1 @ ( k2_wellord1 @ B @ A ) @ A )
          = ( k2_wellord1 @ B @ A ) ) ) ),
    inference('cnf.neg',[status(esa)],[t28_wellord1])).

thf('1',plain,(
    ( k2_wellord1 @ ( k2_wellord1 @ sk_B @ sk_A ) @ sk_A )
 != ( k2_wellord1 @ sk_B @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('2',plain,
    ( ( ( k2_wellord1 @ sk_B @ ( k3_xboole_0 @ sk_A @ sk_A ) )
     != ( k2_wellord1 @ sk_B @ sk_A ) )
    | ~ ( v1_relat_1 @ sk_B ) ),
    inference('sup-',[status(thm)],['0','1'])).

thf(t3_boole,axiom,(
    ! [A: $i] :
      ( ( k4_xboole_0 @ A @ k1_xboole_0 )
      = A ) )).

thf('3',plain,(
    ! [X1: $i] :
      ( ( k4_xboole_0 @ X1 @ k1_xboole_0 )
      = X1 ) ),
    inference(cnf,[status(esa)],[t3_boole])).

thf(t48_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k4_xboole_0 @ A @ ( k4_xboole_0 @ A @ B ) )
      = ( k3_xboole_0 @ A @ B ) ) )).

thf('4',plain,(
    ! [X2: $i,X3: $i] :
      ( ( k4_xboole_0 @ X2 @ ( k4_xboole_0 @ X2 @ X3 ) )
      = ( k3_xboole_0 @ X2 @ X3 ) ) ),
    inference(cnf,[status(esa)],[t48_xboole_1])).

thf('5',plain,(
    ! [X0: $i] :
      ( ( k4_xboole_0 @ X0 @ X0 )
      = ( k3_xboole_0 @ X0 @ k1_xboole_0 ) ) ),
    inference('sup+',[status(thm)],['3','4'])).

thf(t2_boole,axiom,(
    ! [A: $i] :
      ( ( k3_xboole_0 @ A @ k1_xboole_0 )
      = k1_xboole_0 ) )).

thf('6',plain,(
    ! [X0: $i] :
      ( ( k3_xboole_0 @ X0 @ k1_xboole_0 )
      = k1_xboole_0 ) ),
    inference(cnf,[status(esa)],[t2_boole])).

thf('7',plain,(
    ! [X0: $i] :
      ( ( k4_xboole_0 @ X0 @ X0 )
      = k1_xboole_0 ) ),
    inference(demod,[status(thm)],['5','6'])).

thf('8',plain,(
    ! [X2: $i,X3: $i] :
      ( ( k4_xboole_0 @ X2 @ ( k4_xboole_0 @ X2 @ X3 ) )
      = ( k3_xboole_0 @ X2 @ X3 ) ) ),
    inference(cnf,[status(esa)],[t48_xboole_1])).

thf('9',plain,(
    ! [X0: $i] :
      ( ( k4_xboole_0 @ X0 @ k1_xboole_0 )
      = ( k3_xboole_0 @ X0 @ X0 ) ) ),
    inference('sup+',[status(thm)],['7','8'])).

thf('10',plain,(
    ! [X1: $i] :
      ( ( k4_xboole_0 @ X1 @ k1_xboole_0 )
      = X1 ) ),
    inference(cnf,[status(esa)],[t3_boole])).

thf('11',plain,(
    ! [X0: $i] :
      ( X0
      = ( k3_xboole_0 @ X0 @ X0 ) ) ),
    inference(demod,[status(thm)],['9','10'])).

thf('12',plain,(
    v1_relat_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('13',plain,(
    ( k2_wellord1 @ sk_B @ sk_A )
 != ( k2_wellord1 @ sk_B @ sk_A ) ),
    inference(demod,[status(thm)],['2','11','12'])).

thf('14',plain,(
    $false ),
    inference(simplify,[status(thm)],['13'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.BrVIbqR3jU
% 0.13/0.35  % Computer   : n025.cluster.edu
% 0.13/0.35  % Model      : x86_64 x86_64
% 0.13/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.35  % Memory     : 8042.1875MB
% 0.13/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.35  % CPULimit   : 60
% 0.13/0.35  % DateTime   : Tue Dec  1 15:15:51 EST 2020
% 0.13/0.35  % CPUTime    : 
% 0.13/0.35  % Running portfolio for 600 s
% 0.13/0.35  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.20/0.35  % Number of cores: 8
% 0.20/0.35  % Python version: Python 3.6.8
% 0.20/0.36  % Running in FO mode
% 0.21/0.48  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.21/0.48  % Solved by: fo/fo7.sh
% 0.21/0.48  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.21/0.48  % done 19 iterations in 0.013s
% 0.21/0.48  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.21/0.48  % SZS output start Refutation
% 0.21/0.48  thf(k4_xboole_0_type, type, k4_xboole_0: $i > $i > $i).
% 0.21/0.48  thf(sk_A_type, type, sk_A: $i).
% 0.21/0.48  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 0.21/0.48  thf(k2_wellord1_type, type, k2_wellord1: $i > $i > $i).
% 0.21/0.48  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 0.21/0.48  thf(k3_xboole_0_type, type, k3_xboole_0: $i > $i > $i).
% 0.21/0.48  thf(sk_B_type, type, sk_B: $i).
% 0.21/0.48  thf(t26_wellord1, axiom,
% 0.21/0.48    (![A:$i,B:$i,C:$i]:
% 0.21/0.48     ( ( v1_relat_1 @ C ) =>
% 0.21/0.48       ( ( k2_wellord1 @ ( k2_wellord1 @ C @ A ) @ B ) =
% 0.21/0.48         ( k2_wellord1 @ C @ ( k3_xboole_0 @ A @ B ) ) ) ))).
% 0.21/0.48  thf('0', plain,
% 0.21/0.48      (![X11 : $i, X12 : $i, X13 : $i]:
% 0.21/0.48         (((k2_wellord1 @ (k2_wellord1 @ X11 @ X12) @ X13)
% 0.21/0.48            = (k2_wellord1 @ X11 @ (k3_xboole_0 @ X12 @ X13)))
% 0.21/0.48          | ~ (v1_relat_1 @ X11))),
% 0.21/0.48      inference('cnf', [status(esa)], [t26_wellord1])).
% 0.21/0.48  thf(t28_wellord1, conjecture,
% 0.21/0.48    (![A:$i,B:$i]:
% 0.21/0.48     ( ( v1_relat_1 @ B ) =>
% 0.21/0.48       ( ( k2_wellord1 @ ( k2_wellord1 @ B @ A ) @ A ) =
% 0.21/0.48         ( k2_wellord1 @ B @ A ) ) ))).
% 0.21/0.48  thf(zf_stmt_0, negated_conjecture,
% 0.21/0.48    (~( ![A:$i,B:$i]:
% 0.21/0.48        ( ( v1_relat_1 @ B ) =>
% 0.21/0.48          ( ( k2_wellord1 @ ( k2_wellord1 @ B @ A ) @ A ) =
% 0.21/0.48            ( k2_wellord1 @ B @ A ) ) ) )),
% 0.21/0.48    inference('cnf.neg', [status(esa)], [t28_wellord1])).
% 0.21/0.48  thf('1', plain,
% 0.21/0.48      (((k2_wellord1 @ (k2_wellord1 @ sk_B @ sk_A) @ sk_A)
% 0.21/0.48         != (k2_wellord1 @ sk_B @ sk_A))),
% 0.21/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.48  thf('2', plain,
% 0.21/0.48      ((((k2_wellord1 @ sk_B @ (k3_xboole_0 @ sk_A @ sk_A))
% 0.21/0.48          != (k2_wellord1 @ sk_B @ sk_A))
% 0.21/0.48        | ~ (v1_relat_1 @ sk_B))),
% 0.21/0.48      inference('sup-', [status(thm)], ['0', '1'])).
% 0.21/0.48  thf(t3_boole, axiom,
% 0.21/0.48    (![A:$i]: ( ( k4_xboole_0 @ A @ k1_xboole_0 ) = ( A ) ))).
% 0.21/0.48  thf('3', plain, (![X1 : $i]: ((k4_xboole_0 @ X1 @ k1_xboole_0) = (X1))),
% 0.21/0.48      inference('cnf', [status(esa)], [t3_boole])).
% 0.21/0.48  thf(t48_xboole_1, axiom,
% 0.21/0.48    (![A:$i,B:$i]:
% 0.21/0.48     ( ( k4_xboole_0 @ A @ ( k4_xboole_0 @ A @ B ) ) = ( k3_xboole_0 @ A @ B ) ))).
% 0.21/0.48  thf('4', plain,
% 0.21/0.48      (![X2 : $i, X3 : $i]:
% 0.21/0.48         ((k4_xboole_0 @ X2 @ (k4_xboole_0 @ X2 @ X3))
% 0.21/0.48           = (k3_xboole_0 @ X2 @ X3))),
% 0.21/0.48      inference('cnf', [status(esa)], [t48_xboole_1])).
% 0.21/0.48  thf('5', plain,
% 0.21/0.48      (![X0 : $i]: ((k4_xboole_0 @ X0 @ X0) = (k3_xboole_0 @ X0 @ k1_xboole_0))),
% 0.21/0.48      inference('sup+', [status(thm)], ['3', '4'])).
% 0.21/0.48  thf(t2_boole, axiom,
% 0.21/0.48    (![A:$i]: ( ( k3_xboole_0 @ A @ k1_xboole_0 ) = ( k1_xboole_0 ) ))).
% 0.21/0.48  thf('6', plain,
% 0.21/0.48      (![X0 : $i]: ((k3_xboole_0 @ X0 @ k1_xboole_0) = (k1_xboole_0))),
% 0.21/0.48      inference('cnf', [status(esa)], [t2_boole])).
% 0.21/0.48  thf('7', plain, (![X0 : $i]: ((k4_xboole_0 @ X0 @ X0) = (k1_xboole_0))),
% 0.21/0.48      inference('demod', [status(thm)], ['5', '6'])).
% 0.21/0.48  thf('8', plain,
% 0.21/0.48      (![X2 : $i, X3 : $i]:
% 0.21/0.48         ((k4_xboole_0 @ X2 @ (k4_xboole_0 @ X2 @ X3))
% 0.21/0.48           = (k3_xboole_0 @ X2 @ X3))),
% 0.21/0.48      inference('cnf', [status(esa)], [t48_xboole_1])).
% 0.21/0.48  thf('9', plain,
% 0.21/0.48      (![X0 : $i]: ((k4_xboole_0 @ X0 @ k1_xboole_0) = (k3_xboole_0 @ X0 @ X0))),
% 0.21/0.48      inference('sup+', [status(thm)], ['7', '8'])).
% 0.21/0.48  thf('10', plain, (![X1 : $i]: ((k4_xboole_0 @ X1 @ k1_xboole_0) = (X1))),
% 0.21/0.48      inference('cnf', [status(esa)], [t3_boole])).
% 0.21/0.48  thf('11', plain, (![X0 : $i]: ((X0) = (k3_xboole_0 @ X0 @ X0))),
% 0.21/0.48      inference('demod', [status(thm)], ['9', '10'])).
% 0.21/0.48  thf('12', plain, ((v1_relat_1 @ sk_B)),
% 0.21/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.48  thf('13', plain,
% 0.21/0.48      (((k2_wellord1 @ sk_B @ sk_A) != (k2_wellord1 @ sk_B @ sk_A))),
% 0.21/0.48      inference('demod', [status(thm)], ['2', '11', '12'])).
% 0.21/0.48  thf('14', plain, ($false), inference('simplify', [status(thm)], ['13'])).
% 0.21/0.48  
% 0.21/0.48  % SZS output end Refutation
% 0.21/0.48  
% 0.21/0.49  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
