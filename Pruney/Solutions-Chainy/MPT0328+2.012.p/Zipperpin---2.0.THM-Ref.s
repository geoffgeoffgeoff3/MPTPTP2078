%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.Rbe158Eg7f

% Computer   : n004.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:35:59 EST 2020

% Result     : Theorem 0.21s
% Output     : Refutation 0.21s
% Verified   : 
% Statistics : Number of formulae       :   23 (  25 expanded)
%              Number of leaves         :   11 (  12 expanded)
%              Depth                    :    7
%              Number of atoms          :  129 ( 153 expanded)
%              Number of equality atoms :   12 (  14 expanded)
%              Maximal formula depth    :   10 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k2_xboole_0_type,type,(
    k2_xboole_0: $i > $i > $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(r1_xboole_0_type,type,(
    r1_xboole_0: $i > $i > $o )).

thf(k4_xboole_0_type,type,(
    k4_xboole_0: $i > $i > $i )).

thf(k1_tarski_type,type,(
    k1_tarski: $i > $i )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(t141_zfmisc_1,conjecture,(
    ! [A: $i,B: $i] :
      ( ~ ( r2_hidden @ A @ B )
     => ( ( k4_xboole_0 @ ( k2_xboole_0 @ B @ ( k1_tarski @ A ) ) @ ( k1_tarski @ A ) )
        = B ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i] :
        ( ~ ( r2_hidden @ A @ B )
       => ( ( k4_xboole_0 @ ( k2_xboole_0 @ B @ ( k1_tarski @ A ) ) @ ( k1_tarski @ A ) )
          = B ) ) ),
    inference('cnf.neg',[status(esa)],[t141_zfmisc_1])).

thf('0',plain,(
    ~ ( r2_hidden @ sk_A @ sk_B ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t65_zfmisc_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( ( k4_xboole_0 @ A @ ( k1_tarski @ B ) )
        = A )
    <=> ~ ( r2_hidden @ B @ A ) ) )).

thf('1',plain,(
    ! [X38: $i,X39: $i] :
      ( ( ( k4_xboole_0 @ X38 @ ( k1_tarski @ X39 ) )
        = X38 )
      | ( r2_hidden @ X39 @ X38 ) ) ),
    inference(cnf,[status(esa)],[t65_zfmisc_1])).

thf(t83_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_xboole_0 @ A @ B )
    <=> ( ( k4_xboole_0 @ A @ B )
        = A ) ) )).

thf('2',plain,(
    ! [X2: $i,X4: $i] :
      ( ( r1_xboole_0 @ X2 @ X4 )
      | ( ( k4_xboole_0 @ X2 @ X4 )
       != X2 ) ) ),
    inference(cnf,[status(esa)],[t83_xboole_1])).

thf('3',plain,(
    ! [X0: $i,X1: $i] :
      ( ( X0 != X0 )
      | ( r2_hidden @ X1 @ X0 )
      | ( r1_xboole_0 @ X0 @ ( k1_tarski @ X1 ) ) ) ),
    inference('sup-',[status(thm)],['1','2'])).

thf('4',plain,(
    ! [X0: $i,X1: $i] :
      ( ( r1_xboole_0 @ X0 @ ( k1_tarski @ X1 ) )
      | ( r2_hidden @ X1 @ X0 ) ) ),
    inference(simplify,[status(thm)],['3'])).

thf(t88_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_xboole_0 @ A @ B )
     => ( ( k4_xboole_0 @ ( k2_xboole_0 @ A @ B ) @ B )
        = A ) ) )).

thf('5',plain,(
    ! [X5: $i,X6: $i] :
      ( ( ( k4_xboole_0 @ ( k2_xboole_0 @ X5 @ X6 ) @ X6 )
        = X5 )
      | ~ ( r1_xboole_0 @ X5 @ X6 ) ) ),
    inference(cnf,[status(esa)],[t88_xboole_1])).

thf('6',plain,(
    ! [X0: $i,X1: $i] :
      ( ( r2_hidden @ X0 @ X1 )
      | ( ( k4_xboole_0 @ ( k2_xboole_0 @ X1 @ ( k1_tarski @ X0 ) ) @ ( k1_tarski @ X0 ) )
        = X1 ) ) ),
    inference('sup-',[status(thm)],['4','5'])).

thf('7',plain,(
    ( k4_xboole_0 @ ( k2_xboole_0 @ sk_B @ ( k1_tarski @ sk_A ) ) @ ( k1_tarski @ sk_A ) )
 != sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('8',plain,
    ( ( sk_B != sk_B )
    | ( r2_hidden @ sk_A @ sk_B ) ),
    inference('sup-',[status(thm)],['6','7'])).

thf('9',plain,(
    r2_hidden @ sk_A @ sk_B ),
    inference(simplify,[status(thm)],['8'])).

thf('10',plain,(
    $false ),
    inference(demod,[status(thm)],['0','9'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.00/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.12/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.Rbe158Eg7f
% 0.14/0.34  % Computer   : n004.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % DateTime   : Tue Dec  1 17:57:09 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.34  % Running portfolio for 600 s
% 0.14/0.34  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.14/0.34  % Number of cores: 8
% 0.14/0.35  % Python version: Python 3.6.8
% 0.14/0.35  % Running in FO mode
% 0.21/0.47  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.21/0.47  % Solved by: fo/fo7.sh
% 0.21/0.47  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.21/0.47  % done 38 iterations in 0.020s
% 0.21/0.47  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.21/0.47  % SZS output start Refutation
% 0.21/0.47  thf(k2_xboole_0_type, type, k2_xboole_0: $i > $i > $i).
% 0.21/0.47  thf(sk_B_type, type, sk_B: $i).
% 0.21/0.47  thf(sk_A_type, type, sk_A: $i).
% 0.21/0.47  thf(r1_xboole_0_type, type, r1_xboole_0: $i > $i > $o).
% 0.21/0.47  thf(k4_xboole_0_type, type, k4_xboole_0: $i > $i > $i).
% 0.21/0.47  thf(k1_tarski_type, type, k1_tarski: $i > $i).
% 0.21/0.47  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.21/0.47  thf(t141_zfmisc_1, conjecture,
% 0.21/0.47    (![A:$i,B:$i]:
% 0.21/0.47     ( ( ~( r2_hidden @ A @ B ) ) =>
% 0.21/0.47       ( ( k4_xboole_0 @
% 0.21/0.47           ( k2_xboole_0 @ B @ ( k1_tarski @ A ) ) @ ( k1_tarski @ A ) ) =
% 0.21/0.47         ( B ) ) ))).
% 0.21/0.47  thf(zf_stmt_0, negated_conjecture,
% 0.21/0.47    (~( ![A:$i,B:$i]:
% 0.21/0.47        ( ( ~( r2_hidden @ A @ B ) ) =>
% 0.21/0.47          ( ( k4_xboole_0 @
% 0.21/0.47              ( k2_xboole_0 @ B @ ( k1_tarski @ A ) ) @ ( k1_tarski @ A ) ) =
% 0.21/0.47            ( B ) ) ) )),
% 0.21/0.47    inference('cnf.neg', [status(esa)], [t141_zfmisc_1])).
% 0.21/0.47  thf('0', plain, (~ (r2_hidden @ sk_A @ sk_B)),
% 0.21/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.47  thf(t65_zfmisc_1, axiom,
% 0.21/0.47    (![A:$i,B:$i]:
% 0.21/0.47     ( ( ( k4_xboole_0 @ A @ ( k1_tarski @ B ) ) = ( A ) ) <=>
% 0.21/0.47       ( ~( r2_hidden @ B @ A ) ) ))).
% 0.21/0.47  thf('1', plain,
% 0.21/0.47      (![X38 : $i, X39 : $i]:
% 0.21/0.47         (((k4_xboole_0 @ X38 @ (k1_tarski @ X39)) = (X38))
% 0.21/0.47          | (r2_hidden @ X39 @ X38))),
% 0.21/0.47      inference('cnf', [status(esa)], [t65_zfmisc_1])).
% 0.21/0.47  thf(t83_xboole_1, axiom,
% 0.21/0.47    (![A:$i,B:$i]:
% 0.21/0.47     ( ( r1_xboole_0 @ A @ B ) <=> ( ( k4_xboole_0 @ A @ B ) = ( A ) ) ))).
% 0.21/0.47  thf('2', plain,
% 0.21/0.47      (![X2 : $i, X4 : $i]:
% 0.21/0.47         ((r1_xboole_0 @ X2 @ X4) | ((k4_xboole_0 @ X2 @ X4) != (X2)))),
% 0.21/0.47      inference('cnf', [status(esa)], [t83_xboole_1])).
% 0.21/0.47  thf('3', plain,
% 0.21/0.47      (![X0 : $i, X1 : $i]:
% 0.21/0.47         (((X0) != (X0))
% 0.21/0.47          | (r2_hidden @ X1 @ X0)
% 0.21/0.47          | (r1_xboole_0 @ X0 @ (k1_tarski @ X1)))),
% 0.21/0.47      inference('sup-', [status(thm)], ['1', '2'])).
% 0.21/0.47  thf('4', plain,
% 0.21/0.47      (![X0 : $i, X1 : $i]:
% 0.21/0.47         ((r1_xboole_0 @ X0 @ (k1_tarski @ X1)) | (r2_hidden @ X1 @ X0))),
% 0.21/0.47      inference('simplify', [status(thm)], ['3'])).
% 0.21/0.47  thf(t88_xboole_1, axiom,
% 0.21/0.47    (![A:$i,B:$i]:
% 0.21/0.47     ( ( r1_xboole_0 @ A @ B ) =>
% 0.21/0.47       ( ( k4_xboole_0 @ ( k2_xboole_0 @ A @ B ) @ B ) = ( A ) ) ))).
% 0.21/0.47  thf('5', plain,
% 0.21/0.47      (![X5 : $i, X6 : $i]:
% 0.21/0.47         (((k4_xboole_0 @ (k2_xboole_0 @ X5 @ X6) @ X6) = (X5))
% 0.21/0.47          | ~ (r1_xboole_0 @ X5 @ X6))),
% 0.21/0.47      inference('cnf', [status(esa)], [t88_xboole_1])).
% 0.21/0.47  thf('6', plain,
% 0.21/0.47      (![X0 : $i, X1 : $i]:
% 0.21/0.47         ((r2_hidden @ X0 @ X1)
% 0.21/0.47          | ((k4_xboole_0 @ (k2_xboole_0 @ X1 @ (k1_tarski @ X0)) @ 
% 0.21/0.47              (k1_tarski @ X0)) = (X1)))),
% 0.21/0.47      inference('sup-', [status(thm)], ['4', '5'])).
% 0.21/0.47  thf('7', plain,
% 0.21/0.47      (((k4_xboole_0 @ (k2_xboole_0 @ sk_B @ (k1_tarski @ sk_A)) @ 
% 0.21/0.47         (k1_tarski @ sk_A)) != (sk_B))),
% 0.21/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.47  thf('8', plain, ((((sk_B) != (sk_B)) | (r2_hidden @ sk_A @ sk_B))),
% 0.21/0.47      inference('sup-', [status(thm)], ['6', '7'])).
% 0.21/0.47  thf('9', plain, ((r2_hidden @ sk_A @ sk_B)),
% 0.21/0.47      inference('simplify', [status(thm)], ['8'])).
% 0.21/0.47  thf('10', plain, ($false), inference('demod', [status(thm)], ['0', '9'])).
% 0.21/0.47  
% 0.21/0.47  % SZS output end Refutation
% 0.21/0.47  
% 0.21/0.48  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
