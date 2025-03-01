%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.Am5EXaPN3V

% Computer   : n017.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:48:17 EST 2020

% Result     : Theorem 0.23s
% Output     : Refutation 0.23s
% Verified   : 
% Statistics : Number of formulae       :   21 (  29 expanded)
%              Number of leaves         :    8 (  12 expanded)
%              Depth                    :    6
%              Number of atoms          :  110 ( 214 expanded)
%              Number of equality atoms :    8 (  16 expanded)
%              Maximal formula depth    :   12 (   5 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(r3_xboole_0_type,type,(
    r3_xboole_0: $i > $i > $o )).

thf(r2_xboole_0_type,type,(
    r2_xboole_0: $i > $i > $o )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(v3_ordinal1_type,type,(
    v3_ordinal1: $i > $o )).

thf(t50_ordinal1,conjecture,(
    ! [A: $i] :
      ( ( v3_ordinal1 @ A )
     => ! [B: $i] :
          ( ( v3_ordinal1 @ B )
         => ~ ( ~ ( r2_xboole_0 @ A @ B )
              & ( A != B )
              & ~ ( r2_xboole_0 @ B @ A ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i] :
        ( ( v3_ordinal1 @ A )
       => ! [B: $i] :
            ( ( v3_ordinal1 @ B )
           => ~ ( ~ ( r2_xboole_0 @ A @ B )
                & ( A != B )
                & ~ ( r2_xboole_0 @ B @ A ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t50_ordinal1])).

thf('0',plain,(
    ~ ( r2_xboole_0 @ sk_A @ sk_B ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t25_ordinal1,axiom,(
    ! [A: $i] :
      ( ( v3_ordinal1 @ A )
     => ! [B: $i] :
          ( ( v3_ordinal1 @ B )
         => ( r3_xboole_0 @ A @ B ) ) ) )).

thf('1',plain,(
    ! [X3: $i,X4: $i] :
      ( ~ ( v3_ordinal1 @ X3 )
      | ( r3_xboole_0 @ X4 @ X3 )
      | ~ ( v3_ordinal1 @ X4 ) ) ),
    inference(cnf,[status(esa)],[t25_ordinal1])).

thf(t104_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ~ ( ~ ( r2_xboole_0 @ A @ B )
          & ( A != B )
          & ~ ( r2_xboole_0 @ B @ A ) )
    <=> ( r3_xboole_0 @ A @ B ) ) )).

thf('2',plain,(
    ! [X0: $i,X2: $i] :
      ( ( r2_xboole_0 @ X2 @ X0 )
      | ( X0 = X2 )
      | ( r2_xboole_0 @ X0 @ X2 )
      | ~ ( r3_xboole_0 @ X0 @ X2 ) ) ),
    inference(cnf,[status(esa)],[t104_xboole_1])).

thf('3',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( v3_ordinal1 @ X1 )
      | ~ ( v3_ordinal1 @ X0 )
      | ( r2_xboole_0 @ X1 @ X0 )
      | ( X1 = X0 )
      | ( r2_xboole_0 @ X0 @ X1 ) ) ),
    inference('sup-',[status(thm)],['1','2'])).

thf('4',plain,(
    ~ ( r2_xboole_0 @ sk_B @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('5',plain,
    ( ( r2_xboole_0 @ sk_A @ sk_B )
    | ( sk_B = sk_A )
    | ~ ( v3_ordinal1 @ sk_A )
    | ~ ( v3_ordinal1 @ sk_B ) ),
    inference('sup-',[status(thm)],['3','4'])).

thf('6',plain,(
    v3_ordinal1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('7',plain,(
    v3_ordinal1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('8',plain,
    ( ( r2_xboole_0 @ sk_A @ sk_B )
    | ( sk_B = sk_A ) ),
    inference(demod,[status(thm)],['5','6','7'])).

thf('9',plain,(
    sk_A != sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('10',plain,(
    r2_xboole_0 @ sk_A @ sk_B ),
    inference('simplify_reflect-',[status(thm)],['8','9'])).

thf('11',plain,(
    $false ),
    inference(demod,[status(thm)],['0','10'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.12/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.12/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.Am5EXaPN3V
% 0.13/0.37  % Computer   : n017.cluster.edu
% 0.13/0.37  % Model      : x86_64 x86_64
% 0.13/0.37  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.37  % Memory     : 8042.1875MB
% 0.13/0.37  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.37  % CPULimit   : 60
% 0.13/0.37  % DateTime   : Tue Dec  1 20:39:32 EST 2020
% 0.13/0.38  % CPUTime    : 
% 0.13/0.38  % Running portfolio for 600 s
% 0.13/0.38  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.13/0.38  % Number of cores: 8
% 0.13/0.38  % Python version: Python 3.6.8
% 0.13/0.38  % Running in FO mode
% 0.23/0.49  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.23/0.49  % Solved by: fo/fo7.sh
% 0.23/0.49  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.23/0.49  % done 12 iterations in 0.011s
% 0.23/0.49  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.23/0.49  % SZS output start Refutation
% 0.23/0.49  thf(r3_xboole_0_type, type, r3_xboole_0: $i > $i > $o).
% 0.23/0.49  thf(r2_xboole_0_type, type, r2_xboole_0: $i > $i > $o).
% 0.23/0.49  thf(sk_A_type, type, sk_A: $i).
% 0.23/0.49  thf(sk_B_type, type, sk_B: $i).
% 0.23/0.49  thf(v3_ordinal1_type, type, v3_ordinal1: $i > $o).
% 0.23/0.49  thf(t50_ordinal1, conjecture,
% 0.23/0.49    (![A:$i]:
% 0.23/0.49     ( ( v3_ordinal1 @ A ) =>
% 0.23/0.49       ( ![B:$i]:
% 0.23/0.49         ( ( v3_ordinal1 @ B ) =>
% 0.23/0.49           ( ~( ( ~( r2_xboole_0 @ A @ B ) ) & ( ( A ) != ( B ) ) & 
% 0.23/0.49                ( ~( r2_xboole_0 @ B @ A ) ) ) ) ) ) ))).
% 0.23/0.49  thf(zf_stmt_0, negated_conjecture,
% 0.23/0.49    (~( ![A:$i]:
% 0.23/0.49        ( ( v3_ordinal1 @ A ) =>
% 0.23/0.49          ( ![B:$i]:
% 0.23/0.49            ( ( v3_ordinal1 @ B ) =>
% 0.23/0.49              ( ~( ( ~( r2_xboole_0 @ A @ B ) ) & ( ( A ) != ( B ) ) & 
% 0.23/0.49                   ( ~( r2_xboole_0 @ B @ A ) ) ) ) ) ) ) )),
% 0.23/0.49    inference('cnf.neg', [status(esa)], [t50_ordinal1])).
% 0.23/0.49  thf('0', plain, (~ (r2_xboole_0 @ sk_A @ sk_B)),
% 0.23/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.23/0.49  thf(t25_ordinal1, axiom,
% 0.23/0.49    (![A:$i]:
% 0.23/0.49     ( ( v3_ordinal1 @ A ) =>
% 0.23/0.49       ( ![B:$i]: ( ( v3_ordinal1 @ B ) => ( r3_xboole_0 @ A @ B ) ) ) ))).
% 0.23/0.49  thf('1', plain,
% 0.23/0.49      (![X3 : $i, X4 : $i]:
% 0.23/0.49         (~ (v3_ordinal1 @ X3) | (r3_xboole_0 @ X4 @ X3) | ~ (v3_ordinal1 @ X4))),
% 0.23/0.49      inference('cnf', [status(esa)], [t25_ordinal1])).
% 0.23/0.49  thf(t104_xboole_1, axiom,
% 0.23/0.49    (![A:$i,B:$i]:
% 0.23/0.49     ( ( ~( ( ~( r2_xboole_0 @ A @ B ) ) & ( ( A ) != ( B ) ) & 
% 0.23/0.49            ( ~( r2_xboole_0 @ B @ A ) ) ) ) <=>
% 0.23/0.49       ( r3_xboole_0 @ A @ B ) ))).
% 0.23/0.49  thf('2', plain,
% 0.23/0.49      (![X0 : $i, X2 : $i]:
% 0.23/0.49         ((r2_xboole_0 @ X2 @ X0)
% 0.23/0.49          | ((X0) = (X2))
% 0.23/0.49          | (r2_xboole_0 @ X0 @ X2)
% 0.23/0.49          | ~ (r3_xboole_0 @ X0 @ X2))),
% 0.23/0.49      inference('cnf', [status(esa)], [t104_xboole_1])).
% 0.23/0.49  thf('3', plain,
% 0.23/0.49      (![X0 : $i, X1 : $i]:
% 0.23/0.49         (~ (v3_ordinal1 @ X1)
% 0.23/0.49          | ~ (v3_ordinal1 @ X0)
% 0.23/0.49          | (r2_xboole_0 @ X1 @ X0)
% 0.23/0.49          | ((X1) = (X0))
% 0.23/0.49          | (r2_xboole_0 @ X0 @ X1))),
% 0.23/0.49      inference('sup-', [status(thm)], ['1', '2'])).
% 0.23/0.49  thf('4', plain, (~ (r2_xboole_0 @ sk_B @ sk_A)),
% 0.23/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.23/0.49  thf('5', plain,
% 0.23/0.49      (((r2_xboole_0 @ sk_A @ sk_B)
% 0.23/0.49        | ((sk_B) = (sk_A))
% 0.23/0.49        | ~ (v3_ordinal1 @ sk_A)
% 0.23/0.49        | ~ (v3_ordinal1 @ sk_B))),
% 0.23/0.49      inference('sup-', [status(thm)], ['3', '4'])).
% 0.23/0.49  thf('6', plain, ((v3_ordinal1 @ sk_A)),
% 0.23/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.23/0.49  thf('7', plain, ((v3_ordinal1 @ sk_B)),
% 0.23/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.23/0.49  thf('8', plain, (((r2_xboole_0 @ sk_A @ sk_B) | ((sk_B) = (sk_A)))),
% 0.23/0.49      inference('demod', [status(thm)], ['5', '6', '7'])).
% 0.23/0.49  thf('9', plain, (((sk_A) != (sk_B))),
% 0.23/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.23/0.49  thf('10', plain, ((r2_xboole_0 @ sk_A @ sk_B)),
% 0.23/0.49      inference('simplify_reflect-', [status(thm)], ['8', '9'])).
% 0.23/0.49  thf('11', plain, ($false), inference('demod', [status(thm)], ['0', '10'])).
% 0.23/0.49  
% 0.23/0.49  % SZS output end Refutation
% 0.23/0.49  
% 0.23/0.51  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
