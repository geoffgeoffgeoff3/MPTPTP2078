%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.canf18vLgg

% Computer   : n020.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:36:34 EST 2020

% Result     : Theorem 0.20s
% Output     : Refutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   52 (  62 expanded)
%              Number of leaves         :   21 (  27 expanded)
%              Depth                    :   12
%              Number of atoms          :  316 ( 464 expanded)
%              Number of equality atoms :   11 (  11 expanded)
%              Maximal formula depth    :   12 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(k2_tarski_type,type,(
    k2_tarski: $i > $i > $i )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(sk_C_1_type,type,(
    sk_C_1: $i )).

thf(k3_xboole_0_type,type,(
    k3_xboole_0: $i > $i > $i )).

thf(k1_tarski_type,type,(
    k1_tarski: $i > $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(r1_xboole_0_type,type,(
    r1_xboole_0: $i > $i > $o )).

thf(sk_D_type,type,(
    sk_D: $i )).

thf(k2_xboole_0_type,type,(
    k2_xboole_0: $i > $i > $i )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(t149_zfmisc_1,conjecture,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( ( r1_tarski @ ( k3_xboole_0 @ A @ B ) @ ( k1_tarski @ D ) )
        & ( r2_hidden @ D @ C )
        & ( r1_xboole_0 @ C @ B ) )
     => ( r1_xboole_0 @ ( k2_xboole_0 @ A @ C ) @ B ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i,C: $i,D: $i] :
        ( ( ( r1_tarski @ ( k3_xboole_0 @ A @ B ) @ ( k1_tarski @ D ) )
          & ( r2_hidden @ D @ C )
          & ( r1_xboole_0 @ C @ B ) )
       => ( r1_xboole_0 @ ( k2_xboole_0 @ A @ C ) @ B ) ) ),
    inference('cnf.neg',[status(esa)],[t149_zfmisc_1])).

thf('0',plain,(
    ~ ( r1_xboole_0 @ ( k2_xboole_0 @ sk_A @ sk_C_1 ) @ sk_B ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('1',plain,(
    r1_xboole_0 @ sk_C_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(symmetry_r1_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_xboole_0 @ A @ B )
     => ( r1_xboole_0 @ B @ A ) ) )).

thf('2',plain,(
    ! [X3: $i,X4: $i] :
      ( ( r1_xboole_0 @ X3 @ X4 )
      | ~ ( r1_xboole_0 @ X4 @ X3 ) ) ),
    inference(cnf,[status(esa)],[symmetry_r1_xboole_0])).

thf('3',plain,(
    r1_xboole_0 @ sk_B @ sk_C_1 ),
    inference('sup-',[status(thm)],['1','2'])).

thf(t69_enumset1,axiom,(
    ! [A: $i] :
      ( ( k2_tarski @ A @ A )
      = ( k1_tarski @ A ) ) )).

thf('4',plain,(
    ! [X15: $i] :
      ( ( k2_tarski @ X15 @ X15 )
      = ( k1_tarski @ X15 ) ) ),
    inference(cnf,[status(esa)],[t69_enumset1])).

thf(t57_zfmisc_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ~ ( ~ ( r2_hidden @ A @ B )
        & ~ ( r2_hidden @ C @ B )
        & ~ ( r1_xboole_0 @ ( k2_tarski @ A @ C ) @ B ) ) )).

thf('5',plain,(
    ! [X26: $i,X27: $i,X28: $i] :
      ( ( r2_hidden @ X26 @ X27 )
      | ( r1_xboole_0 @ ( k2_tarski @ X26 @ X28 ) @ X27 )
      | ( r2_hidden @ X28 @ X27 ) ) ),
    inference(cnf,[status(esa)],[t57_zfmisc_1])).

thf('6',plain,(
    ! [X0: $i,X1: $i] :
      ( ( r1_xboole_0 @ ( k1_tarski @ X0 ) @ X1 )
      | ( r2_hidden @ X0 @ X1 )
      | ( r2_hidden @ X0 @ X1 ) ) ),
    inference('sup+',[status(thm)],['4','5'])).

thf('7',plain,(
    ! [X0: $i,X1: $i] :
      ( ( r2_hidden @ X0 @ X1 )
      | ( r1_xboole_0 @ ( k1_tarski @ X0 ) @ X1 ) ) ),
    inference(simplify,[status(thm)],['6'])).

thf('8',plain,(
    r1_tarski @ ( k3_xboole_0 @ sk_A @ sk_B ) @ ( k1_tarski @ sk_D ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(l3_zfmisc_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_tarski @ A @ ( k1_tarski @ B ) )
    <=> ( ( A = k1_xboole_0 )
        | ( A
          = ( k1_tarski @ B ) ) ) ) )).

thf('9',plain,(
    ! [X21: $i,X22: $i] :
      ( ( X22
        = ( k1_tarski @ X21 ) )
      | ( X22 = k1_xboole_0 )
      | ~ ( r1_tarski @ X22 @ ( k1_tarski @ X21 ) ) ) ),
    inference(cnf,[status(esa)],[l3_zfmisc_1])).

thf('10',plain,
    ( ( ( k3_xboole_0 @ sk_A @ sk_B )
      = k1_xboole_0 )
    | ( ( k3_xboole_0 @ sk_A @ sk_B )
      = ( k1_tarski @ sk_D ) ) ),
    inference('sup-',[status(thm)],['8','9'])).

thf(t75_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ~ ( ~ ( r1_xboole_0 @ A @ B )
        & ( r1_xboole_0 @ ( k3_xboole_0 @ A @ B ) @ B ) ) )).

thf('11',plain,(
    ! [X13: $i,X14: $i] :
      ( ( r1_xboole_0 @ X13 @ X14 )
      | ~ ( r1_xboole_0 @ ( k3_xboole_0 @ X13 @ X14 ) @ X14 ) ) ),
    inference(cnf,[status(esa)],[t75_xboole_1])).

thf('12',plain,
    ( ~ ( r1_xboole_0 @ ( k1_tarski @ sk_D ) @ sk_B )
    | ( ( k3_xboole_0 @ sk_A @ sk_B )
      = k1_xboole_0 )
    | ( r1_xboole_0 @ sk_A @ sk_B ) ),
    inference('sup-',[status(thm)],['10','11'])).

thf(d7_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_xboole_0 @ A @ B )
    <=> ( ( k3_xboole_0 @ A @ B )
        = k1_xboole_0 ) ) )).

thf('13',plain,(
    ! [X0: $i,X2: $i] :
      ( ( r1_xboole_0 @ X0 @ X2 )
      | ( ( k3_xboole_0 @ X0 @ X2 )
       != k1_xboole_0 ) ) ),
    inference(cnf,[status(esa)],[d7_xboole_0])).

thf('14',plain,
    ( ( r1_xboole_0 @ sk_A @ sk_B )
    | ~ ( r1_xboole_0 @ ( k1_tarski @ sk_D ) @ sk_B ) ),
    inference(clc,[status(thm)],['12','13'])).

thf('15',plain,
    ( ( r2_hidden @ sk_D @ sk_B )
    | ( r1_xboole_0 @ sk_A @ sk_B ) ),
    inference('sup-',[status(thm)],['7','14'])).

thf('16',plain,(
    r1_xboole_0 @ sk_C_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('17',plain,(
    r2_hidden @ sk_D @ sk_C_1 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t3_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ~ ( ? [C: $i] :
              ( ( r2_hidden @ C @ B )
              & ( r2_hidden @ C @ A ) )
          & ( r1_xboole_0 @ A @ B ) )
      & ~ ( ~ ( r1_xboole_0 @ A @ B )
          & ! [C: $i] :
              ~ ( ( r2_hidden @ C @ A )
                & ( r2_hidden @ C @ B ) ) ) ) )).

thf('18',plain,(
    ! [X5: $i,X7: $i,X8: $i] :
      ( ~ ( r2_hidden @ X7 @ X5 )
      | ~ ( r2_hidden @ X7 @ X8 )
      | ~ ( r1_xboole_0 @ X5 @ X8 ) ) ),
    inference(cnf,[status(esa)],[t3_xboole_0])).

thf('19',plain,(
    ! [X0: $i] :
      ( ~ ( r1_xboole_0 @ sk_C_1 @ X0 )
      | ~ ( r2_hidden @ sk_D @ X0 ) ) ),
    inference('sup-',[status(thm)],['17','18'])).

thf('20',plain,(
    ~ ( r2_hidden @ sk_D @ sk_B ) ),
    inference('sup-',[status(thm)],['16','19'])).

thf('21',plain,(
    r1_xboole_0 @ sk_A @ sk_B ),
    inference(clc,[status(thm)],['15','20'])).

thf('22',plain,(
    ! [X3: $i,X4: $i] :
      ( ( r1_xboole_0 @ X3 @ X4 )
      | ~ ( r1_xboole_0 @ X4 @ X3 ) ) ),
    inference(cnf,[status(esa)],[symmetry_r1_xboole_0])).

thf('23',plain,(
    r1_xboole_0 @ sk_B @ sk_A ),
    inference('sup-',[status(thm)],['21','22'])).

thf(t70_xboole_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ~ ( ~ ( ( r1_xboole_0 @ A @ B )
              & ( r1_xboole_0 @ A @ C ) )
          & ( r1_xboole_0 @ A @ ( k2_xboole_0 @ B @ C ) ) )
      & ~ ( ~ ( r1_xboole_0 @ A @ ( k2_xboole_0 @ B @ C ) )
          & ( r1_xboole_0 @ A @ B )
          & ( r1_xboole_0 @ A @ C ) ) ) )).

thf('24',plain,(
    ! [X9: $i,X10: $i,X11: $i] :
      ( ( r1_xboole_0 @ X9 @ ( k2_xboole_0 @ X10 @ X11 ) )
      | ~ ( r1_xboole_0 @ X9 @ X10 )
      | ~ ( r1_xboole_0 @ X9 @ X11 ) ) ),
    inference(cnf,[status(esa)],[t70_xboole_1])).

thf('25',plain,(
    ! [X0: $i] :
      ( ~ ( r1_xboole_0 @ sk_B @ X0 )
      | ( r1_xboole_0 @ sk_B @ ( k2_xboole_0 @ sk_A @ X0 ) ) ) ),
    inference('sup-',[status(thm)],['23','24'])).

thf('26',plain,(
    r1_xboole_0 @ sk_B @ ( k2_xboole_0 @ sk_A @ sk_C_1 ) ),
    inference('sup-',[status(thm)],['3','25'])).

thf('27',plain,(
    ! [X3: $i,X4: $i] :
      ( ( r1_xboole_0 @ X3 @ X4 )
      | ~ ( r1_xboole_0 @ X4 @ X3 ) ) ),
    inference(cnf,[status(esa)],[symmetry_r1_xboole_0])).

thf('28',plain,(
    r1_xboole_0 @ ( k2_xboole_0 @ sk_A @ sk_C_1 ) @ sk_B ),
    inference('sup-',[status(thm)],['26','27'])).

thf('29',plain,(
    $false ),
    inference(demod,[status(thm)],['0','28'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.canf18vLgg
% 0.13/0.34  % Computer   : n020.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 10:00:22 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running portfolio for 600 s
% 0.13/0.34  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.13/0.34  % Number of cores: 8
% 0.13/0.34  % Python version: Python 3.6.8
% 0.13/0.35  % Running in FO mode
% 0.20/0.51  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.20/0.51  % Solved by: fo/fo7.sh
% 0.20/0.51  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.20/0.51  % done 145 iterations in 0.054s
% 0.20/0.51  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.20/0.51  % SZS output start Refutation
% 0.20/0.51  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 0.20/0.51  thf(k2_tarski_type, type, k2_tarski: $i > $i > $i).
% 0.20/0.51  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.20/0.51  thf(sk_A_type, type, sk_A: $i).
% 0.20/0.51  thf(sk_C_1_type, type, sk_C_1: $i).
% 0.20/0.51  thf(k3_xboole_0_type, type, k3_xboole_0: $i > $i > $i).
% 0.20/0.51  thf(k1_tarski_type, type, k1_tarski: $i > $i).
% 0.20/0.51  thf(sk_B_type, type, sk_B: $i).
% 0.20/0.51  thf(r1_xboole_0_type, type, r1_xboole_0: $i > $i > $o).
% 0.20/0.51  thf(sk_D_type, type, sk_D: $i).
% 0.20/0.51  thf(k2_xboole_0_type, type, k2_xboole_0: $i > $i > $i).
% 0.20/0.51  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.20/0.51  thf(t149_zfmisc_1, conjecture,
% 0.20/0.51    (![A:$i,B:$i,C:$i,D:$i]:
% 0.20/0.51     ( ( ( r1_tarski @ ( k3_xboole_0 @ A @ B ) @ ( k1_tarski @ D ) ) & 
% 0.20/0.51         ( r2_hidden @ D @ C ) & ( r1_xboole_0 @ C @ B ) ) =>
% 0.20/0.51       ( r1_xboole_0 @ ( k2_xboole_0 @ A @ C ) @ B ) ))).
% 0.20/0.51  thf(zf_stmt_0, negated_conjecture,
% 0.20/0.51    (~( ![A:$i,B:$i,C:$i,D:$i]:
% 0.20/0.51        ( ( ( r1_tarski @ ( k3_xboole_0 @ A @ B ) @ ( k1_tarski @ D ) ) & 
% 0.20/0.51            ( r2_hidden @ D @ C ) & ( r1_xboole_0 @ C @ B ) ) =>
% 0.20/0.51          ( r1_xboole_0 @ ( k2_xboole_0 @ A @ C ) @ B ) ) )),
% 0.20/0.51    inference('cnf.neg', [status(esa)], [t149_zfmisc_1])).
% 0.20/0.51  thf('0', plain, (~ (r1_xboole_0 @ (k2_xboole_0 @ sk_A @ sk_C_1) @ sk_B)),
% 0.20/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.51  thf('1', plain, ((r1_xboole_0 @ sk_C_1 @ sk_B)),
% 0.20/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.51  thf(symmetry_r1_xboole_0, axiom,
% 0.20/0.51    (![A:$i,B:$i]: ( ( r1_xboole_0 @ A @ B ) => ( r1_xboole_0 @ B @ A ) ))).
% 0.20/0.51  thf('2', plain,
% 0.20/0.51      (![X3 : $i, X4 : $i]:
% 0.20/0.51         ((r1_xboole_0 @ X3 @ X4) | ~ (r1_xboole_0 @ X4 @ X3))),
% 0.20/0.51      inference('cnf', [status(esa)], [symmetry_r1_xboole_0])).
% 0.20/0.51  thf('3', plain, ((r1_xboole_0 @ sk_B @ sk_C_1)),
% 0.20/0.51      inference('sup-', [status(thm)], ['1', '2'])).
% 0.20/0.51  thf(t69_enumset1, axiom,
% 0.20/0.51    (![A:$i]: ( ( k2_tarski @ A @ A ) = ( k1_tarski @ A ) ))).
% 0.20/0.51  thf('4', plain, (![X15 : $i]: ((k2_tarski @ X15 @ X15) = (k1_tarski @ X15))),
% 0.20/0.51      inference('cnf', [status(esa)], [t69_enumset1])).
% 0.20/0.51  thf(t57_zfmisc_1, axiom,
% 0.20/0.51    (![A:$i,B:$i,C:$i]:
% 0.20/0.51     ( ~( ( ~( r2_hidden @ A @ B ) ) & ( ~( r2_hidden @ C @ B ) ) & 
% 0.20/0.51          ( ~( r1_xboole_0 @ ( k2_tarski @ A @ C ) @ B ) ) ) ))).
% 0.20/0.51  thf('5', plain,
% 0.20/0.51      (![X26 : $i, X27 : $i, X28 : $i]:
% 0.20/0.51         ((r2_hidden @ X26 @ X27)
% 0.20/0.51          | (r1_xboole_0 @ (k2_tarski @ X26 @ X28) @ X27)
% 0.20/0.51          | (r2_hidden @ X28 @ X27))),
% 0.20/0.51      inference('cnf', [status(esa)], [t57_zfmisc_1])).
% 0.20/0.51  thf('6', plain,
% 0.20/0.51      (![X0 : $i, X1 : $i]:
% 0.20/0.51         ((r1_xboole_0 @ (k1_tarski @ X0) @ X1)
% 0.20/0.51          | (r2_hidden @ X0 @ X1)
% 0.20/0.51          | (r2_hidden @ X0 @ X1))),
% 0.20/0.51      inference('sup+', [status(thm)], ['4', '5'])).
% 0.20/0.51  thf('7', plain,
% 0.20/0.51      (![X0 : $i, X1 : $i]:
% 0.20/0.51         ((r2_hidden @ X0 @ X1) | (r1_xboole_0 @ (k1_tarski @ X0) @ X1))),
% 0.20/0.51      inference('simplify', [status(thm)], ['6'])).
% 0.20/0.51  thf('8', plain,
% 0.20/0.51      ((r1_tarski @ (k3_xboole_0 @ sk_A @ sk_B) @ (k1_tarski @ sk_D))),
% 0.20/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.51  thf(l3_zfmisc_1, axiom,
% 0.20/0.51    (![A:$i,B:$i]:
% 0.20/0.51     ( ( r1_tarski @ A @ ( k1_tarski @ B ) ) <=>
% 0.20/0.51       ( ( ( A ) = ( k1_xboole_0 ) ) | ( ( A ) = ( k1_tarski @ B ) ) ) ))).
% 0.20/0.51  thf('9', plain,
% 0.20/0.51      (![X21 : $i, X22 : $i]:
% 0.20/0.51         (((X22) = (k1_tarski @ X21))
% 0.20/0.51          | ((X22) = (k1_xboole_0))
% 0.20/0.51          | ~ (r1_tarski @ X22 @ (k1_tarski @ X21)))),
% 0.20/0.51      inference('cnf', [status(esa)], [l3_zfmisc_1])).
% 0.20/0.51  thf('10', plain,
% 0.20/0.51      ((((k3_xboole_0 @ sk_A @ sk_B) = (k1_xboole_0))
% 0.20/0.51        | ((k3_xboole_0 @ sk_A @ sk_B) = (k1_tarski @ sk_D)))),
% 0.20/0.51      inference('sup-', [status(thm)], ['8', '9'])).
% 0.20/0.51  thf(t75_xboole_1, axiom,
% 0.20/0.51    (![A:$i,B:$i]:
% 0.20/0.51     ( ~( ( ~( r1_xboole_0 @ A @ B ) ) & 
% 0.20/0.51          ( r1_xboole_0 @ ( k3_xboole_0 @ A @ B ) @ B ) ) ))).
% 0.20/0.51  thf('11', plain,
% 0.20/0.51      (![X13 : $i, X14 : $i]:
% 0.20/0.51         ((r1_xboole_0 @ X13 @ X14)
% 0.20/0.51          | ~ (r1_xboole_0 @ (k3_xboole_0 @ X13 @ X14) @ X14))),
% 0.20/0.51      inference('cnf', [status(esa)], [t75_xboole_1])).
% 0.20/0.51  thf('12', plain,
% 0.20/0.51      ((~ (r1_xboole_0 @ (k1_tarski @ sk_D) @ sk_B)
% 0.20/0.51        | ((k3_xboole_0 @ sk_A @ sk_B) = (k1_xboole_0))
% 0.20/0.51        | (r1_xboole_0 @ sk_A @ sk_B))),
% 0.20/0.51      inference('sup-', [status(thm)], ['10', '11'])).
% 0.20/0.51  thf(d7_xboole_0, axiom,
% 0.20/0.51    (![A:$i,B:$i]:
% 0.20/0.51     ( ( r1_xboole_0 @ A @ B ) <=>
% 0.20/0.51       ( ( k3_xboole_0 @ A @ B ) = ( k1_xboole_0 ) ) ))).
% 0.20/0.51  thf('13', plain,
% 0.20/0.51      (![X0 : $i, X2 : $i]:
% 0.20/0.51         ((r1_xboole_0 @ X0 @ X2) | ((k3_xboole_0 @ X0 @ X2) != (k1_xboole_0)))),
% 0.20/0.51      inference('cnf', [status(esa)], [d7_xboole_0])).
% 0.20/0.51  thf('14', plain,
% 0.20/0.51      (((r1_xboole_0 @ sk_A @ sk_B)
% 0.20/0.51        | ~ (r1_xboole_0 @ (k1_tarski @ sk_D) @ sk_B))),
% 0.20/0.51      inference('clc', [status(thm)], ['12', '13'])).
% 0.20/0.51  thf('15', plain, (((r2_hidden @ sk_D @ sk_B) | (r1_xboole_0 @ sk_A @ sk_B))),
% 0.20/0.51      inference('sup-', [status(thm)], ['7', '14'])).
% 0.20/0.51  thf('16', plain, ((r1_xboole_0 @ sk_C_1 @ sk_B)),
% 0.20/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.51  thf('17', plain, ((r2_hidden @ sk_D @ sk_C_1)),
% 0.20/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.51  thf(t3_xboole_0, axiom,
% 0.20/0.51    (![A:$i,B:$i]:
% 0.20/0.51     ( ( ~( ( ?[C:$i]: ( ( r2_hidden @ C @ B ) & ( r2_hidden @ C @ A ) ) ) & 
% 0.20/0.51            ( r1_xboole_0 @ A @ B ) ) ) & 
% 0.20/0.51       ( ~( ( ~( r1_xboole_0 @ A @ B ) ) & 
% 0.20/0.51            ( ![C:$i]: ( ~( ( r2_hidden @ C @ A ) & ( r2_hidden @ C @ B ) ) ) ) ) ) ))).
% 0.20/0.51  thf('18', plain,
% 0.20/0.51      (![X5 : $i, X7 : $i, X8 : $i]:
% 0.20/0.51         (~ (r2_hidden @ X7 @ X5)
% 0.20/0.51          | ~ (r2_hidden @ X7 @ X8)
% 0.20/0.51          | ~ (r1_xboole_0 @ X5 @ X8))),
% 0.20/0.51      inference('cnf', [status(esa)], [t3_xboole_0])).
% 0.20/0.51  thf('19', plain,
% 0.20/0.51      (![X0 : $i]: (~ (r1_xboole_0 @ sk_C_1 @ X0) | ~ (r2_hidden @ sk_D @ X0))),
% 0.20/0.51      inference('sup-', [status(thm)], ['17', '18'])).
% 0.20/0.51  thf('20', plain, (~ (r2_hidden @ sk_D @ sk_B)),
% 0.20/0.51      inference('sup-', [status(thm)], ['16', '19'])).
% 0.20/0.51  thf('21', plain, ((r1_xboole_0 @ sk_A @ sk_B)),
% 0.20/0.51      inference('clc', [status(thm)], ['15', '20'])).
% 0.20/0.51  thf('22', plain,
% 0.20/0.51      (![X3 : $i, X4 : $i]:
% 0.20/0.51         ((r1_xboole_0 @ X3 @ X4) | ~ (r1_xboole_0 @ X4 @ X3))),
% 0.20/0.51      inference('cnf', [status(esa)], [symmetry_r1_xboole_0])).
% 0.20/0.51  thf('23', plain, ((r1_xboole_0 @ sk_B @ sk_A)),
% 0.20/0.51      inference('sup-', [status(thm)], ['21', '22'])).
% 0.20/0.51  thf(t70_xboole_1, axiom,
% 0.20/0.51    (![A:$i,B:$i,C:$i]:
% 0.20/0.51     ( ( ~( ( ~( ( r1_xboole_0 @ A @ B ) & ( r1_xboole_0 @ A @ C ) ) ) & 
% 0.20/0.51            ( r1_xboole_0 @ A @ ( k2_xboole_0 @ B @ C ) ) ) ) & 
% 0.20/0.51       ( ~( ( ~( r1_xboole_0 @ A @ ( k2_xboole_0 @ B @ C ) ) ) & 
% 0.20/0.51            ( r1_xboole_0 @ A @ B ) & ( r1_xboole_0 @ A @ C ) ) ) ))).
% 0.20/0.51  thf('24', plain,
% 0.20/0.51      (![X9 : $i, X10 : $i, X11 : $i]:
% 0.20/0.51         ((r1_xboole_0 @ X9 @ (k2_xboole_0 @ X10 @ X11))
% 0.20/0.51          | ~ (r1_xboole_0 @ X9 @ X10)
% 0.20/0.51          | ~ (r1_xboole_0 @ X9 @ X11))),
% 0.20/0.51      inference('cnf', [status(esa)], [t70_xboole_1])).
% 0.20/0.51  thf('25', plain,
% 0.20/0.51      (![X0 : $i]:
% 0.20/0.51         (~ (r1_xboole_0 @ sk_B @ X0)
% 0.20/0.51          | (r1_xboole_0 @ sk_B @ (k2_xboole_0 @ sk_A @ X0)))),
% 0.20/0.51      inference('sup-', [status(thm)], ['23', '24'])).
% 0.20/0.51  thf('26', plain, ((r1_xboole_0 @ sk_B @ (k2_xboole_0 @ sk_A @ sk_C_1))),
% 0.20/0.51      inference('sup-', [status(thm)], ['3', '25'])).
% 0.20/0.51  thf('27', plain,
% 0.20/0.51      (![X3 : $i, X4 : $i]:
% 0.20/0.51         ((r1_xboole_0 @ X3 @ X4) | ~ (r1_xboole_0 @ X4 @ X3))),
% 0.20/0.51      inference('cnf', [status(esa)], [symmetry_r1_xboole_0])).
% 0.20/0.51  thf('28', plain, ((r1_xboole_0 @ (k2_xboole_0 @ sk_A @ sk_C_1) @ sk_B)),
% 0.20/0.51      inference('sup-', [status(thm)], ['26', '27'])).
% 0.20/0.51  thf('29', plain, ($false), inference('demod', [status(thm)], ['0', '28'])).
% 0.20/0.51  
% 0.20/0.51  % SZS output end Refutation
% 0.20/0.51  
% 0.20/0.52  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
