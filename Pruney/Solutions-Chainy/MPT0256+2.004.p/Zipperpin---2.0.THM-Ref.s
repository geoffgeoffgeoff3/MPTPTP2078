%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.fcfL2CmLoc

% Computer   : n014.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:33:19 EST 2020

% Result     : Theorem 0.21s
% Output     : Refutation 0.21s
% Verified   : 
% Statistics : Number of formulae       :   35 (  38 expanded)
%              Number of leaves         :   16 (  18 expanded)
%              Depth                    :    6
%              Number of atoms          :  186 ( 215 expanded)
%              Number of equality atoms :    7 (   9 expanded)
%              Maximal formula depth    :   11 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(sk_C_type,type,(
    sk_C: $i > $i > $i )).

thf(k1_tarski_type,type,(
    k1_tarski: $i > $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(k3_xboole_0_type,type,(
    k3_xboole_0: $i > $i > $i )).

thf(k2_tarski_type,type,(
    k2_tarski: $i > $i > $i )).

thf(r1_xboole_0_type,type,(
    r1_xboole_0: $i > $i > $o )).

thf(d3_tarski,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_tarski @ A @ B )
    <=> ! [C: $i] :
          ( ( r2_hidden @ C @ A )
         => ( r2_hidden @ C @ B ) ) ) )).

thf('0',plain,(
    ! [X3: $i,X5: $i] :
      ( ( r1_tarski @ X3 @ X5 )
      | ( r2_hidden @ ( sk_C @ X5 @ X3 ) @ X3 ) ) ),
    inference(cnf,[status(esa)],[d3_tarski])).

thf('1',plain,(
    ! [X3: $i,X5: $i] :
      ( ( r1_tarski @ X3 @ X5 )
      | ~ ( r2_hidden @ ( sk_C @ X5 @ X3 ) @ X5 ) ) ),
    inference(cnf,[status(esa)],[d3_tarski])).

thf('2',plain,(
    ! [X0: $i] :
      ( ( r1_tarski @ X0 @ X0 )
      | ( r1_tarski @ X0 @ X0 ) ) ),
    inference('sup-',[status(thm)],['0','1'])).

thf('3',plain,(
    ! [X0: $i] :
      ( r1_tarski @ X0 @ X0 ) ),
    inference(simplify,[status(thm)],['2'])).

thf(t69_enumset1,axiom,(
    ! [A: $i] :
      ( ( k2_tarski @ A @ A )
      = ( k1_tarski @ A ) ) )).

thf('4',plain,(
    ! [X12: $i] :
      ( ( k2_tarski @ X12 @ X12 )
      = ( k1_tarski @ X12 ) ) ),
    inference(cnf,[status(esa)],[t69_enumset1])).

thf(t38_zfmisc_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( r1_tarski @ ( k2_tarski @ A @ B ) @ C )
    <=> ( ( r2_hidden @ A @ C )
        & ( r2_hidden @ B @ C ) ) ) )).

thf('5',plain,(
    ! [X20: $i,X21: $i,X22: $i] :
      ( ( r2_hidden @ X20 @ X21 )
      | ~ ( r1_tarski @ ( k2_tarski @ X20 @ X22 ) @ X21 ) ) ),
    inference(cnf,[status(esa)],[t38_zfmisc_1])).

thf('6',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( r1_tarski @ ( k1_tarski @ X0 ) @ X1 )
      | ( r2_hidden @ X0 @ X1 ) ) ),
    inference('sup-',[status(thm)],['4','5'])).

thf('7',plain,(
    ! [X0: $i] :
      ( r2_hidden @ X0 @ ( k1_tarski @ X0 ) ) ),
    inference('sup-',[status(thm)],['3','6'])).

thf(l27_zfmisc_1,axiom,(
    ! [A: $i,B: $i] :
      ( ~ ( r2_hidden @ A @ B )
     => ( r1_xboole_0 @ ( k1_tarski @ A ) @ B ) ) )).

thf('8',plain,(
    ! [X18: $i,X19: $i] :
      ( ( r1_xboole_0 @ ( k1_tarski @ X18 ) @ X19 )
      | ( r2_hidden @ X18 @ X19 ) ) ),
    inference(cnf,[status(esa)],[l27_zfmisc_1])).

thf(t51_zfmisc_1,conjecture,(
    ! [A: $i,B: $i] :
      ( ( ( k3_xboole_0 @ A @ ( k1_tarski @ B ) )
        = ( k1_tarski @ B ) )
     => ( r2_hidden @ B @ A ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i] :
        ( ( ( k3_xboole_0 @ A @ ( k1_tarski @ B ) )
          = ( k1_tarski @ B ) )
       => ( r2_hidden @ B @ A ) ) ),
    inference('cnf.neg',[status(esa)],[t51_zfmisc_1])).

thf('9',plain,
    ( ( k3_xboole_0 @ sk_A @ ( k1_tarski @ sk_B ) )
    = ( k1_tarski @ sk_B ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(commutativity_k3_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ( k3_xboole_0 @ A @ B )
      = ( k3_xboole_0 @ B @ A ) ) )).

thf('10',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k3_xboole_0 @ X1 @ X0 )
      = ( k3_xboole_0 @ X0 @ X1 ) ) ),
    inference(cnf,[status(esa)],[commutativity_k3_xboole_0])).

thf(t4_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ~ ( ? [C: $i] :
              ( r2_hidden @ C @ ( k3_xboole_0 @ A @ B ) )
          & ( r1_xboole_0 @ A @ B ) )
      & ~ ( ~ ( r1_xboole_0 @ A @ B )
          & ! [C: $i] :
              ~ ( r2_hidden @ C @ ( k3_xboole_0 @ A @ B ) ) ) ) )).

thf('11',plain,(
    ! [X6: $i,X8: $i,X9: $i] :
      ( ~ ( r2_hidden @ X8 @ ( k3_xboole_0 @ X6 @ X9 ) )
      | ~ ( r1_xboole_0 @ X6 @ X9 ) ) ),
    inference(cnf,[status(esa)],[t4_xboole_0])).

thf('12',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( r2_hidden @ X2 @ ( k3_xboole_0 @ X1 @ X0 ) )
      | ~ ( r1_xboole_0 @ X0 @ X1 ) ) ),
    inference('sup-',[status(thm)],['10','11'])).

thf('13',plain,(
    ! [X0: $i] :
      ( ~ ( r2_hidden @ X0 @ ( k1_tarski @ sk_B ) )
      | ~ ( r1_xboole_0 @ ( k1_tarski @ sk_B ) @ sk_A ) ) ),
    inference('sup-',[status(thm)],['9','12'])).

thf('14',plain,(
    ! [X0: $i] :
      ( ( r2_hidden @ sk_B @ sk_A )
      | ~ ( r2_hidden @ X0 @ ( k1_tarski @ sk_B ) ) ) ),
    inference('sup-',[status(thm)],['8','13'])).

thf('15',plain,(
    ~ ( r2_hidden @ sk_B @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('16',plain,(
    ! [X0: $i] :
      ~ ( r2_hidden @ X0 @ ( k1_tarski @ sk_B ) ) ),
    inference(clc,[status(thm)],['14','15'])).

thf('17',plain,(
    $false ),
    inference('sup-',[status(thm)],['7','16'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.fcfL2CmLoc
% 0.13/0.34  % Computer   : n014.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 17:20:37 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running portfolio for 600 s
% 0.13/0.34  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.13/0.35  % Number of cores: 8
% 0.13/0.35  % Python version: Python 3.6.8
% 0.13/0.35  % Running in FO mode
% 0.21/0.47  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.21/0.47  % Solved by: fo/fo7.sh
% 0.21/0.47  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.21/0.47  % done 34 iterations in 0.019s
% 0.21/0.47  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.21/0.47  % SZS output start Refutation
% 0.21/0.47  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.21/0.47  thf(sk_C_type, type, sk_C: $i > $i > $i).
% 0.21/0.47  thf(k1_tarski_type, type, k1_tarski: $i > $i).
% 0.21/0.47  thf(sk_B_type, type, sk_B: $i).
% 0.21/0.47  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.21/0.47  thf(sk_A_type, type, sk_A: $i).
% 0.21/0.47  thf(k3_xboole_0_type, type, k3_xboole_0: $i > $i > $i).
% 0.21/0.47  thf(k2_tarski_type, type, k2_tarski: $i > $i > $i).
% 0.21/0.47  thf(r1_xboole_0_type, type, r1_xboole_0: $i > $i > $o).
% 0.21/0.47  thf(d3_tarski, axiom,
% 0.21/0.47    (![A:$i,B:$i]:
% 0.21/0.47     ( ( r1_tarski @ A @ B ) <=>
% 0.21/0.47       ( ![C:$i]: ( ( r2_hidden @ C @ A ) => ( r2_hidden @ C @ B ) ) ) ))).
% 0.21/0.47  thf('0', plain,
% 0.21/0.47      (![X3 : $i, X5 : $i]:
% 0.21/0.47         ((r1_tarski @ X3 @ X5) | (r2_hidden @ (sk_C @ X5 @ X3) @ X3))),
% 0.21/0.47      inference('cnf', [status(esa)], [d3_tarski])).
% 0.21/0.47  thf('1', plain,
% 0.21/0.47      (![X3 : $i, X5 : $i]:
% 0.21/0.47         ((r1_tarski @ X3 @ X5) | ~ (r2_hidden @ (sk_C @ X5 @ X3) @ X5))),
% 0.21/0.47      inference('cnf', [status(esa)], [d3_tarski])).
% 0.21/0.47  thf('2', plain,
% 0.21/0.47      (![X0 : $i]: ((r1_tarski @ X0 @ X0) | (r1_tarski @ X0 @ X0))),
% 0.21/0.47      inference('sup-', [status(thm)], ['0', '1'])).
% 0.21/0.47  thf('3', plain, (![X0 : $i]: (r1_tarski @ X0 @ X0)),
% 0.21/0.47      inference('simplify', [status(thm)], ['2'])).
% 0.21/0.47  thf(t69_enumset1, axiom,
% 0.21/0.47    (![A:$i]: ( ( k2_tarski @ A @ A ) = ( k1_tarski @ A ) ))).
% 0.21/0.47  thf('4', plain, (![X12 : $i]: ((k2_tarski @ X12 @ X12) = (k1_tarski @ X12))),
% 0.21/0.47      inference('cnf', [status(esa)], [t69_enumset1])).
% 0.21/0.47  thf(t38_zfmisc_1, axiom,
% 0.21/0.47    (![A:$i,B:$i,C:$i]:
% 0.21/0.47     ( ( r1_tarski @ ( k2_tarski @ A @ B ) @ C ) <=>
% 0.21/0.47       ( ( r2_hidden @ A @ C ) & ( r2_hidden @ B @ C ) ) ))).
% 0.21/0.47  thf('5', plain,
% 0.21/0.47      (![X20 : $i, X21 : $i, X22 : $i]:
% 0.21/0.47         ((r2_hidden @ X20 @ X21)
% 0.21/0.47          | ~ (r1_tarski @ (k2_tarski @ X20 @ X22) @ X21))),
% 0.21/0.47      inference('cnf', [status(esa)], [t38_zfmisc_1])).
% 0.21/0.47  thf('6', plain,
% 0.21/0.47      (![X0 : $i, X1 : $i]:
% 0.21/0.47         (~ (r1_tarski @ (k1_tarski @ X0) @ X1) | (r2_hidden @ X0 @ X1))),
% 0.21/0.47      inference('sup-', [status(thm)], ['4', '5'])).
% 0.21/0.47  thf('7', plain, (![X0 : $i]: (r2_hidden @ X0 @ (k1_tarski @ X0))),
% 0.21/0.47      inference('sup-', [status(thm)], ['3', '6'])).
% 0.21/0.47  thf(l27_zfmisc_1, axiom,
% 0.21/0.47    (![A:$i,B:$i]:
% 0.21/0.47     ( ( ~( r2_hidden @ A @ B ) ) => ( r1_xboole_0 @ ( k1_tarski @ A ) @ B ) ))).
% 0.21/0.47  thf('8', plain,
% 0.21/0.47      (![X18 : $i, X19 : $i]:
% 0.21/0.47         ((r1_xboole_0 @ (k1_tarski @ X18) @ X19) | (r2_hidden @ X18 @ X19))),
% 0.21/0.47      inference('cnf', [status(esa)], [l27_zfmisc_1])).
% 0.21/0.47  thf(t51_zfmisc_1, conjecture,
% 0.21/0.47    (![A:$i,B:$i]:
% 0.21/0.47     ( ( ( k3_xboole_0 @ A @ ( k1_tarski @ B ) ) = ( k1_tarski @ B ) ) =>
% 0.21/0.47       ( r2_hidden @ B @ A ) ))).
% 0.21/0.47  thf(zf_stmt_0, negated_conjecture,
% 0.21/0.47    (~( ![A:$i,B:$i]:
% 0.21/0.47        ( ( ( k3_xboole_0 @ A @ ( k1_tarski @ B ) ) = ( k1_tarski @ B ) ) =>
% 0.21/0.47          ( r2_hidden @ B @ A ) ) )),
% 0.21/0.47    inference('cnf.neg', [status(esa)], [t51_zfmisc_1])).
% 0.21/0.47  thf('9', plain,
% 0.21/0.47      (((k3_xboole_0 @ sk_A @ (k1_tarski @ sk_B)) = (k1_tarski @ sk_B))),
% 0.21/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.47  thf(commutativity_k3_xboole_0, axiom,
% 0.21/0.47    (![A:$i,B:$i]: ( ( k3_xboole_0 @ A @ B ) = ( k3_xboole_0 @ B @ A ) ))).
% 0.21/0.47  thf('10', plain,
% 0.21/0.47      (![X0 : $i, X1 : $i]: ((k3_xboole_0 @ X1 @ X0) = (k3_xboole_0 @ X0 @ X1))),
% 0.21/0.47      inference('cnf', [status(esa)], [commutativity_k3_xboole_0])).
% 0.21/0.47  thf(t4_xboole_0, axiom,
% 0.21/0.47    (![A:$i,B:$i]:
% 0.21/0.47     ( ( ~( ( ?[C:$i]: ( r2_hidden @ C @ ( k3_xboole_0 @ A @ B ) ) ) & 
% 0.21/0.47            ( r1_xboole_0 @ A @ B ) ) ) & 
% 0.21/0.47       ( ~( ( ~( r1_xboole_0 @ A @ B ) ) & 
% 0.21/0.47            ( ![C:$i]: ( ~( r2_hidden @ C @ ( k3_xboole_0 @ A @ B ) ) ) ) ) ) ))).
% 0.21/0.47  thf('11', plain,
% 0.21/0.47      (![X6 : $i, X8 : $i, X9 : $i]:
% 0.21/0.47         (~ (r2_hidden @ X8 @ (k3_xboole_0 @ X6 @ X9))
% 0.21/0.47          | ~ (r1_xboole_0 @ X6 @ X9))),
% 0.21/0.47      inference('cnf', [status(esa)], [t4_xboole_0])).
% 0.21/0.47  thf('12', plain,
% 0.21/0.47      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.21/0.47         (~ (r2_hidden @ X2 @ (k3_xboole_0 @ X1 @ X0))
% 0.21/0.47          | ~ (r1_xboole_0 @ X0 @ X1))),
% 0.21/0.47      inference('sup-', [status(thm)], ['10', '11'])).
% 0.21/0.47  thf('13', plain,
% 0.21/0.47      (![X0 : $i]:
% 0.21/0.47         (~ (r2_hidden @ X0 @ (k1_tarski @ sk_B))
% 0.21/0.47          | ~ (r1_xboole_0 @ (k1_tarski @ sk_B) @ sk_A))),
% 0.21/0.47      inference('sup-', [status(thm)], ['9', '12'])).
% 0.21/0.47  thf('14', plain,
% 0.21/0.47      (![X0 : $i]:
% 0.21/0.47         ((r2_hidden @ sk_B @ sk_A) | ~ (r2_hidden @ X0 @ (k1_tarski @ sk_B)))),
% 0.21/0.47      inference('sup-', [status(thm)], ['8', '13'])).
% 0.21/0.47  thf('15', plain, (~ (r2_hidden @ sk_B @ sk_A)),
% 0.21/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.47  thf('16', plain, (![X0 : $i]: ~ (r2_hidden @ X0 @ (k1_tarski @ sk_B))),
% 0.21/0.47      inference('clc', [status(thm)], ['14', '15'])).
% 0.21/0.47  thf('17', plain, ($false), inference('sup-', [status(thm)], ['7', '16'])).
% 0.21/0.47  
% 0.21/0.47  % SZS output end Refutation
% 0.21/0.47  
% 0.21/0.48  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
