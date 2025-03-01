%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.edfOaYOpwa

% Computer   : n010.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:38:01 EST 2020

% Result     : Theorem 0.22s
% Output     : Refutation 0.22s
% Verified   : 
% Statistics : Number of formulae       :   52 (  98 expanded)
%              Number of leaves         :   18 (  33 expanded)
%              Depth                    :   11
%              Number of atoms          :  318 ( 884 expanded)
%              Number of equality atoms :    6 (  11 expanded)
%              Maximal formula depth    :   11 (   5 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(sk_B_type,type,(
    sk_B: $i )).

thf(k4_xboole_0_type,type,(
    k4_xboole_0: $i > $i > $i )).

thf(v1_xboole_0_type,type,(
    v1_xboole_0: $i > $o )).

thf(r1_xboole_0_type,type,(
    r1_xboole_0: $i > $i > $o )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(k3_subset_1_type,type,(
    k3_subset_1: $i > $i > $i )).

thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(sk_C_1_type,type,(
    sk_C_1: $i )).

thf(t43_subset_1,conjecture,(
    ! [A: $i,B: $i] :
      ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) )
     => ! [C: $i] :
          ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ A ) )
         => ( ( r1_xboole_0 @ B @ C )
          <=> ( r1_tarski @ B @ ( k3_subset_1 @ A @ C ) ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i] :
        ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) )
       => ! [C: $i] :
            ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ A ) )
           => ( ( r1_xboole_0 @ B @ C )
            <=> ( r1_tarski @ B @ ( k3_subset_1 @ A @ C ) ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t43_subset_1])).

thf('0',plain,
    ( ~ ( r1_tarski @ sk_B @ ( k3_subset_1 @ sk_A @ sk_C_1 ) )
    | ~ ( r1_xboole_0 @ sk_B @ sk_C_1 ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('1',plain,
    ( ~ ( r1_tarski @ sk_B @ ( k3_subset_1 @ sk_A @ sk_C_1 ) )
   <= ~ ( r1_tarski @ sk_B @ ( k3_subset_1 @ sk_A @ sk_C_1 ) ) ),
    inference(split,[status(esa)],['0'])).

thf('2',plain,
    ( ~ ( r1_tarski @ sk_B @ ( k3_subset_1 @ sk_A @ sk_C_1 ) )
    | ~ ( r1_xboole_0 @ sk_B @ sk_C_1 ) ),
    inference(split,[status(esa)],['0'])).

thf('3',plain,
    ( ( r1_tarski @ sk_B @ ( k3_subset_1 @ sk_A @ sk_C_1 ) )
    | ( r1_xboole_0 @ sk_B @ sk_C_1 ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('4',plain,
    ( ( r1_tarski @ sk_B @ ( k3_subset_1 @ sk_A @ sk_C_1 ) )
   <= ( r1_tarski @ sk_B @ ( k3_subset_1 @ sk_A @ sk_C_1 ) ) ),
    inference(split,[status(esa)],['3'])).

thf('5',plain,(
    m1_subset_1 @ sk_C_1 @ ( k1_zfmisc_1 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(d5_subset_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) )
     => ( ( k3_subset_1 @ A @ B )
        = ( k4_xboole_0 @ A @ B ) ) ) )).

thf('6',plain,(
    ! [X14: $i,X15: $i] :
      ( ( ( k3_subset_1 @ X14 @ X15 )
        = ( k4_xboole_0 @ X14 @ X15 ) )
      | ~ ( m1_subset_1 @ X15 @ ( k1_zfmisc_1 @ X14 ) ) ) ),
    inference(cnf,[status(esa)],[d5_subset_1])).

thf('7',plain,
    ( ( k3_subset_1 @ sk_A @ sk_C_1 )
    = ( k4_xboole_0 @ sk_A @ sk_C_1 ) ),
    inference('sup-',[status(thm)],['5','6'])).

thf(t106_xboole_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( r1_tarski @ A @ ( k4_xboole_0 @ B @ C ) )
     => ( ( r1_tarski @ A @ B )
        & ( r1_xboole_0 @ A @ C ) ) ) )).

thf('8',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( r1_xboole_0 @ X0 @ X2 )
      | ~ ( r1_tarski @ X0 @ ( k4_xboole_0 @ X1 @ X2 ) ) ) ),
    inference(cnf,[status(esa)],[t106_xboole_1])).

thf('9',plain,(
    ! [X0: $i] :
      ( ~ ( r1_tarski @ X0 @ ( k3_subset_1 @ sk_A @ sk_C_1 ) )
      | ( r1_xboole_0 @ X0 @ sk_C_1 ) ) ),
    inference('sup-',[status(thm)],['7','8'])).

thf('10',plain,
    ( ( r1_xboole_0 @ sk_B @ sk_C_1 )
   <= ( r1_tarski @ sk_B @ ( k3_subset_1 @ sk_A @ sk_C_1 ) ) ),
    inference('sup-',[status(thm)],['4','9'])).

thf('11',plain,
    ( ~ ( r1_xboole_0 @ sk_B @ sk_C_1 )
   <= ~ ( r1_xboole_0 @ sk_B @ sk_C_1 ) ),
    inference(split,[status(esa)],['0'])).

thf('12',plain,
    ( ( r1_xboole_0 @ sk_B @ sk_C_1 )
    | ~ ( r1_tarski @ sk_B @ ( k3_subset_1 @ sk_A @ sk_C_1 ) ) ),
    inference('sup-',[status(thm)],['10','11'])).

thf('13',plain,(
    ~ ( r1_tarski @ sk_B @ ( k3_subset_1 @ sk_A @ sk_C_1 ) ) ),
    inference('sat_resolution*',[status(thm)],['2','12'])).

thf('14',plain,(
    ~ ( r1_tarski @ sk_B @ ( k3_subset_1 @ sk_A @ sk_C_1 ) ) ),
    inference(simpl_trail,[status(thm)],['1','13'])).

thf('15',plain,(
    m1_subset_1 @ sk_B @ ( k1_zfmisc_1 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(d2_subset_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( ( v1_xboole_0 @ A )
       => ( ( m1_subset_1 @ B @ A )
        <=> ( v1_xboole_0 @ B ) ) )
      & ( ~ ( v1_xboole_0 @ A )
       => ( ( m1_subset_1 @ B @ A )
        <=> ( r2_hidden @ B @ A ) ) ) ) )).

thf('16',plain,(
    ! [X11: $i,X12: $i] :
      ( ~ ( m1_subset_1 @ X11 @ X12 )
      | ( r2_hidden @ X11 @ X12 )
      | ( v1_xboole_0 @ X12 ) ) ),
    inference(cnf,[status(esa)],[d2_subset_1])).

thf('17',plain,
    ( ( v1_xboole_0 @ ( k1_zfmisc_1 @ sk_A ) )
    | ( r2_hidden @ sk_B @ ( k1_zfmisc_1 @ sk_A ) ) ),
    inference('sup-',[status(thm)],['15','16'])).

thf(fc1_subset_1,axiom,(
    ! [A: $i] :
      ~ ( v1_xboole_0 @ ( k1_zfmisc_1 @ A ) ) )).

thf('18',plain,(
    ! [X16: $i] :
      ~ ( v1_xboole_0 @ ( k1_zfmisc_1 @ X16 ) ) ),
    inference(cnf,[status(esa)],[fc1_subset_1])).

thf('19',plain,(
    r2_hidden @ sk_B @ ( k1_zfmisc_1 @ sk_A ) ),
    inference(clc,[status(thm)],['17','18'])).

thf(d1_zfmisc_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( B
        = ( k1_zfmisc_1 @ A ) )
    <=> ! [C: $i] :
          ( ( r2_hidden @ C @ B )
        <=> ( r1_tarski @ C @ A ) ) ) )).

thf('20',plain,(
    ! [X7: $i,X8: $i,X9: $i] :
      ( ~ ( r2_hidden @ X9 @ X8 )
      | ( r1_tarski @ X9 @ X7 )
      | ( X8
       != ( k1_zfmisc_1 @ X7 ) ) ) ),
    inference(cnf,[status(esa)],[d1_zfmisc_1])).

thf('21',plain,(
    ! [X7: $i,X9: $i] :
      ( ( r1_tarski @ X9 @ X7 )
      | ~ ( r2_hidden @ X9 @ ( k1_zfmisc_1 @ X7 ) ) ) ),
    inference(simplify,[status(thm)],['20'])).

thf('22',plain,(
    r1_tarski @ sk_B @ sk_A ),
    inference('sup-',[status(thm)],['19','21'])).

thf('23',plain,
    ( ( r1_xboole_0 @ sk_B @ sk_C_1 )
   <= ( r1_xboole_0 @ sk_B @ sk_C_1 ) ),
    inference(split,[status(esa)],['3'])).

thf(t86_xboole_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( ( r1_tarski @ A @ B )
        & ( r1_xboole_0 @ A @ C ) )
     => ( r1_tarski @ A @ ( k4_xboole_0 @ B @ C ) ) ) )).

thf('24',plain,(
    ! [X3: $i,X4: $i,X5: $i] :
      ( ~ ( r1_tarski @ X3 @ X4 )
      | ~ ( r1_xboole_0 @ X3 @ X5 )
      | ( r1_tarski @ X3 @ ( k4_xboole_0 @ X4 @ X5 ) ) ) ),
    inference(cnf,[status(esa)],[t86_xboole_1])).

thf('25',plain,
    ( ! [X0: $i] :
        ( ( r1_tarski @ sk_B @ ( k4_xboole_0 @ X0 @ sk_C_1 ) )
        | ~ ( r1_tarski @ sk_B @ X0 ) )
   <= ( r1_xboole_0 @ sk_B @ sk_C_1 ) ),
    inference('sup-',[status(thm)],['23','24'])).

thf('26',plain,
    ( ( r1_xboole_0 @ sk_B @ sk_C_1 )
    | ( r1_tarski @ sk_B @ ( k3_subset_1 @ sk_A @ sk_C_1 ) ) ),
    inference(split,[status(esa)],['3'])).

thf('27',plain,(
    r1_xboole_0 @ sk_B @ sk_C_1 ),
    inference('sat_resolution*',[status(thm)],['2','12','26'])).

thf('28',plain,(
    ! [X0: $i] :
      ( ( r1_tarski @ sk_B @ ( k4_xboole_0 @ X0 @ sk_C_1 ) )
      | ~ ( r1_tarski @ sk_B @ X0 ) ) ),
    inference(simpl_trail,[status(thm)],['25','27'])).

thf('29',plain,(
    r1_tarski @ sk_B @ ( k4_xboole_0 @ sk_A @ sk_C_1 ) ),
    inference('sup-',[status(thm)],['22','28'])).

thf('30',plain,
    ( ( k3_subset_1 @ sk_A @ sk_C_1 )
    = ( k4_xboole_0 @ sk_A @ sk_C_1 ) ),
    inference('sup-',[status(thm)],['5','6'])).

thf('31',plain,(
    r1_tarski @ sk_B @ ( k3_subset_1 @ sk_A @ sk_C_1 ) ),
    inference(demod,[status(thm)],['29','30'])).

thf('32',plain,(
    $false ),
    inference(demod,[status(thm)],['14','31'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.04/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.14/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.edfOaYOpwa
% 0.14/0.34  % Computer   : n010.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % DateTime   : Tue Dec  1 20:08:59 EST 2020
% 0.14/0.35  % CPUTime    : 
% 0.14/0.35  % Running portfolio for 600 s
% 0.14/0.35  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.14/0.35  % Number of cores: 8
% 0.14/0.35  % Python version: Python 3.6.8
% 0.21/0.35  % Running in FO mode
% 0.22/0.51  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.22/0.51  % Solved by: fo/fo7.sh
% 0.22/0.51  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.22/0.51  % done 60 iterations in 0.047s
% 0.22/0.51  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.22/0.51  % SZS output start Refutation
% 0.22/0.51  thf(sk_B_type, type, sk_B: $i).
% 0.22/0.51  thf(k4_xboole_0_type, type, k4_xboole_0: $i > $i > $i).
% 0.22/0.51  thf(v1_xboole_0_type, type, v1_xboole_0: $i > $o).
% 0.22/0.51  thf(r1_xboole_0_type, type, r1_xboole_0: $i > $i > $o).
% 0.22/0.51  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.22/0.51  thf(k3_subset_1_type, type, k3_subset_1: $i > $i > $i).
% 0.22/0.51  thf(k1_zfmisc_1_type, type, k1_zfmisc_1: $i > $i).
% 0.22/0.51  thf(m1_subset_1_type, type, m1_subset_1: $i > $i > $o).
% 0.22/0.51  thf(sk_A_type, type, sk_A: $i).
% 0.22/0.51  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.22/0.51  thf(sk_C_1_type, type, sk_C_1: $i).
% 0.22/0.51  thf(t43_subset_1, conjecture,
% 0.22/0.51    (![A:$i,B:$i]:
% 0.22/0.51     ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) ) =>
% 0.22/0.51       ( ![C:$i]:
% 0.22/0.51         ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ A ) ) =>
% 0.22/0.51           ( ( r1_xboole_0 @ B @ C ) <=>
% 0.22/0.51             ( r1_tarski @ B @ ( k3_subset_1 @ A @ C ) ) ) ) ) ))).
% 0.22/0.51  thf(zf_stmt_0, negated_conjecture,
% 0.22/0.51    (~( ![A:$i,B:$i]:
% 0.22/0.51        ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) ) =>
% 0.22/0.51          ( ![C:$i]:
% 0.22/0.51            ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ A ) ) =>
% 0.22/0.51              ( ( r1_xboole_0 @ B @ C ) <=>
% 0.22/0.51                ( r1_tarski @ B @ ( k3_subset_1 @ A @ C ) ) ) ) ) ) )),
% 0.22/0.51    inference('cnf.neg', [status(esa)], [t43_subset_1])).
% 0.22/0.51  thf('0', plain,
% 0.22/0.51      ((~ (r1_tarski @ sk_B @ (k3_subset_1 @ sk_A @ sk_C_1))
% 0.22/0.51        | ~ (r1_xboole_0 @ sk_B @ sk_C_1))),
% 0.22/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.51  thf('1', plain,
% 0.22/0.51      ((~ (r1_tarski @ sk_B @ (k3_subset_1 @ sk_A @ sk_C_1)))
% 0.22/0.51         <= (~ ((r1_tarski @ sk_B @ (k3_subset_1 @ sk_A @ sk_C_1))))),
% 0.22/0.51      inference('split', [status(esa)], ['0'])).
% 0.22/0.51  thf('2', plain,
% 0.22/0.51      (~ ((r1_tarski @ sk_B @ (k3_subset_1 @ sk_A @ sk_C_1))) | 
% 0.22/0.51       ~ ((r1_xboole_0 @ sk_B @ sk_C_1))),
% 0.22/0.51      inference('split', [status(esa)], ['0'])).
% 0.22/0.51  thf('3', plain,
% 0.22/0.51      (((r1_tarski @ sk_B @ (k3_subset_1 @ sk_A @ sk_C_1))
% 0.22/0.51        | (r1_xboole_0 @ sk_B @ sk_C_1))),
% 0.22/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.51  thf('4', plain,
% 0.22/0.51      (((r1_tarski @ sk_B @ (k3_subset_1 @ sk_A @ sk_C_1)))
% 0.22/0.51         <= (((r1_tarski @ sk_B @ (k3_subset_1 @ sk_A @ sk_C_1))))),
% 0.22/0.51      inference('split', [status(esa)], ['3'])).
% 0.22/0.51  thf('5', plain, ((m1_subset_1 @ sk_C_1 @ (k1_zfmisc_1 @ sk_A))),
% 0.22/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.51  thf(d5_subset_1, axiom,
% 0.22/0.51    (![A:$i,B:$i]:
% 0.22/0.51     ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) ) =>
% 0.22/0.51       ( ( k3_subset_1 @ A @ B ) = ( k4_xboole_0 @ A @ B ) ) ))).
% 0.22/0.51  thf('6', plain,
% 0.22/0.51      (![X14 : $i, X15 : $i]:
% 0.22/0.51         (((k3_subset_1 @ X14 @ X15) = (k4_xboole_0 @ X14 @ X15))
% 0.22/0.51          | ~ (m1_subset_1 @ X15 @ (k1_zfmisc_1 @ X14)))),
% 0.22/0.51      inference('cnf', [status(esa)], [d5_subset_1])).
% 0.22/0.51  thf('7', plain,
% 0.22/0.51      (((k3_subset_1 @ sk_A @ sk_C_1) = (k4_xboole_0 @ sk_A @ sk_C_1))),
% 0.22/0.51      inference('sup-', [status(thm)], ['5', '6'])).
% 0.22/0.51  thf(t106_xboole_1, axiom,
% 0.22/0.51    (![A:$i,B:$i,C:$i]:
% 0.22/0.51     ( ( r1_tarski @ A @ ( k4_xboole_0 @ B @ C ) ) =>
% 0.22/0.51       ( ( r1_tarski @ A @ B ) & ( r1_xboole_0 @ A @ C ) ) ))).
% 0.22/0.51  thf('8', plain,
% 0.22/0.51      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.22/0.51         ((r1_xboole_0 @ X0 @ X2)
% 0.22/0.51          | ~ (r1_tarski @ X0 @ (k4_xboole_0 @ X1 @ X2)))),
% 0.22/0.51      inference('cnf', [status(esa)], [t106_xboole_1])).
% 0.22/0.51  thf('9', plain,
% 0.22/0.51      (![X0 : $i]:
% 0.22/0.51         (~ (r1_tarski @ X0 @ (k3_subset_1 @ sk_A @ sk_C_1))
% 0.22/0.51          | (r1_xboole_0 @ X0 @ sk_C_1))),
% 0.22/0.51      inference('sup-', [status(thm)], ['7', '8'])).
% 0.22/0.51  thf('10', plain,
% 0.22/0.51      (((r1_xboole_0 @ sk_B @ sk_C_1))
% 0.22/0.51         <= (((r1_tarski @ sk_B @ (k3_subset_1 @ sk_A @ sk_C_1))))),
% 0.22/0.51      inference('sup-', [status(thm)], ['4', '9'])).
% 0.22/0.51  thf('11', plain,
% 0.22/0.51      ((~ (r1_xboole_0 @ sk_B @ sk_C_1)) <= (~ ((r1_xboole_0 @ sk_B @ sk_C_1)))),
% 0.22/0.51      inference('split', [status(esa)], ['0'])).
% 0.22/0.51  thf('12', plain,
% 0.22/0.51      (((r1_xboole_0 @ sk_B @ sk_C_1)) | 
% 0.22/0.51       ~ ((r1_tarski @ sk_B @ (k3_subset_1 @ sk_A @ sk_C_1)))),
% 0.22/0.51      inference('sup-', [status(thm)], ['10', '11'])).
% 0.22/0.51  thf('13', plain, (~ ((r1_tarski @ sk_B @ (k3_subset_1 @ sk_A @ sk_C_1)))),
% 0.22/0.51      inference('sat_resolution*', [status(thm)], ['2', '12'])).
% 0.22/0.51  thf('14', plain, (~ (r1_tarski @ sk_B @ (k3_subset_1 @ sk_A @ sk_C_1))),
% 0.22/0.51      inference('simpl_trail', [status(thm)], ['1', '13'])).
% 0.22/0.51  thf('15', plain, ((m1_subset_1 @ sk_B @ (k1_zfmisc_1 @ sk_A))),
% 0.22/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.51  thf(d2_subset_1, axiom,
% 0.22/0.51    (![A:$i,B:$i]:
% 0.22/0.51     ( ( ( v1_xboole_0 @ A ) =>
% 0.22/0.51         ( ( m1_subset_1 @ B @ A ) <=> ( v1_xboole_0 @ B ) ) ) & 
% 0.22/0.51       ( ( ~( v1_xboole_0 @ A ) ) =>
% 0.22/0.51         ( ( m1_subset_1 @ B @ A ) <=> ( r2_hidden @ B @ A ) ) ) ))).
% 0.22/0.51  thf('16', plain,
% 0.22/0.51      (![X11 : $i, X12 : $i]:
% 0.22/0.51         (~ (m1_subset_1 @ X11 @ X12)
% 0.22/0.51          | (r2_hidden @ X11 @ X12)
% 0.22/0.51          | (v1_xboole_0 @ X12))),
% 0.22/0.51      inference('cnf', [status(esa)], [d2_subset_1])).
% 0.22/0.51  thf('17', plain,
% 0.22/0.51      (((v1_xboole_0 @ (k1_zfmisc_1 @ sk_A))
% 0.22/0.51        | (r2_hidden @ sk_B @ (k1_zfmisc_1 @ sk_A)))),
% 0.22/0.51      inference('sup-', [status(thm)], ['15', '16'])).
% 0.22/0.51  thf(fc1_subset_1, axiom,
% 0.22/0.51    (![A:$i]: ( ~( v1_xboole_0 @ ( k1_zfmisc_1 @ A ) ) ))).
% 0.22/0.51  thf('18', plain, (![X16 : $i]: ~ (v1_xboole_0 @ (k1_zfmisc_1 @ X16))),
% 0.22/0.51      inference('cnf', [status(esa)], [fc1_subset_1])).
% 0.22/0.51  thf('19', plain, ((r2_hidden @ sk_B @ (k1_zfmisc_1 @ sk_A))),
% 0.22/0.51      inference('clc', [status(thm)], ['17', '18'])).
% 0.22/0.51  thf(d1_zfmisc_1, axiom,
% 0.22/0.51    (![A:$i,B:$i]:
% 0.22/0.51     ( ( ( B ) = ( k1_zfmisc_1 @ A ) ) <=>
% 0.22/0.51       ( ![C:$i]: ( ( r2_hidden @ C @ B ) <=> ( r1_tarski @ C @ A ) ) ) ))).
% 0.22/0.51  thf('20', plain,
% 0.22/0.51      (![X7 : $i, X8 : $i, X9 : $i]:
% 0.22/0.51         (~ (r2_hidden @ X9 @ X8)
% 0.22/0.51          | (r1_tarski @ X9 @ X7)
% 0.22/0.51          | ((X8) != (k1_zfmisc_1 @ X7)))),
% 0.22/0.51      inference('cnf', [status(esa)], [d1_zfmisc_1])).
% 0.22/0.51  thf('21', plain,
% 0.22/0.51      (![X7 : $i, X9 : $i]:
% 0.22/0.51         ((r1_tarski @ X9 @ X7) | ~ (r2_hidden @ X9 @ (k1_zfmisc_1 @ X7)))),
% 0.22/0.51      inference('simplify', [status(thm)], ['20'])).
% 0.22/0.51  thf('22', plain, ((r1_tarski @ sk_B @ sk_A)),
% 0.22/0.51      inference('sup-', [status(thm)], ['19', '21'])).
% 0.22/0.51  thf('23', plain,
% 0.22/0.51      (((r1_xboole_0 @ sk_B @ sk_C_1)) <= (((r1_xboole_0 @ sk_B @ sk_C_1)))),
% 0.22/0.51      inference('split', [status(esa)], ['3'])).
% 0.22/0.51  thf(t86_xboole_1, axiom,
% 0.22/0.51    (![A:$i,B:$i,C:$i]:
% 0.22/0.51     ( ( ( r1_tarski @ A @ B ) & ( r1_xboole_0 @ A @ C ) ) =>
% 0.22/0.51       ( r1_tarski @ A @ ( k4_xboole_0 @ B @ C ) ) ))).
% 0.22/0.51  thf('24', plain,
% 0.22/0.51      (![X3 : $i, X4 : $i, X5 : $i]:
% 0.22/0.51         (~ (r1_tarski @ X3 @ X4)
% 0.22/0.51          | ~ (r1_xboole_0 @ X3 @ X5)
% 0.22/0.51          | (r1_tarski @ X3 @ (k4_xboole_0 @ X4 @ X5)))),
% 0.22/0.51      inference('cnf', [status(esa)], [t86_xboole_1])).
% 0.22/0.51  thf('25', plain,
% 0.22/0.51      ((![X0 : $i]:
% 0.22/0.51          ((r1_tarski @ sk_B @ (k4_xboole_0 @ X0 @ sk_C_1))
% 0.22/0.51           | ~ (r1_tarski @ sk_B @ X0)))
% 0.22/0.51         <= (((r1_xboole_0 @ sk_B @ sk_C_1)))),
% 0.22/0.51      inference('sup-', [status(thm)], ['23', '24'])).
% 0.22/0.51  thf('26', plain,
% 0.22/0.51      (((r1_xboole_0 @ sk_B @ sk_C_1)) | 
% 0.22/0.51       ((r1_tarski @ sk_B @ (k3_subset_1 @ sk_A @ sk_C_1)))),
% 0.22/0.51      inference('split', [status(esa)], ['3'])).
% 0.22/0.51  thf('27', plain, (((r1_xboole_0 @ sk_B @ sk_C_1))),
% 0.22/0.51      inference('sat_resolution*', [status(thm)], ['2', '12', '26'])).
% 0.22/0.51  thf('28', plain,
% 0.22/0.51      (![X0 : $i]:
% 0.22/0.51         ((r1_tarski @ sk_B @ (k4_xboole_0 @ X0 @ sk_C_1))
% 0.22/0.51          | ~ (r1_tarski @ sk_B @ X0))),
% 0.22/0.51      inference('simpl_trail', [status(thm)], ['25', '27'])).
% 0.22/0.51  thf('29', plain, ((r1_tarski @ sk_B @ (k4_xboole_0 @ sk_A @ sk_C_1))),
% 0.22/0.51      inference('sup-', [status(thm)], ['22', '28'])).
% 0.22/0.51  thf('30', plain,
% 0.22/0.51      (((k3_subset_1 @ sk_A @ sk_C_1) = (k4_xboole_0 @ sk_A @ sk_C_1))),
% 0.22/0.51      inference('sup-', [status(thm)], ['5', '6'])).
% 0.22/0.51  thf('31', plain, ((r1_tarski @ sk_B @ (k3_subset_1 @ sk_A @ sk_C_1))),
% 0.22/0.51      inference('demod', [status(thm)], ['29', '30'])).
% 0.22/0.51  thf('32', plain, ($false), inference('demod', [status(thm)], ['14', '31'])).
% 0.22/0.51  
% 0.22/0.51  % SZS output end Refutation
% 0.22/0.51  
% 0.22/0.52  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
