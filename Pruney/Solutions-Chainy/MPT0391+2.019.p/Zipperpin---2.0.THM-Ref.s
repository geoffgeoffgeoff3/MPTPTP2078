%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.QCLQAaHqH8

% Computer   : n007.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:38:40 EST 2020

% Result     : Theorem 0.22s
% Output     : Refutation 0.22s
% Verified   : 
% Statistics : Number of formulae       :   20 (  24 expanded)
%              Number of leaves         :   10 (  12 expanded)
%              Depth                    :    6
%              Number of atoms          :   78 ( 118 expanded)
%              Number of equality atoms :    0 (   0 expanded)
%              Maximal formula depth    :    9 (   5 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(r1_xboole_0_type,type,(
    r1_xboole_0: $i > $i > $o )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(sk_C_type,type,(
    sk_C: $i )).

thf(k1_setfam_1_type,type,(
    k1_setfam_1: $i > $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(t9_setfam_1,conjecture,(
    ! [A: $i,B: $i,C: $i] :
      ( ( ( r2_hidden @ A @ B )
        & ( r1_xboole_0 @ A @ C ) )
     => ( r1_xboole_0 @ ( k1_setfam_1 @ B ) @ C ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i,C: $i] :
        ( ( ( r2_hidden @ A @ B )
          & ( r1_xboole_0 @ A @ C ) )
       => ( r1_xboole_0 @ ( k1_setfam_1 @ B ) @ C ) ) ),
    inference('cnf.neg',[status(esa)],[t9_setfam_1])).

thf('0',plain,(
    ~ ( r1_xboole_0 @ ( k1_setfam_1 @ sk_B ) @ sk_C ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('1',plain,(
    r1_xboole_0 @ sk_A @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('2',plain,(
    r2_hidden @ sk_A @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t4_setfam_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( r2_hidden @ A @ B )
     => ( r1_tarski @ ( k1_setfam_1 @ B ) @ A ) ) )).

thf('3',plain,(
    ! [X3: $i,X4: $i] :
      ( ( r1_tarski @ ( k1_setfam_1 @ X3 ) @ X4 )
      | ~ ( r2_hidden @ X4 @ X3 ) ) ),
    inference(cnf,[status(esa)],[t4_setfam_1])).

thf('4',plain,(
    r1_tarski @ ( k1_setfam_1 @ sk_B ) @ sk_A ),
    inference('sup-',[status(thm)],['2','3'])).

thf(t63_xboole_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( ( r1_tarski @ A @ B )
        & ( r1_xboole_0 @ B @ C ) )
     => ( r1_xboole_0 @ A @ C ) ) )).

thf('5',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( r1_tarski @ X0 @ X1 )
      | ~ ( r1_xboole_0 @ X1 @ X2 )
      | ( r1_xboole_0 @ X0 @ X2 ) ) ),
    inference(cnf,[status(esa)],[t63_xboole_1])).

thf('6',plain,(
    ! [X0: $i] :
      ( ( r1_xboole_0 @ ( k1_setfam_1 @ sk_B ) @ X0 )
      | ~ ( r1_xboole_0 @ sk_A @ X0 ) ) ),
    inference('sup-',[status(thm)],['4','5'])).

thf('7',plain,(
    r1_xboole_0 @ ( k1_setfam_1 @ sk_B ) @ sk_C ),
    inference('sup-',[status(thm)],['1','6'])).

thf('8',plain,(
    $false ),
    inference(demod,[status(thm)],['0','7'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.QCLQAaHqH8
% 0.14/0.35  % Computer   : n007.cluster.edu
% 0.14/0.35  % Model      : x86_64 x86_64
% 0.14/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.35  % Memory     : 8042.1875MB
% 0.14/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.35  % CPULimit   : 60
% 0.14/0.35  % DateTime   : Tue Dec  1 19:08:06 EST 2020
% 0.14/0.35  % CPUTime    : 
% 0.14/0.35  % Running portfolio for 600 s
% 0.14/0.35  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.14/0.35  % Number of cores: 8
% 0.14/0.36  % Python version: Python 3.6.8
% 0.14/0.36  % Running in FO mode
% 0.22/0.49  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.22/0.49  % Solved by: fo/fo7.sh
% 0.22/0.49  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.22/0.49  % done 7 iterations in 0.007s
% 0.22/0.49  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.22/0.49  % SZS output start Refutation
% 0.22/0.49  thf(r1_xboole_0_type, type, r1_xboole_0: $i > $i > $o).
% 0.22/0.49  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.22/0.49  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.22/0.49  thf(sk_C_type, type, sk_C: $i).
% 0.22/0.49  thf(k1_setfam_1_type, type, k1_setfam_1: $i > $i).
% 0.22/0.49  thf(sk_A_type, type, sk_A: $i).
% 0.22/0.49  thf(sk_B_type, type, sk_B: $i).
% 0.22/0.49  thf(t9_setfam_1, conjecture,
% 0.22/0.49    (![A:$i,B:$i,C:$i]:
% 0.22/0.49     ( ( ( r2_hidden @ A @ B ) & ( r1_xboole_0 @ A @ C ) ) =>
% 0.22/0.49       ( r1_xboole_0 @ ( k1_setfam_1 @ B ) @ C ) ))).
% 0.22/0.49  thf(zf_stmt_0, negated_conjecture,
% 0.22/0.49    (~( ![A:$i,B:$i,C:$i]:
% 0.22/0.49        ( ( ( r2_hidden @ A @ B ) & ( r1_xboole_0 @ A @ C ) ) =>
% 0.22/0.49          ( r1_xboole_0 @ ( k1_setfam_1 @ B ) @ C ) ) )),
% 0.22/0.49    inference('cnf.neg', [status(esa)], [t9_setfam_1])).
% 0.22/0.49  thf('0', plain, (~ (r1_xboole_0 @ (k1_setfam_1 @ sk_B) @ sk_C)),
% 0.22/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.49  thf('1', plain, ((r1_xboole_0 @ sk_A @ sk_C)),
% 0.22/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.49  thf('2', plain, ((r2_hidden @ sk_A @ sk_B)),
% 0.22/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.49  thf(t4_setfam_1, axiom,
% 0.22/0.49    (![A:$i,B:$i]:
% 0.22/0.49     ( ( r2_hidden @ A @ B ) => ( r1_tarski @ ( k1_setfam_1 @ B ) @ A ) ))).
% 0.22/0.49  thf('3', plain,
% 0.22/0.49      (![X3 : $i, X4 : $i]:
% 0.22/0.49         ((r1_tarski @ (k1_setfam_1 @ X3) @ X4) | ~ (r2_hidden @ X4 @ X3))),
% 0.22/0.49      inference('cnf', [status(esa)], [t4_setfam_1])).
% 0.22/0.49  thf('4', plain, ((r1_tarski @ (k1_setfam_1 @ sk_B) @ sk_A)),
% 0.22/0.49      inference('sup-', [status(thm)], ['2', '3'])).
% 0.22/0.49  thf(t63_xboole_1, axiom,
% 0.22/0.49    (![A:$i,B:$i,C:$i]:
% 0.22/0.49     ( ( ( r1_tarski @ A @ B ) & ( r1_xboole_0 @ B @ C ) ) =>
% 0.22/0.49       ( r1_xboole_0 @ A @ C ) ))).
% 0.22/0.49  thf('5', plain,
% 0.22/0.49      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.22/0.49         (~ (r1_tarski @ X0 @ X1)
% 0.22/0.49          | ~ (r1_xboole_0 @ X1 @ X2)
% 0.22/0.49          | (r1_xboole_0 @ X0 @ X2))),
% 0.22/0.49      inference('cnf', [status(esa)], [t63_xboole_1])).
% 0.22/0.49  thf('6', plain,
% 0.22/0.49      (![X0 : $i]:
% 0.22/0.49         ((r1_xboole_0 @ (k1_setfam_1 @ sk_B) @ X0)
% 0.22/0.49          | ~ (r1_xboole_0 @ sk_A @ X0))),
% 0.22/0.49      inference('sup-', [status(thm)], ['4', '5'])).
% 0.22/0.49  thf('7', plain, ((r1_xboole_0 @ (k1_setfam_1 @ sk_B) @ sk_C)),
% 0.22/0.49      inference('sup-', [status(thm)], ['1', '6'])).
% 0.22/0.49  thf('8', plain, ($false), inference('demod', [status(thm)], ['0', '7'])).
% 0.22/0.49  
% 0.22/0.49  % SZS output end Refutation
% 0.22/0.49  
% 0.22/0.50  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
