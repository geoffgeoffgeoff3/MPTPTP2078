%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.8S8q5b9M6B

% Computer   : n004.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:36:07 EST 2020

% Result     : Theorem 0.20s
% Output     : Refutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   24 (  28 expanded)
%              Number of leaves         :   11 (  13 expanded)
%              Depth                    :    7
%              Number of atoms          :  132 ( 184 expanded)
%              Number of equality atoms :    7 (  11 expanded)
%              Maximal formula depth    :   13 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k4_xboole_0_type,type,(
    k4_xboole_0: $i > $i > $i )).

thf(sk_C_type,type,(
    sk_C: $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(r1_xboole_0_type,type,(
    r1_xboole_0: $i > $i > $o )).

thf(k2_tarski_type,type,(
    k2_tarski: $i > $i > $i )).

thf(t144_zfmisc_1,conjecture,(
    ! [A: $i,B: $i,C: $i] :
      ~ ( ~ ( r2_hidden @ A @ C )
        & ~ ( r2_hidden @ B @ C )
        & ( C
         != ( k4_xboole_0 @ C @ ( k2_tarski @ A @ B ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i,C: $i] :
        ~ ( ~ ( r2_hidden @ A @ C )
          & ~ ( r2_hidden @ B @ C )
          & ( C
           != ( k4_xboole_0 @ C @ ( k2_tarski @ A @ B ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t144_zfmisc_1])).

thf('0',plain,(
    ~ ( r2_hidden @ sk_B @ sk_C ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t57_zfmisc_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ~ ( ~ ( r2_hidden @ A @ B )
        & ~ ( r2_hidden @ C @ B )
        & ~ ( r1_xboole_0 @ ( k2_tarski @ A @ C ) @ B ) ) )).

thf('1',plain,(
    ! [X34: $i,X35: $i,X36: $i] :
      ( ( r2_hidden @ X34 @ X35 )
      | ( r1_xboole_0 @ ( k2_tarski @ X34 @ X36 ) @ X35 )
      | ( r2_hidden @ X36 @ X35 ) ) ),
    inference(cnf,[status(esa)],[t57_zfmisc_1])).

thf(symmetry_r1_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_xboole_0 @ A @ B )
     => ( r1_xboole_0 @ B @ A ) ) )).

thf('2',plain,(
    ! [X0: $i,X1: $i] :
      ( ( r1_xboole_0 @ X0 @ X1 )
      | ~ ( r1_xboole_0 @ X1 @ X0 ) ) ),
    inference(cnf,[status(esa)],[symmetry_r1_xboole_0])).

thf('3',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( r2_hidden @ X1 @ X0 )
      | ( r2_hidden @ X2 @ X0 )
      | ( r1_xboole_0 @ X0 @ ( k2_tarski @ X2 @ X1 ) ) ) ),
    inference('sup-',[status(thm)],['1','2'])).

thf(t83_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_xboole_0 @ A @ B )
    <=> ( ( k4_xboole_0 @ A @ B )
        = A ) ) )).

thf('4',plain,(
    ! [X4: $i,X5: $i] :
      ( ( ( k4_xboole_0 @ X4 @ X5 )
        = X4 )
      | ~ ( r1_xboole_0 @ X4 @ X5 ) ) ),
    inference(cnf,[status(esa)],[t83_xboole_1])).

thf('5',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( r2_hidden @ X1 @ X2 )
      | ( r2_hidden @ X0 @ X2 )
      | ( ( k4_xboole_0 @ X2 @ ( k2_tarski @ X1 @ X0 ) )
        = X2 ) ) ),
    inference('sup-',[status(thm)],['3','4'])).

thf('6',plain,(
    sk_C
 != ( k4_xboole_0 @ sk_C @ ( k2_tarski @ sk_A @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('7',plain,
    ( ( sk_C != sk_C )
    | ( r2_hidden @ sk_B @ sk_C )
    | ( r2_hidden @ sk_A @ sk_C ) ),
    inference('sup-',[status(thm)],['5','6'])).

thf('8',plain,
    ( ( r2_hidden @ sk_A @ sk_C )
    | ( r2_hidden @ sk_B @ sk_C ) ),
    inference(simplify,[status(thm)],['7'])).

thf('9',plain,(
    ~ ( r2_hidden @ sk_A @ sk_C ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('10',plain,(
    r2_hidden @ sk_B @ sk_C ),
    inference(clc,[status(thm)],['8','9'])).

thf('11',plain,(
    $false ),
    inference(demod,[status(thm)],['0','10'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.8S8q5b9M6B
% 0.13/0.34  % Computer   : n004.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 13:45:09 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running portfolio for 600 s
% 0.13/0.34  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.13/0.34  % Number of cores: 8
% 0.13/0.35  % Python version: Python 3.6.8
% 0.13/0.35  % Running in FO mode
% 0.20/0.47  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.20/0.47  % Solved by: fo/fo7.sh
% 0.20/0.47  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.20/0.47  % done 19 iterations in 0.016s
% 0.20/0.47  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.20/0.47  % SZS output start Refutation
% 0.20/0.47  thf(k4_xboole_0_type, type, k4_xboole_0: $i > $i > $i).
% 0.20/0.47  thf(sk_C_type, type, sk_C: $i).
% 0.20/0.47  thf(sk_B_type, type, sk_B: $i).
% 0.20/0.47  thf(sk_A_type, type, sk_A: $i).
% 0.20/0.47  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.20/0.47  thf(r1_xboole_0_type, type, r1_xboole_0: $i > $i > $o).
% 0.20/0.47  thf(k2_tarski_type, type, k2_tarski: $i > $i > $i).
% 0.20/0.47  thf(t144_zfmisc_1, conjecture,
% 0.20/0.47    (![A:$i,B:$i,C:$i]:
% 0.20/0.47     ( ~( ( ~( r2_hidden @ A @ C ) ) & ( ~( r2_hidden @ B @ C ) ) & 
% 0.20/0.47          ( ( C ) != ( k4_xboole_0 @ C @ ( k2_tarski @ A @ B ) ) ) ) ))).
% 0.20/0.47  thf(zf_stmt_0, negated_conjecture,
% 0.20/0.47    (~( ![A:$i,B:$i,C:$i]:
% 0.20/0.47        ( ~( ( ~( r2_hidden @ A @ C ) ) & ( ~( r2_hidden @ B @ C ) ) & 
% 0.20/0.47             ( ( C ) != ( k4_xboole_0 @ C @ ( k2_tarski @ A @ B ) ) ) ) ) )),
% 0.20/0.47    inference('cnf.neg', [status(esa)], [t144_zfmisc_1])).
% 0.20/0.47  thf('0', plain, (~ (r2_hidden @ sk_B @ sk_C)),
% 0.20/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.47  thf(t57_zfmisc_1, axiom,
% 0.20/0.47    (![A:$i,B:$i,C:$i]:
% 0.20/0.47     ( ~( ( ~( r2_hidden @ A @ B ) ) & ( ~( r2_hidden @ C @ B ) ) & 
% 0.20/0.47          ( ~( r1_xboole_0 @ ( k2_tarski @ A @ C ) @ B ) ) ) ))).
% 0.20/0.47  thf('1', plain,
% 0.20/0.47      (![X34 : $i, X35 : $i, X36 : $i]:
% 0.20/0.47         ((r2_hidden @ X34 @ X35)
% 0.20/0.47          | (r1_xboole_0 @ (k2_tarski @ X34 @ X36) @ X35)
% 0.20/0.47          | (r2_hidden @ X36 @ X35))),
% 0.20/0.47      inference('cnf', [status(esa)], [t57_zfmisc_1])).
% 0.20/0.47  thf(symmetry_r1_xboole_0, axiom,
% 0.20/0.47    (![A:$i,B:$i]: ( ( r1_xboole_0 @ A @ B ) => ( r1_xboole_0 @ B @ A ) ))).
% 0.20/0.47  thf('2', plain,
% 0.20/0.47      (![X0 : $i, X1 : $i]:
% 0.20/0.47         ((r1_xboole_0 @ X0 @ X1) | ~ (r1_xboole_0 @ X1 @ X0))),
% 0.20/0.47      inference('cnf', [status(esa)], [symmetry_r1_xboole_0])).
% 0.20/0.47  thf('3', plain,
% 0.20/0.47      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.20/0.47         ((r2_hidden @ X1 @ X0)
% 0.20/0.47          | (r2_hidden @ X2 @ X0)
% 0.20/0.47          | (r1_xboole_0 @ X0 @ (k2_tarski @ X2 @ X1)))),
% 0.20/0.47      inference('sup-', [status(thm)], ['1', '2'])).
% 0.20/0.47  thf(t83_xboole_1, axiom,
% 0.20/0.47    (![A:$i,B:$i]:
% 0.20/0.47     ( ( r1_xboole_0 @ A @ B ) <=> ( ( k4_xboole_0 @ A @ B ) = ( A ) ) ))).
% 0.20/0.47  thf('4', plain,
% 0.20/0.47      (![X4 : $i, X5 : $i]:
% 0.20/0.47         (((k4_xboole_0 @ X4 @ X5) = (X4)) | ~ (r1_xboole_0 @ X4 @ X5))),
% 0.20/0.47      inference('cnf', [status(esa)], [t83_xboole_1])).
% 0.20/0.47  thf('5', plain,
% 0.20/0.47      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.20/0.47         ((r2_hidden @ X1 @ X2)
% 0.20/0.47          | (r2_hidden @ X0 @ X2)
% 0.20/0.47          | ((k4_xboole_0 @ X2 @ (k2_tarski @ X1 @ X0)) = (X2)))),
% 0.20/0.47      inference('sup-', [status(thm)], ['3', '4'])).
% 0.20/0.47  thf('6', plain,
% 0.20/0.47      (((sk_C) != (k4_xboole_0 @ sk_C @ (k2_tarski @ sk_A @ sk_B)))),
% 0.20/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.47  thf('7', plain,
% 0.20/0.47      ((((sk_C) != (sk_C))
% 0.20/0.47        | (r2_hidden @ sk_B @ sk_C)
% 0.20/0.47        | (r2_hidden @ sk_A @ sk_C))),
% 0.20/0.47      inference('sup-', [status(thm)], ['5', '6'])).
% 0.20/0.47  thf('8', plain, (((r2_hidden @ sk_A @ sk_C) | (r2_hidden @ sk_B @ sk_C))),
% 0.20/0.47      inference('simplify', [status(thm)], ['7'])).
% 0.20/0.47  thf('9', plain, (~ (r2_hidden @ sk_A @ sk_C)),
% 0.20/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.47  thf('10', plain, ((r2_hidden @ sk_B @ sk_C)),
% 0.20/0.47      inference('clc', [status(thm)], ['8', '9'])).
% 0.20/0.47  thf('11', plain, ($false), inference('demod', [status(thm)], ['0', '10'])).
% 0.20/0.47  
% 0.20/0.47  % SZS output end Refutation
% 0.20/0.47  
% 0.20/0.48  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
