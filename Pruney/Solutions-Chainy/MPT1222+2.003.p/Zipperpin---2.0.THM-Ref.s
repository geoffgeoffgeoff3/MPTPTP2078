%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.DtKjkUuRVY

% Computer   : n002.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 14:02:44 EST 2020

% Result     : Theorem 0.21s
% Output     : Refutation 0.21s
% Verified   : 
% Statistics : Number of formulae       :   46 ( 112 expanded)
%              Number of leaves         :   13 (  36 expanded)
%              Depth                    :   11
%              Number of atoms          :  337 (1186 expanded)
%              Number of equality atoms :    4 (   9 expanded)
%              Maximal formula depth    :   12 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(l1_pre_topc_type,type,(
    l1_pre_topc: $i > $o )).

thf(v4_pre_topc_type,type,(
    v4_pre_topc: $i > $i > $o )).

thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(u1_struct_0_type,type,(
    u1_struct_0: $i > $i )).

thf(v3_pre_topc_type,type,(
    v3_pre_topc: $i > $i > $o )).

thf(k3_subset_1_type,type,(
    k3_subset_1: $i > $i > $i )).

thf(t30_tops_1,conjecture,(
    ! [A: $i] :
      ( ( l1_pre_topc @ A )
     => ! [B: $i] :
          ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) )
         => ( ( v3_pre_topc @ B @ A )
          <=> ( v4_pre_topc @ ( k3_subset_1 @ ( u1_struct_0 @ A ) @ B ) @ A ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i] :
        ( ( l1_pre_topc @ A )
       => ! [B: $i] :
            ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) )
           => ( ( v3_pre_topc @ B @ A )
            <=> ( v4_pre_topc @ ( k3_subset_1 @ ( u1_struct_0 @ A ) @ B ) @ A ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t30_tops_1])).

thf('0',plain,
    ( ~ ( v4_pre_topc @ ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ sk_B ) @ sk_A )
    | ~ ( v3_pre_topc @ sk_B @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('1',plain,
    ( ~ ( v4_pre_topc @ ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ sk_B ) @ sk_A )
   <= ~ ( v4_pre_topc @ ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ sk_B ) @ sk_A ) ),
    inference(split,[status(esa)],['0'])).

thf('2',plain,
    ( ~ ( v4_pre_topc @ ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ sk_B ) @ sk_A )
    | ~ ( v3_pre_topc @ sk_B @ sk_A ) ),
    inference(split,[status(esa)],['0'])).

thf('3',plain,
    ( ( v4_pre_topc @ ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ sk_B ) @ sk_A )
    | ( v3_pre_topc @ sk_B @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('4',plain,
    ( ( v4_pre_topc @ ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ sk_B ) @ sk_A )
   <= ( v4_pre_topc @ ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ sk_B ) @ sk_A ) ),
    inference(split,[status(esa)],['3'])).

thf('5',plain,(
    m1_subset_1 @ sk_B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(dt_k3_subset_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) )
     => ( m1_subset_1 @ ( k3_subset_1 @ A @ B ) @ ( k1_zfmisc_1 @ A ) ) ) )).

thf('6',plain,(
    ! [X0: $i,X1: $i] :
      ( ( m1_subset_1 @ ( k3_subset_1 @ X0 @ X1 ) @ ( k1_zfmisc_1 @ X0 ) )
      | ~ ( m1_subset_1 @ X1 @ ( k1_zfmisc_1 @ X0 ) ) ) ),
    inference(cnf,[status(esa)],[dt_k3_subset_1])).

thf('7',plain,(
    m1_subset_1 @ ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ sk_B ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ),
    inference('sup-',[status(thm)],['5','6'])).

thf(t29_tops_1,axiom,(
    ! [A: $i] :
      ( ( l1_pre_topc @ A )
     => ! [B: $i] :
          ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) )
         => ( ( v4_pre_topc @ B @ A )
          <=> ( v3_pre_topc @ ( k3_subset_1 @ ( u1_struct_0 @ A ) @ B ) @ A ) ) ) ) )).

thf('8',plain,(
    ! [X4: $i,X5: $i] :
      ( ~ ( m1_subset_1 @ X4 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X5 ) ) )
      | ~ ( v4_pre_topc @ X4 @ X5 )
      | ( v3_pre_topc @ ( k3_subset_1 @ ( u1_struct_0 @ X5 ) @ X4 ) @ X5 )
      | ~ ( l1_pre_topc @ X5 ) ) ),
    inference(cnf,[status(esa)],[t29_tops_1])).

thf('9',plain,
    ( ~ ( l1_pre_topc @ sk_A )
    | ( v3_pre_topc @ ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ sk_B ) ) @ sk_A )
    | ~ ( v4_pre_topc @ ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ sk_B ) @ sk_A ) ),
    inference('sup-',[status(thm)],['7','8'])).

thf('10',plain,(
    l1_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('11',plain,(
    m1_subset_1 @ sk_B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(involutiveness_k3_subset_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) )
     => ( ( k3_subset_1 @ A @ ( k3_subset_1 @ A @ B ) )
        = B ) ) )).

thf('12',plain,(
    ! [X2: $i,X3: $i] :
      ( ( ( k3_subset_1 @ X3 @ ( k3_subset_1 @ X3 @ X2 ) )
        = X2 )
      | ~ ( m1_subset_1 @ X2 @ ( k1_zfmisc_1 @ X3 ) ) ) ),
    inference(cnf,[status(esa)],[involutiveness_k3_subset_1])).

thf('13',plain,
    ( ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ sk_B ) )
    = sk_B ),
    inference('sup-',[status(thm)],['11','12'])).

thf('14',plain,
    ( ( v3_pre_topc @ sk_B @ sk_A )
    | ~ ( v4_pre_topc @ ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ sk_B ) @ sk_A ) ),
    inference(demod,[status(thm)],['9','10','13'])).

thf('15',plain,
    ( ( v3_pre_topc @ sk_B @ sk_A )
   <= ( v4_pre_topc @ ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ sk_B ) @ sk_A ) ),
    inference('sup-',[status(thm)],['4','14'])).

thf('16',plain,
    ( ~ ( v3_pre_topc @ sk_B @ sk_A )
   <= ~ ( v3_pre_topc @ sk_B @ sk_A ) ),
    inference(split,[status(esa)],['0'])).

thf('17',plain,
    ( ( v3_pre_topc @ sk_B @ sk_A )
    | ~ ( v4_pre_topc @ ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ sk_B ) @ sk_A ) ),
    inference('sup-',[status(thm)],['15','16'])).

thf('18',plain,(
    ~ ( v4_pre_topc @ ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ sk_B ) @ sk_A ) ),
    inference('sat_resolution*',[status(thm)],['2','17'])).

thf('19',plain,(
    ~ ( v4_pre_topc @ ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ sk_B ) @ sk_A ) ),
    inference(simpl_trail,[status(thm)],['1','18'])).

thf('20',plain,(
    m1_subset_1 @ ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ sk_B ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ),
    inference('sup-',[status(thm)],['5','6'])).

thf('21',plain,(
    ! [X4: $i,X5: $i] :
      ( ~ ( m1_subset_1 @ X4 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X5 ) ) )
      | ~ ( v3_pre_topc @ ( k3_subset_1 @ ( u1_struct_0 @ X5 ) @ X4 ) @ X5 )
      | ( v4_pre_topc @ X4 @ X5 )
      | ~ ( l1_pre_topc @ X5 ) ) ),
    inference(cnf,[status(esa)],[t29_tops_1])).

thf('22',plain,
    ( ~ ( l1_pre_topc @ sk_A )
    | ( v4_pre_topc @ ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ sk_B ) @ sk_A )
    | ~ ( v3_pre_topc @ ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ sk_B ) ) @ sk_A ) ),
    inference('sup-',[status(thm)],['20','21'])).

thf('23',plain,(
    l1_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('24',plain,
    ( ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ sk_B ) )
    = sk_B ),
    inference('sup-',[status(thm)],['11','12'])).

thf('25',plain,
    ( ( v4_pre_topc @ ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ sk_B ) @ sk_A )
    | ~ ( v3_pre_topc @ sk_B @ sk_A ) ),
    inference(demod,[status(thm)],['22','23','24'])).

thf('26',plain,
    ( ( v3_pre_topc @ sk_B @ sk_A )
   <= ( v3_pre_topc @ sk_B @ sk_A ) ),
    inference(split,[status(esa)],['3'])).

thf('27',plain,
    ( ( v3_pre_topc @ sk_B @ sk_A )
    | ( v4_pre_topc @ ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ sk_B ) @ sk_A ) ),
    inference(split,[status(esa)],['3'])).

thf('28',plain,(
    v3_pre_topc @ sk_B @ sk_A ),
    inference('sat_resolution*',[status(thm)],['2','17','27'])).

thf('29',plain,(
    v3_pre_topc @ sk_B @ sk_A ),
    inference(simpl_trail,[status(thm)],['26','28'])).

thf('30',plain,(
    v4_pre_topc @ ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ sk_B ) @ sk_A ),
    inference(demod,[status(thm)],['25','29'])).

thf('31',plain,(
    $false ),
    inference(demod,[status(thm)],['19','30'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.00/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.12/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.DtKjkUuRVY
% 0.14/0.34  % Computer   : n002.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.35  % CPULimit   : 60
% 0.14/0.35  % DateTime   : Tue Dec  1 18:56:52 EST 2020
% 0.14/0.35  % CPUTime    : 
% 0.14/0.35  % Running portfolio for 600 s
% 0.14/0.35  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.14/0.35  % Number of cores: 8
% 0.14/0.35  % Python version: Python 3.6.8
% 0.14/0.35  % Running in FO mode
% 0.21/0.47  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.21/0.47  % Solved by: fo/fo7.sh
% 0.21/0.47  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.21/0.47  % done 22 iterations in 0.014s
% 0.21/0.47  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.21/0.47  % SZS output start Refutation
% 0.21/0.47  thf(k1_zfmisc_1_type, type, k1_zfmisc_1: $i > $i).
% 0.21/0.47  thf(sk_B_type, type, sk_B: $i).
% 0.21/0.47  thf(l1_pre_topc_type, type, l1_pre_topc: $i > $o).
% 0.21/0.47  thf(v4_pre_topc_type, type, v4_pre_topc: $i > $i > $o).
% 0.21/0.47  thf(m1_subset_1_type, type, m1_subset_1: $i > $i > $o).
% 0.21/0.47  thf(sk_A_type, type, sk_A: $i).
% 0.21/0.47  thf(u1_struct_0_type, type, u1_struct_0: $i > $i).
% 0.21/0.47  thf(v3_pre_topc_type, type, v3_pre_topc: $i > $i > $o).
% 0.21/0.47  thf(k3_subset_1_type, type, k3_subset_1: $i > $i > $i).
% 0.21/0.47  thf(t30_tops_1, conjecture,
% 0.21/0.47    (![A:$i]:
% 0.21/0.47     ( ( l1_pre_topc @ A ) =>
% 0.21/0.47       ( ![B:$i]:
% 0.21/0.47         ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) =>
% 0.21/0.47           ( ( v3_pre_topc @ B @ A ) <=>
% 0.21/0.47             ( v4_pre_topc @ ( k3_subset_1 @ ( u1_struct_0 @ A ) @ B ) @ A ) ) ) ) ))).
% 0.21/0.47  thf(zf_stmt_0, negated_conjecture,
% 0.21/0.47    (~( ![A:$i]:
% 0.21/0.47        ( ( l1_pre_topc @ A ) =>
% 0.21/0.47          ( ![B:$i]:
% 0.21/0.47            ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) =>
% 0.21/0.47              ( ( v3_pre_topc @ B @ A ) <=>
% 0.21/0.47                ( v4_pre_topc @ ( k3_subset_1 @ ( u1_struct_0 @ A ) @ B ) @ A ) ) ) ) ) )),
% 0.21/0.47    inference('cnf.neg', [status(esa)], [t30_tops_1])).
% 0.21/0.47  thf('0', plain,
% 0.21/0.47      ((~ (v4_pre_topc @ (k3_subset_1 @ (u1_struct_0 @ sk_A) @ sk_B) @ sk_A)
% 0.21/0.47        | ~ (v3_pre_topc @ sk_B @ sk_A))),
% 0.21/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.47  thf('1', plain,
% 0.21/0.47      ((~ (v4_pre_topc @ (k3_subset_1 @ (u1_struct_0 @ sk_A) @ sk_B) @ sk_A))
% 0.21/0.47         <= (~
% 0.21/0.47             ((v4_pre_topc @ (k3_subset_1 @ (u1_struct_0 @ sk_A) @ sk_B) @ sk_A)))),
% 0.21/0.47      inference('split', [status(esa)], ['0'])).
% 0.21/0.47  thf('2', plain,
% 0.21/0.47      (~ ((v4_pre_topc @ (k3_subset_1 @ (u1_struct_0 @ sk_A) @ sk_B) @ sk_A)) | 
% 0.21/0.47       ~ ((v3_pre_topc @ sk_B @ sk_A))),
% 0.21/0.47      inference('split', [status(esa)], ['0'])).
% 0.21/0.47  thf('3', plain,
% 0.21/0.47      (((v4_pre_topc @ (k3_subset_1 @ (u1_struct_0 @ sk_A) @ sk_B) @ sk_A)
% 0.21/0.47        | (v3_pre_topc @ sk_B @ sk_A))),
% 0.21/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.47  thf('4', plain,
% 0.21/0.47      (((v4_pre_topc @ (k3_subset_1 @ (u1_struct_0 @ sk_A) @ sk_B) @ sk_A))
% 0.21/0.47         <= (((v4_pre_topc @ (k3_subset_1 @ (u1_struct_0 @ sk_A) @ sk_B) @ sk_A)))),
% 0.21/0.47      inference('split', [status(esa)], ['3'])).
% 0.21/0.47  thf('5', plain,
% 0.21/0.47      ((m1_subset_1 @ sk_B @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))),
% 0.21/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.47  thf(dt_k3_subset_1, axiom,
% 0.21/0.47    (![A:$i,B:$i]:
% 0.21/0.47     ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) ) =>
% 0.21/0.47       ( m1_subset_1 @ ( k3_subset_1 @ A @ B ) @ ( k1_zfmisc_1 @ A ) ) ))).
% 0.21/0.47  thf('6', plain,
% 0.21/0.47      (![X0 : $i, X1 : $i]:
% 0.21/0.47         ((m1_subset_1 @ (k3_subset_1 @ X0 @ X1) @ (k1_zfmisc_1 @ X0))
% 0.21/0.47          | ~ (m1_subset_1 @ X1 @ (k1_zfmisc_1 @ X0)))),
% 0.21/0.47      inference('cnf', [status(esa)], [dt_k3_subset_1])).
% 0.21/0.47  thf('7', plain,
% 0.21/0.47      ((m1_subset_1 @ (k3_subset_1 @ (u1_struct_0 @ sk_A) @ sk_B) @ 
% 0.21/0.47        (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))),
% 0.21/0.47      inference('sup-', [status(thm)], ['5', '6'])).
% 0.21/0.47  thf(t29_tops_1, axiom,
% 0.21/0.47    (![A:$i]:
% 0.21/0.47     ( ( l1_pre_topc @ A ) =>
% 0.21/0.47       ( ![B:$i]:
% 0.21/0.47         ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) =>
% 0.21/0.47           ( ( v4_pre_topc @ B @ A ) <=>
% 0.21/0.47             ( v3_pre_topc @ ( k3_subset_1 @ ( u1_struct_0 @ A ) @ B ) @ A ) ) ) ) ))).
% 0.21/0.47  thf('8', plain,
% 0.21/0.47      (![X4 : $i, X5 : $i]:
% 0.21/0.47         (~ (m1_subset_1 @ X4 @ (k1_zfmisc_1 @ (u1_struct_0 @ X5)))
% 0.21/0.47          | ~ (v4_pre_topc @ X4 @ X5)
% 0.21/0.47          | (v3_pre_topc @ (k3_subset_1 @ (u1_struct_0 @ X5) @ X4) @ X5)
% 0.21/0.47          | ~ (l1_pre_topc @ X5))),
% 0.21/0.47      inference('cnf', [status(esa)], [t29_tops_1])).
% 0.21/0.47  thf('9', plain,
% 0.21/0.47      ((~ (l1_pre_topc @ sk_A)
% 0.21/0.47        | (v3_pre_topc @ 
% 0.21/0.47           (k3_subset_1 @ (u1_struct_0 @ sk_A) @ 
% 0.21/0.47            (k3_subset_1 @ (u1_struct_0 @ sk_A) @ sk_B)) @ 
% 0.21/0.47           sk_A)
% 0.21/0.47        | ~ (v4_pre_topc @ (k3_subset_1 @ (u1_struct_0 @ sk_A) @ sk_B) @ sk_A))),
% 0.21/0.47      inference('sup-', [status(thm)], ['7', '8'])).
% 0.21/0.47  thf('10', plain, ((l1_pre_topc @ sk_A)),
% 0.21/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.47  thf('11', plain,
% 0.21/0.47      ((m1_subset_1 @ sk_B @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))),
% 0.21/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.47  thf(involutiveness_k3_subset_1, axiom,
% 0.21/0.47    (![A:$i,B:$i]:
% 0.21/0.47     ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) ) =>
% 0.21/0.47       ( ( k3_subset_1 @ A @ ( k3_subset_1 @ A @ B ) ) = ( B ) ) ))).
% 0.21/0.47  thf('12', plain,
% 0.21/0.47      (![X2 : $i, X3 : $i]:
% 0.21/0.47         (((k3_subset_1 @ X3 @ (k3_subset_1 @ X3 @ X2)) = (X2))
% 0.21/0.47          | ~ (m1_subset_1 @ X2 @ (k1_zfmisc_1 @ X3)))),
% 0.21/0.47      inference('cnf', [status(esa)], [involutiveness_k3_subset_1])).
% 0.21/0.47  thf('13', plain,
% 0.21/0.47      (((k3_subset_1 @ (u1_struct_0 @ sk_A) @ 
% 0.21/0.47         (k3_subset_1 @ (u1_struct_0 @ sk_A) @ sk_B)) = (sk_B))),
% 0.21/0.47      inference('sup-', [status(thm)], ['11', '12'])).
% 0.21/0.47  thf('14', plain,
% 0.21/0.47      (((v3_pre_topc @ sk_B @ sk_A)
% 0.21/0.47        | ~ (v4_pre_topc @ (k3_subset_1 @ (u1_struct_0 @ sk_A) @ sk_B) @ sk_A))),
% 0.21/0.47      inference('demod', [status(thm)], ['9', '10', '13'])).
% 0.21/0.47  thf('15', plain,
% 0.21/0.47      (((v3_pre_topc @ sk_B @ sk_A))
% 0.21/0.47         <= (((v4_pre_topc @ (k3_subset_1 @ (u1_struct_0 @ sk_A) @ sk_B) @ sk_A)))),
% 0.21/0.47      inference('sup-', [status(thm)], ['4', '14'])).
% 0.21/0.47  thf('16', plain,
% 0.21/0.47      ((~ (v3_pre_topc @ sk_B @ sk_A)) <= (~ ((v3_pre_topc @ sk_B @ sk_A)))),
% 0.21/0.47      inference('split', [status(esa)], ['0'])).
% 0.21/0.47  thf('17', plain,
% 0.21/0.47      (((v3_pre_topc @ sk_B @ sk_A)) | 
% 0.21/0.47       ~ ((v4_pre_topc @ (k3_subset_1 @ (u1_struct_0 @ sk_A) @ sk_B) @ sk_A))),
% 0.21/0.47      inference('sup-', [status(thm)], ['15', '16'])).
% 0.21/0.47  thf('18', plain,
% 0.21/0.47      (~ ((v4_pre_topc @ (k3_subset_1 @ (u1_struct_0 @ sk_A) @ sk_B) @ sk_A))),
% 0.21/0.47      inference('sat_resolution*', [status(thm)], ['2', '17'])).
% 0.21/0.47  thf('19', plain,
% 0.21/0.47      (~ (v4_pre_topc @ (k3_subset_1 @ (u1_struct_0 @ sk_A) @ sk_B) @ sk_A)),
% 0.21/0.47      inference('simpl_trail', [status(thm)], ['1', '18'])).
% 0.21/0.47  thf('20', plain,
% 0.21/0.47      ((m1_subset_1 @ (k3_subset_1 @ (u1_struct_0 @ sk_A) @ sk_B) @ 
% 0.21/0.47        (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))),
% 0.21/0.47      inference('sup-', [status(thm)], ['5', '6'])).
% 0.21/0.47  thf('21', plain,
% 0.21/0.47      (![X4 : $i, X5 : $i]:
% 0.21/0.47         (~ (m1_subset_1 @ X4 @ (k1_zfmisc_1 @ (u1_struct_0 @ X5)))
% 0.21/0.47          | ~ (v3_pre_topc @ (k3_subset_1 @ (u1_struct_0 @ X5) @ X4) @ X5)
% 0.21/0.47          | (v4_pre_topc @ X4 @ X5)
% 0.21/0.47          | ~ (l1_pre_topc @ X5))),
% 0.21/0.47      inference('cnf', [status(esa)], [t29_tops_1])).
% 0.21/0.47  thf('22', plain,
% 0.21/0.47      ((~ (l1_pre_topc @ sk_A)
% 0.21/0.47        | (v4_pre_topc @ (k3_subset_1 @ (u1_struct_0 @ sk_A) @ sk_B) @ sk_A)
% 0.21/0.47        | ~ (v3_pre_topc @ 
% 0.21/0.47             (k3_subset_1 @ (u1_struct_0 @ sk_A) @ 
% 0.21/0.47              (k3_subset_1 @ (u1_struct_0 @ sk_A) @ sk_B)) @ 
% 0.21/0.47             sk_A))),
% 0.21/0.47      inference('sup-', [status(thm)], ['20', '21'])).
% 0.21/0.47  thf('23', plain, ((l1_pre_topc @ sk_A)),
% 0.21/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.47  thf('24', plain,
% 0.21/0.47      (((k3_subset_1 @ (u1_struct_0 @ sk_A) @ 
% 0.21/0.47         (k3_subset_1 @ (u1_struct_0 @ sk_A) @ sk_B)) = (sk_B))),
% 0.21/0.47      inference('sup-', [status(thm)], ['11', '12'])).
% 0.21/0.47  thf('25', plain,
% 0.21/0.47      (((v4_pre_topc @ (k3_subset_1 @ (u1_struct_0 @ sk_A) @ sk_B) @ sk_A)
% 0.21/0.47        | ~ (v3_pre_topc @ sk_B @ sk_A))),
% 0.21/0.47      inference('demod', [status(thm)], ['22', '23', '24'])).
% 0.21/0.47  thf('26', plain,
% 0.21/0.47      (((v3_pre_topc @ sk_B @ sk_A)) <= (((v3_pre_topc @ sk_B @ sk_A)))),
% 0.21/0.47      inference('split', [status(esa)], ['3'])).
% 0.21/0.47  thf('27', plain,
% 0.21/0.47      (((v3_pre_topc @ sk_B @ sk_A)) | 
% 0.21/0.47       ((v4_pre_topc @ (k3_subset_1 @ (u1_struct_0 @ sk_A) @ sk_B) @ sk_A))),
% 0.21/0.47      inference('split', [status(esa)], ['3'])).
% 0.21/0.47  thf('28', plain, (((v3_pre_topc @ sk_B @ sk_A))),
% 0.21/0.47      inference('sat_resolution*', [status(thm)], ['2', '17', '27'])).
% 0.21/0.47  thf('29', plain, ((v3_pre_topc @ sk_B @ sk_A)),
% 0.21/0.47      inference('simpl_trail', [status(thm)], ['26', '28'])).
% 0.21/0.47  thf('30', plain,
% 0.21/0.47      ((v4_pre_topc @ (k3_subset_1 @ (u1_struct_0 @ sk_A) @ sk_B) @ sk_A)),
% 0.21/0.47      inference('demod', [status(thm)], ['25', '29'])).
% 0.21/0.47  thf('31', plain, ($false), inference('demod', [status(thm)], ['19', '30'])).
% 0.21/0.47  
% 0.21/0.47  % SZS output end Refutation
% 0.21/0.47  
% 0.21/0.48  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
