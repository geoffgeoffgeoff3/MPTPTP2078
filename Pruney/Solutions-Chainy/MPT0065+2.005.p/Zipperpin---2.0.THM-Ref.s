%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.6zooW0teFw

% Computer   : n008.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:24:25 EST 2020

% Result     : Theorem 0.20s
% Output     : Refutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   34 (  65 expanded)
%              Number of leaves         :   10 (  23 expanded)
%              Depth                    :   10
%              Number of atoms          :  148 ( 388 expanded)
%              Number of equality atoms :    9 (  15 expanded)
%              Maximal formula depth    :    9 (   5 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(r2_xboole_0_type,type,(
    r2_xboole_0: $i > $i > $o )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(sk_C_type,type,(
    sk_C: $i )).

thf(t58_xboole_1,conjecture,(
    ! [A: $i,B: $i,C: $i] :
      ( ( ( r2_xboole_0 @ A @ B )
        & ( r1_tarski @ B @ C ) )
     => ( r2_xboole_0 @ A @ C ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i,C: $i] :
        ( ( ( r2_xboole_0 @ A @ B )
          & ( r1_tarski @ B @ C ) )
       => ( r2_xboole_0 @ A @ C ) ) ),
    inference('cnf.neg',[status(esa)],[t58_xboole_1])).

thf('0',plain,(
    r2_xboole_0 @ sk_A @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('1',plain,(
    r1_tarski @ sk_B @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(d8_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ( r2_xboole_0 @ A @ B )
    <=> ( ( r1_tarski @ A @ B )
        & ( A != B ) ) ) )).

thf('2',plain,(
    ! [X2: $i,X4: $i] :
      ( ( r2_xboole_0 @ X2 @ X4 )
      | ( X2 = X4 )
      | ~ ( r1_tarski @ X2 @ X4 ) ) ),
    inference(cnf,[status(esa)],[d8_xboole_0])).

thf('3',plain,
    ( ( sk_B = sk_C )
    | ( r2_xboole_0 @ sk_B @ sk_C ) ),
    inference('sup-',[status(thm)],['1','2'])).

thf(antisymmetry_r2_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ( r2_xboole_0 @ A @ B )
     => ~ ( r2_xboole_0 @ B @ A ) ) )).

thf('4',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( r2_xboole_0 @ X0 @ X1 )
      | ~ ( r2_xboole_0 @ X1 @ X0 ) ) ),
    inference(cnf,[status(esa)],[antisymmetry_r2_xboole_0])).

thf('5',plain,
    ( ( sk_B = sk_C )
    | ~ ( r2_xboole_0 @ sk_C @ sk_B ) ),
    inference('sup-',[status(thm)],['3','4'])).

thf('6',plain,(
    r1_tarski @ sk_B @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('7',plain,(
    r2_xboole_0 @ sk_A @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('8',plain,(
    ! [X2: $i,X3: $i] :
      ( ( r1_tarski @ X2 @ X3 )
      | ~ ( r2_xboole_0 @ X2 @ X3 ) ) ),
    inference(cnf,[status(esa)],[d8_xboole_0])).

thf('9',plain,(
    r1_tarski @ sk_A @ sk_B ),
    inference('sup-',[status(thm)],['7','8'])).

thf(t1_xboole_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( ( r1_tarski @ A @ B )
        & ( r1_tarski @ B @ C ) )
     => ( r1_tarski @ A @ C ) ) )).

thf('10',plain,(
    ! [X6: $i,X7: $i,X8: $i] :
      ( ~ ( r1_tarski @ X6 @ X7 )
      | ~ ( r1_tarski @ X7 @ X8 )
      | ( r1_tarski @ X6 @ X8 ) ) ),
    inference(cnf,[status(esa)],[t1_xboole_1])).

thf('11',plain,(
    ! [X0: $i] :
      ( ( r1_tarski @ sk_A @ X0 )
      | ~ ( r1_tarski @ sk_B @ X0 ) ) ),
    inference('sup-',[status(thm)],['9','10'])).

thf('12',plain,(
    r1_tarski @ sk_A @ sk_C ),
    inference('sup-',[status(thm)],['6','11'])).

thf('13',plain,(
    ! [X2: $i,X4: $i] :
      ( ( r2_xboole_0 @ X2 @ X4 )
      | ( X2 = X4 )
      | ~ ( r1_tarski @ X2 @ X4 ) ) ),
    inference(cnf,[status(esa)],[d8_xboole_0])).

thf('14',plain,
    ( ( sk_A = sk_C )
    | ( r2_xboole_0 @ sk_A @ sk_C ) ),
    inference('sup-',[status(thm)],['12','13'])).

thf('15',plain,(
    ~ ( r2_xboole_0 @ sk_A @ sk_C ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('16',plain,(
    sk_A = sk_C ),
    inference(clc,[status(thm)],['14','15'])).

thf('17',plain,(
    sk_A = sk_C ),
    inference(clc,[status(thm)],['14','15'])).

thf('18',plain,(
    r2_xboole_0 @ sk_A @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('19',plain,(
    sk_B = sk_A ),
    inference(demod,[status(thm)],['5','16','17','18'])).

thf('20',plain,(
    r2_xboole_0 @ sk_A @ sk_A ),
    inference(demod,[status(thm)],['0','19'])).

thf(irreflexivity_r2_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ~ ( r2_xboole_0 @ A @ A ) )).

thf('21',plain,(
    ! [X5: $i] :
      ~ ( r2_xboole_0 @ X5 @ X5 ) ),
    inference(cnf,[status(esa)],[irreflexivity_r2_xboole_0])).

thf('22',plain,(
    $false ),
    inference('sup-',[status(thm)],['20','21'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.6zooW0teFw
% 0.13/0.34  % Computer   : n008.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 17:11:00 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running portfolio for 600 s
% 0.13/0.34  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.13/0.35  % Number of cores: 8
% 0.13/0.35  % Python version: Python 3.6.8
% 0.13/0.35  % Running in FO mode
% 0.20/0.47  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.20/0.47  % Solved by: fo/fo7.sh
% 0.20/0.47  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.20/0.47  % done 24 iterations in 0.013s
% 0.20/0.47  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.20/0.47  % SZS output start Refutation
% 0.20/0.47  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.20/0.47  thf(sk_B_type, type, sk_B: $i).
% 0.20/0.47  thf(r2_xboole_0_type, type, r2_xboole_0: $i > $i > $o).
% 0.20/0.47  thf(sk_A_type, type, sk_A: $i).
% 0.20/0.47  thf(sk_C_type, type, sk_C: $i).
% 0.20/0.47  thf(t58_xboole_1, conjecture,
% 0.20/0.47    (![A:$i,B:$i,C:$i]:
% 0.20/0.47     ( ( ( r2_xboole_0 @ A @ B ) & ( r1_tarski @ B @ C ) ) =>
% 0.20/0.47       ( r2_xboole_0 @ A @ C ) ))).
% 0.20/0.47  thf(zf_stmt_0, negated_conjecture,
% 0.20/0.47    (~( ![A:$i,B:$i,C:$i]:
% 0.20/0.47        ( ( ( r2_xboole_0 @ A @ B ) & ( r1_tarski @ B @ C ) ) =>
% 0.20/0.47          ( r2_xboole_0 @ A @ C ) ) )),
% 0.20/0.47    inference('cnf.neg', [status(esa)], [t58_xboole_1])).
% 0.20/0.47  thf('0', plain, ((r2_xboole_0 @ sk_A @ sk_B)),
% 0.20/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.47  thf('1', plain, ((r1_tarski @ sk_B @ sk_C)),
% 0.20/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.47  thf(d8_xboole_0, axiom,
% 0.20/0.47    (![A:$i,B:$i]:
% 0.20/0.47     ( ( r2_xboole_0 @ A @ B ) <=>
% 0.20/0.47       ( ( r1_tarski @ A @ B ) & ( ( A ) != ( B ) ) ) ))).
% 0.20/0.47  thf('2', plain,
% 0.20/0.47      (![X2 : $i, X4 : $i]:
% 0.20/0.47         ((r2_xboole_0 @ X2 @ X4) | ((X2) = (X4)) | ~ (r1_tarski @ X2 @ X4))),
% 0.20/0.47      inference('cnf', [status(esa)], [d8_xboole_0])).
% 0.20/0.47  thf('3', plain, ((((sk_B) = (sk_C)) | (r2_xboole_0 @ sk_B @ sk_C))),
% 0.20/0.47      inference('sup-', [status(thm)], ['1', '2'])).
% 0.20/0.47  thf(antisymmetry_r2_xboole_0, axiom,
% 0.20/0.47    (![A:$i,B:$i]: ( ( r2_xboole_0 @ A @ B ) => ( ~( r2_xboole_0 @ B @ A ) ) ))).
% 0.20/0.47  thf('4', plain,
% 0.20/0.47      (![X0 : $i, X1 : $i]:
% 0.20/0.47         (~ (r2_xboole_0 @ X0 @ X1) | ~ (r2_xboole_0 @ X1 @ X0))),
% 0.20/0.47      inference('cnf', [status(esa)], [antisymmetry_r2_xboole_0])).
% 0.20/0.47  thf('5', plain, ((((sk_B) = (sk_C)) | ~ (r2_xboole_0 @ sk_C @ sk_B))),
% 0.20/0.47      inference('sup-', [status(thm)], ['3', '4'])).
% 0.20/0.47  thf('6', plain, ((r1_tarski @ sk_B @ sk_C)),
% 0.20/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.47  thf('7', plain, ((r2_xboole_0 @ sk_A @ sk_B)),
% 0.20/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.47  thf('8', plain,
% 0.20/0.47      (![X2 : $i, X3 : $i]: ((r1_tarski @ X2 @ X3) | ~ (r2_xboole_0 @ X2 @ X3))),
% 0.20/0.47      inference('cnf', [status(esa)], [d8_xboole_0])).
% 0.20/0.47  thf('9', plain, ((r1_tarski @ sk_A @ sk_B)),
% 0.20/0.47      inference('sup-', [status(thm)], ['7', '8'])).
% 0.20/0.47  thf(t1_xboole_1, axiom,
% 0.20/0.47    (![A:$i,B:$i,C:$i]:
% 0.20/0.47     ( ( ( r1_tarski @ A @ B ) & ( r1_tarski @ B @ C ) ) =>
% 0.20/0.47       ( r1_tarski @ A @ C ) ))).
% 0.20/0.47  thf('10', plain,
% 0.20/0.47      (![X6 : $i, X7 : $i, X8 : $i]:
% 0.20/0.47         (~ (r1_tarski @ X6 @ X7)
% 0.20/0.47          | ~ (r1_tarski @ X7 @ X8)
% 0.20/0.47          | (r1_tarski @ X6 @ X8))),
% 0.20/0.47      inference('cnf', [status(esa)], [t1_xboole_1])).
% 0.20/0.47  thf('11', plain,
% 0.20/0.47      (![X0 : $i]: ((r1_tarski @ sk_A @ X0) | ~ (r1_tarski @ sk_B @ X0))),
% 0.20/0.47      inference('sup-', [status(thm)], ['9', '10'])).
% 0.20/0.47  thf('12', plain, ((r1_tarski @ sk_A @ sk_C)),
% 0.20/0.47      inference('sup-', [status(thm)], ['6', '11'])).
% 0.20/0.47  thf('13', plain,
% 0.20/0.47      (![X2 : $i, X4 : $i]:
% 0.20/0.47         ((r2_xboole_0 @ X2 @ X4) | ((X2) = (X4)) | ~ (r1_tarski @ X2 @ X4))),
% 0.20/0.47      inference('cnf', [status(esa)], [d8_xboole_0])).
% 0.20/0.47  thf('14', plain, ((((sk_A) = (sk_C)) | (r2_xboole_0 @ sk_A @ sk_C))),
% 0.20/0.47      inference('sup-', [status(thm)], ['12', '13'])).
% 0.20/0.47  thf('15', plain, (~ (r2_xboole_0 @ sk_A @ sk_C)),
% 0.20/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.47  thf('16', plain, (((sk_A) = (sk_C))),
% 0.20/0.47      inference('clc', [status(thm)], ['14', '15'])).
% 0.20/0.47  thf('17', plain, (((sk_A) = (sk_C))),
% 0.20/0.47      inference('clc', [status(thm)], ['14', '15'])).
% 0.20/0.47  thf('18', plain, ((r2_xboole_0 @ sk_A @ sk_B)),
% 0.20/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.47  thf('19', plain, (((sk_B) = (sk_A))),
% 0.20/0.47      inference('demod', [status(thm)], ['5', '16', '17', '18'])).
% 0.20/0.47  thf('20', plain, ((r2_xboole_0 @ sk_A @ sk_A)),
% 0.20/0.47      inference('demod', [status(thm)], ['0', '19'])).
% 0.20/0.47  thf(irreflexivity_r2_xboole_0, axiom,
% 0.20/0.47    (![A:$i,B:$i]: ( ~( r2_xboole_0 @ A @ A ) ))).
% 0.20/0.47  thf('21', plain, (![X5 : $i]: ~ (r2_xboole_0 @ X5 @ X5)),
% 0.20/0.47      inference('cnf', [status(esa)], [irreflexivity_r2_xboole_0])).
% 0.20/0.47  thf('22', plain, ($false), inference('sup-', [status(thm)], ['20', '21'])).
% 0.20/0.47  
% 0.20/0.47  % SZS output end Refutation
% 0.20/0.47  
% 0.20/0.48  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
