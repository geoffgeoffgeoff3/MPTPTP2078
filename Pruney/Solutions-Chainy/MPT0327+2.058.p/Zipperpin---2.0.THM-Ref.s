%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.uKN0UW6ncm

% Computer   : n014.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:35:57 EST 2020

% Result     : Theorem 0.21s
% Output     : Refutation 0.21s
% Verified   : 
% Statistics : Number of formulae       :   33 (  36 expanded)
%              Number of leaves         :   15 (  17 expanded)
%              Depth                    :    7
%              Number of atoms          :  205 ( 238 expanded)
%              Number of equality atoms :   18 (  21 expanded)
%              Maximal formula depth    :   10 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(sk_A_type,type,(
    sk_A: $i )).

thf(k5_xboole_0_type,type,(
    k5_xboole_0: $i > $i > $i )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(k1_tarski_type,type,(
    k1_tarski: $i > $i )).

thf(k4_xboole_0_type,type,(
    k4_xboole_0: $i > $i > $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(k2_xboole_0_type,type,(
    k2_xboole_0: $i > $i > $i )).

thf(t140_zfmisc_1,conjecture,(
    ! [A: $i,B: $i] :
      ( ( r2_hidden @ A @ B )
     => ( ( k2_xboole_0 @ ( k4_xboole_0 @ B @ ( k1_tarski @ A ) ) @ ( k1_tarski @ A ) )
        = B ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i] :
        ( ( r2_hidden @ A @ B )
       => ( ( k2_xboole_0 @ ( k4_xboole_0 @ B @ ( k1_tarski @ A ) ) @ ( k1_tarski @ A ) )
          = B ) ) ),
    inference('cnf.neg',[status(esa)],[t140_zfmisc_1])).

thf('0',plain,(
    r2_hidden @ sk_A @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(l1_zfmisc_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_tarski @ ( k1_tarski @ A ) @ B )
    <=> ( r2_hidden @ A @ B ) ) )).

thf('1',plain,(
    ! [X22: $i,X24: $i] :
      ( ( r1_tarski @ ( k1_tarski @ X22 ) @ X24 )
      | ~ ( r2_hidden @ X22 @ X24 ) ) ),
    inference(cnf,[status(esa)],[l1_zfmisc_1])).

thf('2',plain,(
    r1_tarski @ ( k1_tarski @ sk_A ) @ sk_B ),
    inference('sup-',[status(thm)],['0','1'])).

thf(t45_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_tarski @ A @ B )
     => ( B
        = ( k2_xboole_0 @ A @ ( k4_xboole_0 @ B @ A ) ) ) ) )).

thf('3',plain,(
    ! [X8: $i,X9: $i] :
      ( ( X9
        = ( k2_xboole_0 @ X8 @ ( k4_xboole_0 @ X9 @ X8 ) ) )
      | ~ ( r1_tarski @ X8 @ X9 ) ) ),
    inference(cnf,[status(esa)],[t45_xboole_1])).

thf('4',plain,
    ( sk_B
    = ( k2_xboole_0 @ ( k1_tarski @ sk_A ) @ ( k4_xboole_0 @ sk_B @ ( k1_tarski @ sk_A ) ) ) ),
    inference('sup-',[status(thm)],['2','3'])).

thf(t40_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k4_xboole_0 @ ( k2_xboole_0 @ A @ B ) @ B )
      = ( k4_xboole_0 @ A @ B ) ) )).

thf('5',plain,(
    ! [X6: $i,X7: $i] :
      ( ( k4_xboole_0 @ ( k2_xboole_0 @ X6 @ X7 ) @ X7 )
      = ( k4_xboole_0 @ X6 @ X7 ) ) ),
    inference(cnf,[status(esa)],[t40_xboole_1])).

thf(t98_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k2_xboole_0 @ A @ B )
      = ( k5_xboole_0 @ A @ ( k4_xboole_0 @ B @ A ) ) ) )).

thf('6',plain,(
    ! [X10: $i,X11: $i] :
      ( ( k2_xboole_0 @ X10 @ X11 )
      = ( k5_xboole_0 @ X10 @ ( k4_xboole_0 @ X11 @ X10 ) ) ) ),
    inference(cnf,[status(esa)],[t98_xboole_1])).

thf('7',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k2_xboole_0 @ X0 @ ( k2_xboole_0 @ X1 @ X0 ) )
      = ( k5_xboole_0 @ X0 @ ( k4_xboole_0 @ X1 @ X0 ) ) ) ),
    inference('sup+',[status(thm)],['5','6'])).

thf('8',plain,(
    ! [X10: $i,X11: $i] :
      ( ( k2_xboole_0 @ X10 @ X11 )
      = ( k5_xboole_0 @ X10 @ ( k4_xboole_0 @ X11 @ X10 ) ) ) ),
    inference(cnf,[status(esa)],[t98_xboole_1])).

thf('9',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k2_xboole_0 @ X0 @ ( k2_xboole_0 @ X1 @ X0 ) )
      = ( k2_xboole_0 @ X0 @ X1 ) ) ),
    inference(demod,[status(thm)],['7','8'])).

thf('10',plain,
    ( ( k2_xboole_0 @ ( k4_xboole_0 @ sk_B @ ( k1_tarski @ sk_A ) ) @ sk_B )
    = ( k2_xboole_0 @ ( k4_xboole_0 @ sk_B @ ( k1_tarski @ sk_A ) ) @ ( k1_tarski @ sk_A ) ) ),
    inference('sup+',[status(thm)],['4','9'])).

thf(t36_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( r1_tarski @ ( k4_xboole_0 @ A @ B ) @ A ) )).

thf('11',plain,(
    ! [X4: $i,X5: $i] :
      ( r1_tarski @ ( k4_xboole_0 @ X4 @ X5 ) @ X4 ) ),
    inference(cnf,[status(esa)],[t36_xboole_1])).

thf(t12_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_tarski @ A @ B )
     => ( ( k2_xboole_0 @ A @ B )
        = B ) ) )).

thf('12',plain,(
    ! [X2: $i,X3: $i] :
      ( ( ( k2_xboole_0 @ X3 @ X2 )
        = X2 )
      | ~ ( r1_tarski @ X3 @ X2 ) ) ),
    inference(cnf,[status(esa)],[t12_xboole_1])).

thf('13',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k2_xboole_0 @ ( k4_xboole_0 @ X0 @ X1 ) @ X0 )
      = X0 ) ),
    inference('sup-',[status(thm)],['11','12'])).

thf('14',plain,
    ( sk_B
    = ( k2_xboole_0 @ ( k4_xboole_0 @ sk_B @ ( k1_tarski @ sk_A ) ) @ ( k1_tarski @ sk_A ) ) ),
    inference(demod,[status(thm)],['10','13'])).

thf('15',plain,(
    ( k2_xboole_0 @ ( k4_xboole_0 @ sk_B @ ( k1_tarski @ sk_A ) ) @ ( k1_tarski @ sk_A ) )
 != sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('16',plain,(
    $false ),
    inference('simplify_reflect-',[status(thm)],['14','15'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.06/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.06/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.uKN0UW6ncm
% 0.14/0.34  % Computer   : n014.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % DateTime   : Tue Dec  1 19:59:07 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.34  % Running portfolio for 600 s
% 0.14/0.34  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.14/0.34  % Number of cores: 8
% 0.14/0.35  % Python version: Python 3.6.8
% 0.14/0.35  % Running in FO mode
% 0.21/0.48  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.21/0.48  % Solved by: fo/fo7.sh
% 0.21/0.48  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.21/0.48  % done 46 iterations in 0.034s
% 0.21/0.48  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.21/0.48  % SZS output start Refutation
% 0.21/0.48  thf(sk_A_type, type, sk_A: $i).
% 0.21/0.48  thf(k5_xboole_0_type, type, k5_xboole_0: $i > $i > $i).
% 0.21/0.48  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.21/0.48  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.21/0.48  thf(k1_tarski_type, type, k1_tarski: $i > $i).
% 0.21/0.48  thf(k4_xboole_0_type, type, k4_xboole_0: $i > $i > $i).
% 0.21/0.48  thf(sk_B_type, type, sk_B: $i).
% 0.21/0.48  thf(k2_xboole_0_type, type, k2_xboole_0: $i > $i > $i).
% 0.21/0.48  thf(t140_zfmisc_1, conjecture,
% 0.21/0.48    (![A:$i,B:$i]:
% 0.21/0.48     ( ( r2_hidden @ A @ B ) =>
% 0.21/0.48       ( ( k2_xboole_0 @
% 0.21/0.48           ( k4_xboole_0 @ B @ ( k1_tarski @ A ) ) @ ( k1_tarski @ A ) ) =
% 0.21/0.48         ( B ) ) ))).
% 0.21/0.48  thf(zf_stmt_0, negated_conjecture,
% 0.21/0.48    (~( ![A:$i,B:$i]:
% 0.21/0.48        ( ( r2_hidden @ A @ B ) =>
% 0.21/0.48          ( ( k2_xboole_0 @
% 0.21/0.48              ( k4_xboole_0 @ B @ ( k1_tarski @ A ) ) @ ( k1_tarski @ A ) ) =
% 0.21/0.48            ( B ) ) ) )),
% 0.21/0.48    inference('cnf.neg', [status(esa)], [t140_zfmisc_1])).
% 0.21/0.48  thf('0', plain, ((r2_hidden @ sk_A @ sk_B)),
% 0.21/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.48  thf(l1_zfmisc_1, axiom,
% 0.21/0.48    (![A:$i,B:$i]:
% 0.21/0.48     ( ( r1_tarski @ ( k1_tarski @ A ) @ B ) <=> ( r2_hidden @ A @ B ) ))).
% 0.21/0.48  thf('1', plain,
% 0.21/0.48      (![X22 : $i, X24 : $i]:
% 0.21/0.48         ((r1_tarski @ (k1_tarski @ X22) @ X24) | ~ (r2_hidden @ X22 @ X24))),
% 0.21/0.48      inference('cnf', [status(esa)], [l1_zfmisc_1])).
% 0.21/0.48  thf('2', plain, ((r1_tarski @ (k1_tarski @ sk_A) @ sk_B)),
% 0.21/0.48      inference('sup-', [status(thm)], ['0', '1'])).
% 0.21/0.48  thf(t45_xboole_1, axiom,
% 0.21/0.48    (![A:$i,B:$i]:
% 0.21/0.48     ( ( r1_tarski @ A @ B ) =>
% 0.21/0.48       ( ( B ) = ( k2_xboole_0 @ A @ ( k4_xboole_0 @ B @ A ) ) ) ))).
% 0.21/0.48  thf('3', plain,
% 0.21/0.48      (![X8 : $i, X9 : $i]:
% 0.21/0.48         (((X9) = (k2_xboole_0 @ X8 @ (k4_xboole_0 @ X9 @ X8)))
% 0.21/0.48          | ~ (r1_tarski @ X8 @ X9))),
% 0.21/0.48      inference('cnf', [status(esa)], [t45_xboole_1])).
% 0.21/0.48  thf('4', plain,
% 0.21/0.48      (((sk_B)
% 0.21/0.48         = (k2_xboole_0 @ (k1_tarski @ sk_A) @ 
% 0.21/0.48            (k4_xboole_0 @ sk_B @ (k1_tarski @ sk_A))))),
% 0.21/0.48      inference('sup-', [status(thm)], ['2', '3'])).
% 0.21/0.48  thf(t40_xboole_1, axiom,
% 0.21/0.48    (![A:$i,B:$i]:
% 0.21/0.48     ( ( k4_xboole_0 @ ( k2_xboole_0 @ A @ B ) @ B ) = ( k4_xboole_0 @ A @ B ) ))).
% 0.21/0.48  thf('5', plain,
% 0.21/0.48      (![X6 : $i, X7 : $i]:
% 0.21/0.48         ((k4_xboole_0 @ (k2_xboole_0 @ X6 @ X7) @ X7)
% 0.21/0.48           = (k4_xboole_0 @ X6 @ X7))),
% 0.21/0.48      inference('cnf', [status(esa)], [t40_xboole_1])).
% 0.21/0.48  thf(t98_xboole_1, axiom,
% 0.21/0.48    (![A:$i,B:$i]:
% 0.21/0.48     ( ( k2_xboole_0 @ A @ B ) = ( k5_xboole_0 @ A @ ( k4_xboole_0 @ B @ A ) ) ))).
% 0.21/0.48  thf('6', plain,
% 0.21/0.48      (![X10 : $i, X11 : $i]:
% 0.21/0.48         ((k2_xboole_0 @ X10 @ X11)
% 0.21/0.48           = (k5_xboole_0 @ X10 @ (k4_xboole_0 @ X11 @ X10)))),
% 0.21/0.48      inference('cnf', [status(esa)], [t98_xboole_1])).
% 0.21/0.48  thf('7', plain,
% 0.21/0.48      (![X0 : $i, X1 : $i]:
% 0.21/0.48         ((k2_xboole_0 @ X0 @ (k2_xboole_0 @ X1 @ X0))
% 0.21/0.48           = (k5_xboole_0 @ X0 @ (k4_xboole_0 @ X1 @ X0)))),
% 0.21/0.48      inference('sup+', [status(thm)], ['5', '6'])).
% 0.21/0.48  thf('8', plain,
% 0.21/0.48      (![X10 : $i, X11 : $i]:
% 0.21/0.48         ((k2_xboole_0 @ X10 @ X11)
% 0.21/0.48           = (k5_xboole_0 @ X10 @ (k4_xboole_0 @ X11 @ X10)))),
% 0.21/0.48      inference('cnf', [status(esa)], [t98_xboole_1])).
% 0.21/0.48  thf('9', plain,
% 0.21/0.48      (![X0 : $i, X1 : $i]:
% 0.21/0.48         ((k2_xboole_0 @ X0 @ (k2_xboole_0 @ X1 @ X0))
% 0.21/0.48           = (k2_xboole_0 @ X0 @ X1))),
% 0.21/0.48      inference('demod', [status(thm)], ['7', '8'])).
% 0.21/0.48  thf('10', plain,
% 0.21/0.48      (((k2_xboole_0 @ (k4_xboole_0 @ sk_B @ (k1_tarski @ sk_A)) @ sk_B)
% 0.21/0.48         = (k2_xboole_0 @ (k4_xboole_0 @ sk_B @ (k1_tarski @ sk_A)) @ 
% 0.21/0.48            (k1_tarski @ sk_A)))),
% 0.21/0.48      inference('sup+', [status(thm)], ['4', '9'])).
% 0.21/0.48  thf(t36_xboole_1, axiom,
% 0.21/0.48    (![A:$i,B:$i]: ( r1_tarski @ ( k4_xboole_0 @ A @ B ) @ A ))).
% 0.21/0.48  thf('11', plain,
% 0.21/0.48      (![X4 : $i, X5 : $i]: (r1_tarski @ (k4_xboole_0 @ X4 @ X5) @ X4)),
% 0.21/0.48      inference('cnf', [status(esa)], [t36_xboole_1])).
% 0.21/0.48  thf(t12_xboole_1, axiom,
% 0.21/0.48    (![A:$i,B:$i]:
% 0.21/0.48     ( ( r1_tarski @ A @ B ) => ( ( k2_xboole_0 @ A @ B ) = ( B ) ) ))).
% 0.21/0.48  thf('12', plain,
% 0.21/0.48      (![X2 : $i, X3 : $i]:
% 0.21/0.48         (((k2_xboole_0 @ X3 @ X2) = (X2)) | ~ (r1_tarski @ X3 @ X2))),
% 0.21/0.48      inference('cnf', [status(esa)], [t12_xboole_1])).
% 0.21/0.48  thf('13', plain,
% 0.21/0.48      (![X0 : $i, X1 : $i]:
% 0.21/0.48         ((k2_xboole_0 @ (k4_xboole_0 @ X0 @ X1) @ X0) = (X0))),
% 0.21/0.48      inference('sup-', [status(thm)], ['11', '12'])).
% 0.21/0.48  thf('14', plain,
% 0.21/0.48      (((sk_B)
% 0.21/0.48         = (k2_xboole_0 @ (k4_xboole_0 @ sk_B @ (k1_tarski @ sk_A)) @ 
% 0.21/0.48            (k1_tarski @ sk_A)))),
% 0.21/0.48      inference('demod', [status(thm)], ['10', '13'])).
% 0.21/0.48  thf('15', plain,
% 0.21/0.48      (((k2_xboole_0 @ (k4_xboole_0 @ sk_B @ (k1_tarski @ sk_A)) @ 
% 0.21/0.48         (k1_tarski @ sk_A)) != (sk_B))),
% 0.21/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.48  thf('16', plain, ($false),
% 0.21/0.48      inference('simplify_reflect-', [status(thm)], ['14', '15'])).
% 0.21/0.48  
% 0.21/0.48  % SZS output end Refutation
% 0.21/0.48  
% 0.21/0.49  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
