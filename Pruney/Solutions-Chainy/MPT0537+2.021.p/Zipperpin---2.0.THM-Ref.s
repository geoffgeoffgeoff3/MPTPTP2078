%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.hY0Lkar1FK

% Computer   : n018.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:41:49 EST 2020

% Result     : Theorem 0.22s
% Output     : Refutation 0.22s
% Verified   : 
% Statistics : Number of formulae       :   22 (  24 expanded)
%              Number of leaves         :   10 (  11 expanded)
%              Depth                    :    7
%              Number of atoms          :  102 ( 116 expanded)
%              Number of equality atoms :   15 (  17 expanded)
%              Maximal formula depth    :    7 (   4 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(k8_relat_1_type,type,(
    k8_relat_1: $i > $i > $i )).

thf(k6_relat_1_type,type,(
    k6_relat_1: $i > $i )).

thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(k5_relat_1_type,type,(
    k5_relat_1: $i > $i > $i )).

thf(t62_relat_1,axiom,(
    ! [A: $i] :
      ( ( v1_relat_1 @ A )
     => ( ( ( k5_relat_1 @ k1_xboole_0 @ A )
          = k1_xboole_0 )
        & ( ( k5_relat_1 @ A @ k1_xboole_0 )
          = k1_xboole_0 ) ) ) )).

thf('0',plain,(
    ! [X2: $i] :
      ( ( ( k5_relat_1 @ X2 @ k1_xboole_0 )
        = k1_xboole_0 )
      | ~ ( v1_relat_1 @ X2 ) ) ),
    inference(cnf,[status(esa)],[t62_relat_1])).

thf(t81_relat_1,axiom,
    ( ( k6_relat_1 @ k1_xboole_0 )
    = k1_xboole_0 )).

thf('1',plain,
    ( ( k6_relat_1 @ k1_xboole_0 )
    = k1_xboole_0 ),
    inference(cnf,[status(esa)],[t81_relat_1])).

thf(t123_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ B )
     => ( ( k8_relat_1 @ A @ B )
        = ( k5_relat_1 @ B @ ( k6_relat_1 @ A ) ) ) ) )).

thf('2',plain,(
    ! [X0: $i,X1: $i] :
      ( ( ( k8_relat_1 @ X1 @ X0 )
        = ( k5_relat_1 @ X0 @ ( k6_relat_1 @ X1 ) ) )
      | ~ ( v1_relat_1 @ X0 ) ) ),
    inference(cnf,[status(esa)],[t123_relat_1])).

thf('3',plain,(
    ! [X0: $i] :
      ( ( ( k8_relat_1 @ k1_xboole_0 @ X0 )
        = ( k5_relat_1 @ X0 @ k1_xboole_0 ) )
      | ~ ( v1_relat_1 @ X0 ) ) ),
    inference('sup+',[status(thm)],['1','2'])).

thf('4',plain,(
    ! [X0: $i] :
      ( ( ( k8_relat_1 @ k1_xboole_0 @ X0 )
        = k1_xboole_0 )
      | ~ ( v1_relat_1 @ X0 )
      | ~ ( v1_relat_1 @ X0 ) ) ),
    inference('sup+',[status(thm)],['0','3'])).

thf('5',plain,(
    ! [X0: $i] :
      ( ~ ( v1_relat_1 @ X0 )
      | ( ( k8_relat_1 @ k1_xboole_0 @ X0 )
        = k1_xboole_0 ) ) ),
    inference(simplify,[status(thm)],['4'])).

thf(t137_relat_1,conjecture,(
    ! [A: $i] :
      ( ( v1_relat_1 @ A )
     => ( ( k8_relat_1 @ k1_xboole_0 @ A )
        = k1_xboole_0 ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i] :
        ( ( v1_relat_1 @ A )
       => ( ( k8_relat_1 @ k1_xboole_0 @ A )
          = k1_xboole_0 ) ) ),
    inference('cnf.neg',[status(esa)],[t137_relat_1])).

thf('6',plain,(
    ( k8_relat_1 @ k1_xboole_0 @ sk_A )
 != k1_xboole_0 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('7',plain,
    ( ( k1_xboole_0 != k1_xboole_0 )
    | ~ ( v1_relat_1 @ sk_A ) ),
    inference('sup-',[status(thm)],['5','6'])).

thf('8',plain,(
    v1_relat_1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('9',plain,(
    k1_xboole_0 != k1_xboole_0 ),
    inference(demod,[status(thm)],['7','8'])).

thf('10',plain,(
    $false ),
    inference(simplify,[status(thm)],['9'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.hY0Lkar1FK
% 0.14/0.34  % Computer   : n018.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % DateTime   : Tue Dec  1 18:43:27 EST 2020
% 0.14/0.35  % CPUTime    : 
% 0.14/0.35  % Running portfolio for 600 s
% 0.14/0.35  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.14/0.35  % Number of cores: 8
% 0.14/0.35  % Python version: Python 3.6.8
% 0.14/0.35  % Running in FO mode
% 0.22/0.46  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.22/0.46  % Solved by: fo/fo7.sh
% 0.22/0.46  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.22/0.46  % done 10 iterations in 0.010s
% 0.22/0.46  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.22/0.46  % SZS output start Refutation
% 0.22/0.46  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 0.22/0.46  thf(k8_relat_1_type, type, k8_relat_1: $i > $i > $i).
% 0.22/0.46  thf(k6_relat_1_type, type, k6_relat_1: $i > $i).
% 0.22/0.46  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 0.22/0.46  thf(sk_A_type, type, sk_A: $i).
% 0.22/0.46  thf(k5_relat_1_type, type, k5_relat_1: $i > $i > $i).
% 0.22/0.46  thf(t62_relat_1, axiom,
% 0.22/0.46    (![A:$i]:
% 0.22/0.46     ( ( v1_relat_1 @ A ) =>
% 0.22/0.46       ( ( ( k5_relat_1 @ k1_xboole_0 @ A ) = ( k1_xboole_0 ) ) & 
% 0.22/0.46         ( ( k5_relat_1 @ A @ k1_xboole_0 ) = ( k1_xboole_0 ) ) ) ))).
% 0.22/0.46  thf('0', plain,
% 0.22/0.46      (![X2 : $i]:
% 0.22/0.46         (((k5_relat_1 @ X2 @ k1_xboole_0) = (k1_xboole_0))
% 0.22/0.46          | ~ (v1_relat_1 @ X2))),
% 0.22/0.46      inference('cnf', [status(esa)], [t62_relat_1])).
% 0.22/0.46  thf(t81_relat_1, axiom, (( k6_relat_1 @ k1_xboole_0 ) = ( k1_xboole_0 ))).
% 0.22/0.46  thf('1', plain, (((k6_relat_1 @ k1_xboole_0) = (k1_xboole_0))),
% 0.22/0.46      inference('cnf', [status(esa)], [t81_relat_1])).
% 0.22/0.46  thf(t123_relat_1, axiom,
% 0.22/0.46    (![A:$i,B:$i]:
% 0.22/0.46     ( ( v1_relat_1 @ B ) =>
% 0.22/0.46       ( ( k8_relat_1 @ A @ B ) = ( k5_relat_1 @ B @ ( k6_relat_1 @ A ) ) ) ))).
% 0.22/0.46  thf('2', plain,
% 0.22/0.46      (![X0 : $i, X1 : $i]:
% 0.22/0.46         (((k8_relat_1 @ X1 @ X0) = (k5_relat_1 @ X0 @ (k6_relat_1 @ X1)))
% 0.22/0.46          | ~ (v1_relat_1 @ X0))),
% 0.22/0.46      inference('cnf', [status(esa)], [t123_relat_1])).
% 0.22/0.46  thf('3', plain,
% 0.22/0.46      (![X0 : $i]:
% 0.22/0.46         (((k8_relat_1 @ k1_xboole_0 @ X0) = (k5_relat_1 @ X0 @ k1_xboole_0))
% 0.22/0.46          | ~ (v1_relat_1 @ X0))),
% 0.22/0.46      inference('sup+', [status(thm)], ['1', '2'])).
% 0.22/0.46  thf('4', plain,
% 0.22/0.46      (![X0 : $i]:
% 0.22/0.46         (((k8_relat_1 @ k1_xboole_0 @ X0) = (k1_xboole_0))
% 0.22/0.46          | ~ (v1_relat_1 @ X0)
% 0.22/0.46          | ~ (v1_relat_1 @ X0))),
% 0.22/0.46      inference('sup+', [status(thm)], ['0', '3'])).
% 0.22/0.46  thf('5', plain,
% 0.22/0.46      (![X0 : $i]:
% 0.22/0.46         (~ (v1_relat_1 @ X0)
% 0.22/0.46          | ((k8_relat_1 @ k1_xboole_0 @ X0) = (k1_xboole_0)))),
% 0.22/0.46      inference('simplify', [status(thm)], ['4'])).
% 0.22/0.47  thf(t137_relat_1, conjecture,
% 0.22/0.47    (![A:$i]:
% 0.22/0.47     ( ( v1_relat_1 @ A ) =>
% 0.22/0.47       ( ( k8_relat_1 @ k1_xboole_0 @ A ) = ( k1_xboole_0 ) ) ))).
% 0.22/0.47  thf(zf_stmt_0, negated_conjecture,
% 0.22/0.47    (~( ![A:$i]:
% 0.22/0.47        ( ( v1_relat_1 @ A ) =>
% 0.22/0.47          ( ( k8_relat_1 @ k1_xboole_0 @ A ) = ( k1_xboole_0 ) ) ) )),
% 0.22/0.47    inference('cnf.neg', [status(esa)], [t137_relat_1])).
% 0.22/0.47  thf('6', plain, (((k8_relat_1 @ k1_xboole_0 @ sk_A) != (k1_xboole_0))),
% 0.22/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.47  thf('7', plain, ((((k1_xboole_0) != (k1_xboole_0)) | ~ (v1_relat_1 @ sk_A))),
% 0.22/0.47      inference('sup-', [status(thm)], ['5', '6'])).
% 0.22/0.47  thf('8', plain, ((v1_relat_1 @ sk_A)),
% 0.22/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.47  thf('9', plain, (((k1_xboole_0) != (k1_xboole_0))),
% 0.22/0.47      inference('demod', [status(thm)], ['7', '8'])).
% 0.22/0.47  thf('10', plain, ($false), inference('simplify', [status(thm)], ['9'])).
% 0.22/0.47  
% 0.22/0.47  % SZS output end Refutation
% 0.22/0.47  
% 0.22/0.48  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
