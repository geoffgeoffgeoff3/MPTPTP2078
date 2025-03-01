%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.Cs4jgo83Iw

% Computer   : n006.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:46:15 EST 2020

% Result     : Theorem 0.21s
% Output     : Refutation 0.21s
% Verified   : 
% Statistics : Number of formulae       :   50 (  97 expanded)
%              Number of leaves         :   16 (  31 expanded)
%              Depth                    :   14
%              Number of atoms          :  359 ( 876 expanded)
%              Number of equality atoms :   34 (  82 expanded)
%              Maximal formula depth    :   10 (   5 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k4_xboole_0_type,type,(
    k4_xboole_0: $i > $i > $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(k10_relat_1_type,type,(
    k10_relat_1: $i > $i > $i )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(r1_xboole_0_type,type,(
    r1_xboole_0: $i > $i > $o )).

thf(k1_tarski_type,type,(
    k1_tarski: $i > $i )).

thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(k2_relat_1_type,type,(
    k2_relat_1: $i > $i )).

thf(t142_funct_1,conjecture,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ B )
     => ( ( r2_hidden @ A @ ( k2_relat_1 @ B ) )
      <=> ( ( k10_relat_1 @ B @ ( k1_tarski @ A ) )
         != k1_xboole_0 ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i] :
        ( ( v1_relat_1 @ B )
       => ( ( r2_hidden @ A @ ( k2_relat_1 @ B ) )
        <=> ( ( k10_relat_1 @ B @ ( k1_tarski @ A ) )
           != k1_xboole_0 ) ) ) ),
    inference('cnf.neg',[status(esa)],[t142_funct_1])).

thf('0',plain,
    ( ( ( k10_relat_1 @ sk_B @ ( k1_tarski @ sk_A ) )
     != k1_xboole_0 )
    | ( r2_hidden @ sk_A @ ( k2_relat_1 @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('1',plain,
    ( ( ( k10_relat_1 @ sk_B @ ( k1_tarski @ sk_A ) )
     != k1_xboole_0 )
   <= ( ( k10_relat_1 @ sk_B @ ( k1_tarski @ sk_A ) )
     != k1_xboole_0 ) ),
    inference(split,[status(esa)],['0'])).

thf(l27_zfmisc_1,axiom,(
    ! [A: $i,B: $i] :
      ( ~ ( r2_hidden @ A @ B )
     => ( r1_xboole_0 @ ( k1_tarski @ A ) @ B ) ) )).

thf('2',plain,(
    ! [X6: $i,X7: $i] :
      ( ( r1_xboole_0 @ ( k1_tarski @ X6 ) @ X7 )
      | ( r2_hidden @ X6 @ X7 ) ) ),
    inference(cnf,[status(esa)],[l27_zfmisc_1])).

thf(symmetry_r1_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_xboole_0 @ A @ B )
     => ( r1_xboole_0 @ B @ A ) ) )).

thf('3',plain,(
    ! [X0: $i,X1: $i] :
      ( ( r1_xboole_0 @ X0 @ X1 )
      | ~ ( r1_xboole_0 @ X1 @ X0 ) ) ),
    inference(cnf,[status(esa)],[symmetry_r1_xboole_0])).

thf('4',plain,(
    ! [X0: $i,X1: $i] :
      ( ( r2_hidden @ X1 @ X0 )
      | ( r1_xboole_0 @ X0 @ ( k1_tarski @ X1 ) ) ) ),
    inference('sup-',[status(thm)],['2','3'])).

thf(t173_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ B )
     => ( ( ( k10_relat_1 @ B @ A )
          = k1_xboole_0 )
      <=> ( r1_xboole_0 @ ( k2_relat_1 @ B ) @ A ) ) ) )).

thf('5',plain,(
    ! [X12: $i,X13: $i] :
      ( ~ ( r1_xboole_0 @ ( k2_relat_1 @ X12 ) @ X13 )
      | ( ( k10_relat_1 @ X12 @ X13 )
        = k1_xboole_0 )
      | ~ ( v1_relat_1 @ X12 ) ) ),
    inference(cnf,[status(esa)],[t173_relat_1])).

thf('6',plain,(
    ! [X0: $i,X1: $i] :
      ( ( r2_hidden @ X0 @ ( k2_relat_1 @ X1 ) )
      | ~ ( v1_relat_1 @ X1 )
      | ( ( k10_relat_1 @ X1 @ ( k1_tarski @ X0 ) )
        = k1_xboole_0 ) ) ),
    inference('sup-',[status(thm)],['4','5'])).

thf('7',plain,
    ( ( ( k10_relat_1 @ sk_B @ ( k1_tarski @ sk_A ) )
      = k1_xboole_0 )
    | ~ ( r2_hidden @ sk_A @ ( k2_relat_1 @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('8',plain,
    ( ~ ( r2_hidden @ sk_A @ ( k2_relat_1 @ sk_B ) )
   <= ~ ( r2_hidden @ sk_A @ ( k2_relat_1 @ sk_B ) ) ),
    inference(split,[status(esa)],['7'])).

thf('9',plain,
    ( ( ( ( k10_relat_1 @ sk_B @ ( k1_tarski @ sk_A ) )
        = k1_xboole_0 )
      | ~ ( v1_relat_1 @ sk_B ) )
   <= ~ ( r2_hidden @ sk_A @ ( k2_relat_1 @ sk_B ) ) ),
    inference('sup-',[status(thm)],['6','8'])).

thf('10',plain,(
    v1_relat_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('11',plain,
    ( ( ( k10_relat_1 @ sk_B @ ( k1_tarski @ sk_A ) )
      = k1_xboole_0 )
   <= ~ ( r2_hidden @ sk_A @ ( k2_relat_1 @ sk_B ) ) ),
    inference(demod,[status(thm)],['9','10'])).

thf('12',plain,
    ( ( ( k10_relat_1 @ sk_B @ ( k1_tarski @ sk_A ) )
     != k1_xboole_0 )
    | ( r2_hidden @ sk_A @ ( k2_relat_1 @ sk_B ) ) ),
    inference(split,[status(esa)],['0'])).

thf('13',plain,
    ( ( r2_hidden @ sk_A @ ( k2_relat_1 @ sk_B ) )
   <= ( r2_hidden @ sk_A @ ( k2_relat_1 @ sk_B ) ) ),
    inference(split,[status(esa)],['0'])).

thf('14',plain,
    ( ( ( k10_relat_1 @ sk_B @ ( k1_tarski @ sk_A ) )
      = k1_xboole_0 )
   <= ( ( k10_relat_1 @ sk_B @ ( k1_tarski @ sk_A ) )
      = k1_xboole_0 ) ),
    inference(split,[status(esa)],['7'])).

thf('15',plain,(
    ! [X12: $i,X13: $i] :
      ( ( ( k10_relat_1 @ X12 @ X13 )
       != k1_xboole_0 )
      | ( r1_xboole_0 @ ( k2_relat_1 @ X12 ) @ X13 )
      | ~ ( v1_relat_1 @ X12 ) ) ),
    inference(cnf,[status(esa)],[t173_relat_1])).

thf('16',plain,
    ( ( ( k1_xboole_0 != k1_xboole_0 )
      | ~ ( v1_relat_1 @ sk_B )
      | ( r1_xboole_0 @ ( k2_relat_1 @ sk_B ) @ ( k1_tarski @ sk_A ) ) )
   <= ( ( k10_relat_1 @ sk_B @ ( k1_tarski @ sk_A ) )
      = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['14','15'])).

thf('17',plain,(
    v1_relat_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('18',plain,
    ( ( ( k1_xboole_0 != k1_xboole_0 )
      | ( r1_xboole_0 @ ( k2_relat_1 @ sk_B ) @ ( k1_tarski @ sk_A ) ) )
   <= ( ( k10_relat_1 @ sk_B @ ( k1_tarski @ sk_A ) )
      = k1_xboole_0 ) ),
    inference(demod,[status(thm)],['16','17'])).

thf('19',plain,
    ( ( r1_xboole_0 @ ( k2_relat_1 @ sk_B ) @ ( k1_tarski @ sk_A ) )
   <= ( ( k10_relat_1 @ sk_B @ ( k1_tarski @ sk_A ) )
      = k1_xboole_0 ) ),
    inference(simplify,[status(thm)],['18'])).

thf(t83_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_xboole_0 @ A @ B )
    <=> ( ( k4_xboole_0 @ A @ B )
        = A ) ) )).

thf('20',plain,(
    ! [X2: $i,X3: $i] :
      ( ( ( k4_xboole_0 @ X2 @ X3 )
        = X2 )
      | ~ ( r1_xboole_0 @ X2 @ X3 ) ) ),
    inference(cnf,[status(esa)],[t83_xboole_1])).

thf('21',plain,
    ( ( ( k4_xboole_0 @ ( k2_relat_1 @ sk_B ) @ ( k1_tarski @ sk_A ) )
      = ( k2_relat_1 @ sk_B ) )
   <= ( ( k10_relat_1 @ sk_B @ ( k1_tarski @ sk_A ) )
      = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['19','20'])).

thf(t64_zfmisc_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( r2_hidden @ A @ ( k4_xboole_0 @ B @ ( k1_tarski @ C ) ) )
    <=> ( ( r2_hidden @ A @ B )
        & ( A != C ) ) ) )).

thf('22',plain,(
    ! [X8: $i,X9: $i,X10: $i] :
      ( ( X8 != X10 )
      | ~ ( r2_hidden @ X8 @ ( k4_xboole_0 @ X9 @ ( k1_tarski @ X10 ) ) ) ) ),
    inference(cnf,[status(esa)],[t64_zfmisc_1])).

thf('23',plain,(
    ! [X9: $i,X10: $i] :
      ~ ( r2_hidden @ X10 @ ( k4_xboole_0 @ X9 @ ( k1_tarski @ X10 ) ) ) ),
    inference(simplify,[status(thm)],['22'])).

thf('24',plain,
    ( ~ ( r2_hidden @ sk_A @ ( k2_relat_1 @ sk_B ) )
   <= ( ( k10_relat_1 @ sk_B @ ( k1_tarski @ sk_A ) )
      = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['21','23'])).

thf('25',plain,
    ( ~ ( r2_hidden @ sk_A @ ( k2_relat_1 @ sk_B ) )
    | ( ( k10_relat_1 @ sk_B @ ( k1_tarski @ sk_A ) )
     != k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['13','24'])).

thf('26',plain,
    ( ~ ( r2_hidden @ sk_A @ ( k2_relat_1 @ sk_B ) )
    | ( ( k10_relat_1 @ sk_B @ ( k1_tarski @ sk_A ) )
      = k1_xboole_0 ) ),
    inference(split,[status(esa)],['7'])).

thf('27',plain,(
    ~ ( r2_hidden @ sk_A @ ( k2_relat_1 @ sk_B ) ) ),
    inference('sat_resolution*',[status(thm)],['12','25','26'])).

thf('28',plain,
    ( ( k10_relat_1 @ sk_B @ ( k1_tarski @ sk_A ) )
    = k1_xboole_0 ),
    inference(simpl_trail,[status(thm)],['11','27'])).

thf('29',plain,
    ( ( k1_xboole_0 != k1_xboole_0 )
   <= ( ( k10_relat_1 @ sk_B @ ( k1_tarski @ sk_A ) )
     != k1_xboole_0 ) ),
    inference(demod,[status(thm)],['1','28'])).

thf('30',plain,
    ( $false
   <= ( ( k10_relat_1 @ sk_B @ ( k1_tarski @ sk_A ) )
     != k1_xboole_0 ) ),
    inference(simplify,[status(thm)],['29'])).

thf('31',plain,(
    ( k10_relat_1 @ sk_B @ ( k1_tarski @ sk_A ) )
 != k1_xboole_0 ),
    inference('sat_resolution*',[status(thm)],['12','25'])).

thf('32',plain,(
    $false ),
    inference(simpl_trail,[status(thm)],['30','31'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.Cs4jgo83Iw
% 0.14/0.34  % Computer   : n006.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % DateTime   : Tue Dec  1 16:00:53 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.34  % Running portfolio for 600 s
% 0.14/0.34  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.14/0.34  % Number of cores: 8
% 0.14/0.35  % Python version: Python 3.6.8
% 0.14/0.35  % Running in FO mode
% 0.21/0.49  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.21/0.49  % Solved by: fo/fo7.sh
% 0.21/0.49  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.21/0.49  % done 39 iterations in 0.014s
% 0.21/0.49  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.21/0.49  % SZS output start Refutation
% 0.21/0.49  thf(k4_xboole_0_type, type, k4_xboole_0: $i > $i > $i).
% 0.21/0.49  thf(sk_B_type, type, sk_B: $i).
% 0.21/0.49  thf(k10_relat_1_type, type, k10_relat_1: $i > $i > $i).
% 0.21/0.49  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.21/0.49  thf(r1_xboole_0_type, type, r1_xboole_0: $i > $i > $o).
% 0.21/0.49  thf(k1_tarski_type, type, k1_tarski: $i > $i).
% 0.21/0.49  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 0.21/0.49  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 0.21/0.49  thf(sk_A_type, type, sk_A: $i).
% 0.21/0.49  thf(k2_relat_1_type, type, k2_relat_1: $i > $i).
% 0.21/0.49  thf(t142_funct_1, conjecture,
% 0.21/0.49    (![A:$i,B:$i]:
% 0.21/0.49     ( ( v1_relat_1 @ B ) =>
% 0.21/0.49       ( ( r2_hidden @ A @ ( k2_relat_1 @ B ) ) <=>
% 0.21/0.49         ( ( k10_relat_1 @ B @ ( k1_tarski @ A ) ) != ( k1_xboole_0 ) ) ) ))).
% 0.21/0.49  thf(zf_stmt_0, negated_conjecture,
% 0.21/0.49    (~( ![A:$i,B:$i]:
% 0.21/0.49        ( ( v1_relat_1 @ B ) =>
% 0.21/0.49          ( ( r2_hidden @ A @ ( k2_relat_1 @ B ) ) <=>
% 0.21/0.49            ( ( k10_relat_1 @ B @ ( k1_tarski @ A ) ) != ( k1_xboole_0 ) ) ) ) )),
% 0.21/0.49    inference('cnf.neg', [status(esa)], [t142_funct_1])).
% 0.21/0.49  thf('0', plain,
% 0.21/0.49      ((((k10_relat_1 @ sk_B @ (k1_tarski @ sk_A)) != (k1_xboole_0))
% 0.21/0.49        | (r2_hidden @ sk_A @ (k2_relat_1 @ sk_B)))),
% 0.21/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.49  thf('1', plain,
% 0.21/0.49      ((((k10_relat_1 @ sk_B @ (k1_tarski @ sk_A)) != (k1_xboole_0)))
% 0.21/0.49         <= (~ (((k10_relat_1 @ sk_B @ (k1_tarski @ sk_A)) = (k1_xboole_0))))),
% 0.21/0.49      inference('split', [status(esa)], ['0'])).
% 0.21/0.49  thf(l27_zfmisc_1, axiom,
% 0.21/0.49    (![A:$i,B:$i]:
% 0.21/0.49     ( ( ~( r2_hidden @ A @ B ) ) => ( r1_xboole_0 @ ( k1_tarski @ A ) @ B ) ))).
% 0.21/0.49  thf('2', plain,
% 0.21/0.49      (![X6 : $i, X7 : $i]:
% 0.21/0.49         ((r1_xboole_0 @ (k1_tarski @ X6) @ X7) | (r2_hidden @ X6 @ X7))),
% 0.21/0.49      inference('cnf', [status(esa)], [l27_zfmisc_1])).
% 0.21/0.49  thf(symmetry_r1_xboole_0, axiom,
% 0.21/0.49    (![A:$i,B:$i]: ( ( r1_xboole_0 @ A @ B ) => ( r1_xboole_0 @ B @ A ) ))).
% 0.21/0.49  thf('3', plain,
% 0.21/0.49      (![X0 : $i, X1 : $i]:
% 0.21/0.49         ((r1_xboole_0 @ X0 @ X1) | ~ (r1_xboole_0 @ X1 @ X0))),
% 0.21/0.49      inference('cnf', [status(esa)], [symmetry_r1_xboole_0])).
% 0.21/0.49  thf('4', plain,
% 0.21/0.49      (![X0 : $i, X1 : $i]:
% 0.21/0.49         ((r2_hidden @ X1 @ X0) | (r1_xboole_0 @ X0 @ (k1_tarski @ X1)))),
% 0.21/0.49      inference('sup-', [status(thm)], ['2', '3'])).
% 0.21/0.49  thf(t173_relat_1, axiom,
% 0.21/0.49    (![A:$i,B:$i]:
% 0.21/0.49     ( ( v1_relat_1 @ B ) =>
% 0.21/0.49       ( ( ( k10_relat_1 @ B @ A ) = ( k1_xboole_0 ) ) <=>
% 0.21/0.49         ( r1_xboole_0 @ ( k2_relat_1 @ B ) @ A ) ) ))).
% 0.21/0.49  thf('5', plain,
% 0.21/0.49      (![X12 : $i, X13 : $i]:
% 0.21/0.49         (~ (r1_xboole_0 @ (k2_relat_1 @ X12) @ X13)
% 0.21/0.49          | ((k10_relat_1 @ X12 @ X13) = (k1_xboole_0))
% 0.21/0.49          | ~ (v1_relat_1 @ X12))),
% 0.21/0.49      inference('cnf', [status(esa)], [t173_relat_1])).
% 0.21/0.49  thf('6', plain,
% 0.21/0.49      (![X0 : $i, X1 : $i]:
% 0.21/0.49         ((r2_hidden @ X0 @ (k2_relat_1 @ X1))
% 0.21/0.49          | ~ (v1_relat_1 @ X1)
% 0.21/0.49          | ((k10_relat_1 @ X1 @ (k1_tarski @ X0)) = (k1_xboole_0)))),
% 0.21/0.49      inference('sup-', [status(thm)], ['4', '5'])).
% 0.21/0.49  thf('7', plain,
% 0.21/0.49      ((((k10_relat_1 @ sk_B @ (k1_tarski @ sk_A)) = (k1_xboole_0))
% 0.21/0.49        | ~ (r2_hidden @ sk_A @ (k2_relat_1 @ sk_B)))),
% 0.21/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.49  thf('8', plain,
% 0.21/0.49      ((~ (r2_hidden @ sk_A @ (k2_relat_1 @ sk_B)))
% 0.21/0.49         <= (~ ((r2_hidden @ sk_A @ (k2_relat_1 @ sk_B))))),
% 0.21/0.49      inference('split', [status(esa)], ['7'])).
% 0.21/0.49  thf('9', plain,
% 0.21/0.49      (((((k10_relat_1 @ sk_B @ (k1_tarski @ sk_A)) = (k1_xboole_0))
% 0.21/0.49         | ~ (v1_relat_1 @ sk_B)))
% 0.21/0.49         <= (~ ((r2_hidden @ sk_A @ (k2_relat_1 @ sk_B))))),
% 0.21/0.49      inference('sup-', [status(thm)], ['6', '8'])).
% 0.21/0.49  thf('10', plain, ((v1_relat_1 @ sk_B)),
% 0.21/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.49  thf('11', plain,
% 0.21/0.49      ((((k10_relat_1 @ sk_B @ (k1_tarski @ sk_A)) = (k1_xboole_0)))
% 0.21/0.49         <= (~ ((r2_hidden @ sk_A @ (k2_relat_1 @ sk_B))))),
% 0.21/0.49      inference('demod', [status(thm)], ['9', '10'])).
% 0.21/0.49  thf('12', plain,
% 0.21/0.49      (~ (((k10_relat_1 @ sk_B @ (k1_tarski @ sk_A)) = (k1_xboole_0))) | 
% 0.21/0.49       ((r2_hidden @ sk_A @ (k2_relat_1 @ sk_B)))),
% 0.21/0.49      inference('split', [status(esa)], ['0'])).
% 0.21/0.49  thf('13', plain,
% 0.21/0.49      (((r2_hidden @ sk_A @ (k2_relat_1 @ sk_B)))
% 0.21/0.49         <= (((r2_hidden @ sk_A @ (k2_relat_1 @ sk_B))))),
% 0.21/0.49      inference('split', [status(esa)], ['0'])).
% 0.21/0.49  thf('14', plain,
% 0.21/0.49      ((((k10_relat_1 @ sk_B @ (k1_tarski @ sk_A)) = (k1_xboole_0)))
% 0.21/0.49         <= ((((k10_relat_1 @ sk_B @ (k1_tarski @ sk_A)) = (k1_xboole_0))))),
% 0.21/0.49      inference('split', [status(esa)], ['7'])).
% 0.21/0.49  thf('15', plain,
% 0.21/0.49      (![X12 : $i, X13 : $i]:
% 0.21/0.49         (((k10_relat_1 @ X12 @ X13) != (k1_xboole_0))
% 0.21/0.49          | (r1_xboole_0 @ (k2_relat_1 @ X12) @ X13)
% 0.21/0.49          | ~ (v1_relat_1 @ X12))),
% 0.21/0.49      inference('cnf', [status(esa)], [t173_relat_1])).
% 0.21/0.49  thf('16', plain,
% 0.21/0.49      (((((k1_xboole_0) != (k1_xboole_0))
% 0.21/0.49         | ~ (v1_relat_1 @ sk_B)
% 0.21/0.49         | (r1_xboole_0 @ (k2_relat_1 @ sk_B) @ (k1_tarski @ sk_A))))
% 0.21/0.49         <= ((((k10_relat_1 @ sk_B @ (k1_tarski @ sk_A)) = (k1_xboole_0))))),
% 0.21/0.49      inference('sup-', [status(thm)], ['14', '15'])).
% 0.21/0.49  thf('17', plain, ((v1_relat_1 @ sk_B)),
% 0.21/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.49  thf('18', plain,
% 0.21/0.49      (((((k1_xboole_0) != (k1_xboole_0))
% 0.21/0.49         | (r1_xboole_0 @ (k2_relat_1 @ sk_B) @ (k1_tarski @ sk_A))))
% 0.21/0.49         <= ((((k10_relat_1 @ sk_B @ (k1_tarski @ sk_A)) = (k1_xboole_0))))),
% 0.21/0.49      inference('demod', [status(thm)], ['16', '17'])).
% 0.21/0.49  thf('19', plain,
% 0.21/0.49      (((r1_xboole_0 @ (k2_relat_1 @ sk_B) @ (k1_tarski @ sk_A)))
% 0.21/0.49         <= ((((k10_relat_1 @ sk_B @ (k1_tarski @ sk_A)) = (k1_xboole_0))))),
% 0.21/0.49      inference('simplify', [status(thm)], ['18'])).
% 0.21/0.49  thf(t83_xboole_1, axiom,
% 0.21/0.49    (![A:$i,B:$i]:
% 0.21/0.49     ( ( r1_xboole_0 @ A @ B ) <=> ( ( k4_xboole_0 @ A @ B ) = ( A ) ) ))).
% 0.21/0.49  thf('20', plain,
% 0.21/0.49      (![X2 : $i, X3 : $i]:
% 0.21/0.49         (((k4_xboole_0 @ X2 @ X3) = (X2)) | ~ (r1_xboole_0 @ X2 @ X3))),
% 0.21/0.49      inference('cnf', [status(esa)], [t83_xboole_1])).
% 0.21/0.49  thf('21', plain,
% 0.21/0.49      ((((k4_xboole_0 @ (k2_relat_1 @ sk_B) @ (k1_tarski @ sk_A))
% 0.21/0.49          = (k2_relat_1 @ sk_B)))
% 0.21/0.49         <= ((((k10_relat_1 @ sk_B @ (k1_tarski @ sk_A)) = (k1_xboole_0))))),
% 0.21/0.49      inference('sup-', [status(thm)], ['19', '20'])).
% 0.21/0.49  thf(t64_zfmisc_1, axiom,
% 0.21/0.49    (![A:$i,B:$i,C:$i]:
% 0.21/0.49     ( ( r2_hidden @ A @ ( k4_xboole_0 @ B @ ( k1_tarski @ C ) ) ) <=>
% 0.21/0.49       ( ( r2_hidden @ A @ B ) & ( ( A ) != ( C ) ) ) ))).
% 0.21/0.49  thf('22', plain,
% 0.21/0.49      (![X8 : $i, X9 : $i, X10 : $i]:
% 0.21/0.49         (((X8) != (X10))
% 0.21/0.49          | ~ (r2_hidden @ X8 @ (k4_xboole_0 @ X9 @ (k1_tarski @ X10))))),
% 0.21/0.49      inference('cnf', [status(esa)], [t64_zfmisc_1])).
% 0.21/0.49  thf('23', plain,
% 0.21/0.49      (![X9 : $i, X10 : $i]:
% 0.21/0.49         ~ (r2_hidden @ X10 @ (k4_xboole_0 @ X9 @ (k1_tarski @ X10)))),
% 0.21/0.49      inference('simplify', [status(thm)], ['22'])).
% 0.21/0.49  thf('24', plain,
% 0.21/0.49      ((~ (r2_hidden @ sk_A @ (k2_relat_1 @ sk_B)))
% 0.21/0.49         <= ((((k10_relat_1 @ sk_B @ (k1_tarski @ sk_A)) = (k1_xboole_0))))),
% 0.21/0.49      inference('sup-', [status(thm)], ['21', '23'])).
% 0.21/0.49  thf('25', plain,
% 0.21/0.49      (~ ((r2_hidden @ sk_A @ (k2_relat_1 @ sk_B))) | 
% 0.21/0.49       ~ (((k10_relat_1 @ sk_B @ (k1_tarski @ sk_A)) = (k1_xboole_0)))),
% 0.21/0.49      inference('sup-', [status(thm)], ['13', '24'])).
% 0.21/0.49  thf('26', plain,
% 0.21/0.49      (~ ((r2_hidden @ sk_A @ (k2_relat_1 @ sk_B))) | 
% 0.21/0.49       (((k10_relat_1 @ sk_B @ (k1_tarski @ sk_A)) = (k1_xboole_0)))),
% 0.21/0.49      inference('split', [status(esa)], ['7'])).
% 0.21/0.49  thf('27', plain, (~ ((r2_hidden @ sk_A @ (k2_relat_1 @ sk_B)))),
% 0.21/0.49      inference('sat_resolution*', [status(thm)], ['12', '25', '26'])).
% 0.21/0.49  thf('28', plain,
% 0.21/0.49      (((k10_relat_1 @ sk_B @ (k1_tarski @ sk_A)) = (k1_xboole_0))),
% 0.21/0.49      inference('simpl_trail', [status(thm)], ['11', '27'])).
% 0.21/0.49  thf('29', plain,
% 0.21/0.49      ((((k1_xboole_0) != (k1_xboole_0)))
% 0.21/0.49         <= (~ (((k10_relat_1 @ sk_B @ (k1_tarski @ sk_A)) = (k1_xboole_0))))),
% 0.21/0.49      inference('demod', [status(thm)], ['1', '28'])).
% 0.21/0.49  thf('30', plain,
% 0.21/0.49      (($false)
% 0.21/0.49         <= (~ (((k10_relat_1 @ sk_B @ (k1_tarski @ sk_A)) = (k1_xboole_0))))),
% 0.21/0.49      inference('simplify', [status(thm)], ['29'])).
% 0.21/0.49  thf('31', plain,
% 0.21/0.49      (~ (((k10_relat_1 @ sk_B @ (k1_tarski @ sk_A)) = (k1_xboole_0)))),
% 0.21/0.49      inference('sat_resolution*', [status(thm)], ['12', '25'])).
% 0.21/0.49  thf('32', plain, ($false),
% 0.21/0.49      inference('simpl_trail', [status(thm)], ['30', '31'])).
% 0.21/0.49  
% 0.21/0.49  % SZS output end Refutation
% 0.21/0.49  
% 0.21/0.50  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
