%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.sPVdqWefg5

% Computer   : n020.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 14:04:31 EST 2020

% Result     : Theorem 0.20s
% Output     : Refutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   66 ( 112 expanded)
%              Number of leaves         :   21 (  41 expanded)
%              Depth                    :   11
%              Number of atoms          :  567 (1202 expanded)
%              Number of equality atoms :    3 (   3 expanded)
%              Maximal formula depth    :   13 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(v1_tops_1_type,type,(
    v1_tops_1: $i > $i > $o )).

thf(l1_pre_topc_type,type,(
    l1_pre_topc: $i > $o )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(v3_tops_1_type,type,(
    v3_tops_1: $i > $i > $o )).

thf(u1_struct_0_type,type,(
    u1_struct_0: $i > $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(k2_pre_topc_type,type,(
    k2_pre_topc: $i > $i > $i )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(v2_tops_1_type,type,(
    v2_tops_1: $i > $i > $o )).

thf(k3_subset_1_type,type,(
    k3_subset_1: $i > $i > $i )).

thf(t91_tops_1,conjecture,(
    ! [A: $i] :
      ( ( l1_pre_topc @ A )
     => ! [B: $i] :
          ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) )
         => ( ( v3_tops_1 @ B @ A )
           => ( v1_tops_1 @ ( k3_subset_1 @ ( u1_struct_0 @ A ) @ B ) @ A ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i] :
        ( ( l1_pre_topc @ A )
       => ! [B: $i] :
            ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) )
           => ( ( v3_tops_1 @ B @ A )
             => ( v1_tops_1 @ ( k3_subset_1 @ ( u1_struct_0 @ A ) @ B ) @ A ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t91_tops_1])).

thf('0',plain,(
    ~ ( v1_tops_1 @ ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ sk_B ) @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('1',plain,(
    m1_subset_1 @ sk_B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(involutiveness_k3_subset_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) )
     => ( ( k3_subset_1 @ A @ ( k3_subset_1 @ A @ B ) )
        = B ) ) )).

thf('2',plain,(
    ! [X2: $i,X3: $i] :
      ( ( ( k3_subset_1 @ X3 @ ( k3_subset_1 @ X3 @ X2 ) )
        = X2 )
      | ~ ( m1_subset_1 @ X2 @ ( k1_zfmisc_1 @ X3 ) ) ) ),
    inference(cnf,[status(esa)],[involutiveness_k3_subset_1])).

thf('3',plain,
    ( ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ sk_B ) )
    = sk_B ),
    inference('sup-',[status(thm)],['1','2'])).

thf('4',plain,(
    m1_subset_1 @ sk_B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(dt_k2_pre_topc,axiom,(
    ! [A: $i,B: $i] :
      ( ( ( l1_pre_topc @ A )
        & ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) )
     => ( m1_subset_1 @ ( k2_pre_topc @ A @ B ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) ) )).

thf('5',plain,(
    ! [X7: $i,X8: $i] :
      ( ~ ( l1_pre_topc @ X7 )
      | ~ ( m1_subset_1 @ X8 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X7 ) ) )
      | ( m1_subset_1 @ ( k2_pre_topc @ X7 @ X8 ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X7 ) ) ) ) ),
    inference(cnf,[status(esa)],[dt_k2_pre_topc])).

thf('6',plain,
    ( ( m1_subset_1 @ ( k2_pre_topc @ sk_A @ sk_B ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) )
    | ~ ( l1_pre_topc @ sk_A ) ),
    inference('sup-',[status(thm)],['4','5'])).

thf('7',plain,(
    l1_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('8',plain,(
    m1_subset_1 @ ( k2_pre_topc @ sk_A @ sk_B ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ),
    inference(demod,[status(thm)],['6','7'])).

thf(t36_subset_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) )
     => ! [C: $i] :
          ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ A ) )
         => ( ( r1_tarski @ ( k3_subset_1 @ A @ B ) @ C )
           => ( r1_tarski @ ( k3_subset_1 @ A @ C ) @ B ) ) ) ) )).

thf('9',plain,(
    ! [X4: $i,X5: $i,X6: $i] :
      ( ~ ( m1_subset_1 @ X4 @ ( k1_zfmisc_1 @ X5 ) )
      | ( r1_tarski @ ( k3_subset_1 @ X5 @ X4 ) @ X6 )
      | ~ ( r1_tarski @ ( k3_subset_1 @ X5 @ X6 ) @ X4 )
      | ~ ( m1_subset_1 @ X6 @ ( k1_zfmisc_1 @ X5 ) ) ) ),
    inference(cnf,[status(esa)],[t36_subset_1])).

thf('10',plain,(
    ! [X0: $i] :
      ( ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) )
      | ~ ( r1_tarski @ ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ X0 ) @ ( k2_pre_topc @ sk_A @ sk_B ) )
      | ( r1_tarski @ ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ ( k2_pre_topc @ sk_A @ sk_B ) ) @ X0 ) ) ),
    inference('sup-',[status(thm)],['8','9'])).

thf('11',plain,
    ( ~ ( r1_tarski @ sk_B @ ( k2_pre_topc @ sk_A @ sk_B ) )
    | ( r1_tarski @ ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ ( k2_pre_topc @ sk_A @ sk_B ) ) @ ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ sk_B ) )
    | ~ ( m1_subset_1 @ ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ sk_B ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ) ),
    inference('sup-',[status(thm)],['3','10'])).

thf('12',plain,(
    m1_subset_1 @ sk_B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t48_pre_topc,axiom,(
    ! [A: $i] :
      ( ( l1_pre_topc @ A )
     => ! [B: $i] :
          ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) )
         => ( r1_tarski @ B @ ( k2_pre_topc @ A @ B ) ) ) ) )).

thf('13',plain,(
    ! [X9: $i,X10: $i] :
      ( ~ ( m1_subset_1 @ X9 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X10 ) ) )
      | ( r1_tarski @ X9 @ ( k2_pre_topc @ X10 @ X9 ) )
      | ~ ( l1_pre_topc @ X10 ) ) ),
    inference(cnf,[status(esa)],[t48_pre_topc])).

thf('14',plain,
    ( ~ ( l1_pre_topc @ sk_A )
    | ( r1_tarski @ sk_B @ ( k2_pre_topc @ sk_A @ sk_B ) ) ),
    inference('sup-',[status(thm)],['12','13'])).

thf('15',plain,(
    l1_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('16',plain,(
    r1_tarski @ sk_B @ ( k2_pre_topc @ sk_A @ sk_B ) ),
    inference(demod,[status(thm)],['14','15'])).

thf('17',plain,(
    m1_subset_1 @ sk_B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(dt_k3_subset_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) )
     => ( m1_subset_1 @ ( k3_subset_1 @ A @ B ) @ ( k1_zfmisc_1 @ A ) ) ) )).

thf('18',plain,(
    ! [X0: $i,X1: $i] :
      ( ( m1_subset_1 @ ( k3_subset_1 @ X0 @ X1 ) @ ( k1_zfmisc_1 @ X0 ) )
      | ~ ( m1_subset_1 @ X1 @ ( k1_zfmisc_1 @ X0 ) ) ) ),
    inference(cnf,[status(esa)],[dt_k3_subset_1])).

thf('19',plain,(
    m1_subset_1 @ ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ sk_B ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ),
    inference('sup-',[status(thm)],['17','18'])).

thf('20',plain,(
    r1_tarski @ ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ ( k2_pre_topc @ sk_A @ sk_B ) ) @ ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ sk_B ) ),
    inference(demod,[status(thm)],['11','16','19'])).

thf('21',plain,(
    m1_subset_1 @ ( k2_pre_topc @ sk_A @ sk_B ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ),
    inference(demod,[status(thm)],['6','7'])).

thf('22',plain,(
    ! [X0: $i,X1: $i] :
      ( ( m1_subset_1 @ ( k3_subset_1 @ X0 @ X1 ) @ ( k1_zfmisc_1 @ X0 ) )
      | ~ ( m1_subset_1 @ X1 @ ( k1_zfmisc_1 @ X0 ) ) ) ),
    inference(cnf,[status(esa)],[dt_k3_subset_1])).

thf('23',plain,(
    m1_subset_1 @ ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ ( k2_pre_topc @ sk_A @ sk_B ) ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ),
    inference('sup-',[status(thm)],['21','22'])).

thf(t79_tops_1,axiom,(
    ! [A: $i] :
      ( ( l1_pre_topc @ A )
     => ! [B: $i] :
          ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) )
         => ! [C: $i] :
              ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) )
             => ( ( ( v1_tops_1 @ B @ A )
                  & ( r1_tarski @ B @ C ) )
               => ( v1_tops_1 @ C @ A ) ) ) ) ) )).

thf('24',plain,(
    ! [X15: $i,X16: $i,X17: $i] :
      ( ~ ( m1_subset_1 @ X15 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X16 ) ) )
      | ~ ( v1_tops_1 @ X15 @ X16 )
      | ~ ( r1_tarski @ X15 @ X17 )
      | ( v1_tops_1 @ X17 @ X16 )
      | ~ ( m1_subset_1 @ X17 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X16 ) ) )
      | ~ ( l1_pre_topc @ X16 ) ) ),
    inference(cnf,[status(esa)],[t79_tops_1])).

thf('25',plain,(
    ! [X0: $i] :
      ( ~ ( l1_pre_topc @ sk_A )
      | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) )
      | ( v1_tops_1 @ X0 @ sk_A )
      | ~ ( r1_tarski @ ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ ( k2_pre_topc @ sk_A @ sk_B ) ) @ X0 )
      | ~ ( v1_tops_1 @ ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ ( k2_pre_topc @ sk_A @ sk_B ) ) @ sk_A ) ) ),
    inference('sup-',[status(thm)],['23','24'])).

thf('26',plain,(
    l1_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('27',plain,(
    m1_subset_1 @ ( k2_pre_topc @ sk_A @ sk_B ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ),
    inference(demod,[status(thm)],['6','7'])).

thf(d4_tops_1,axiom,(
    ! [A: $i] :
      ( ( l1_pre_topc @ A )
     => ! [B: $i] :
          ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) )
         => ( ( v2_tops_1 @ B @ A )
          <=> ( v1_tops_1 @ ( k3_subset_1 @ ( u1_struct_0 @ A ) @ B ) @ A ) ) ) ) )).

thf('28',plain,(
    ! [X11: $i,X12: $i] :
      ( ~ ( m1_subset_1 @ X11 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X12 ) ) )
      | ~ ( v2_tops_1 @ X11 @ X12 )
      | ( v1_tops_1 @ ( k3_subset_1 @ ( u1_struct_0 @ X12 ) @ X11 ) @ X12 )
      | ~ ( l1_pre_topc @ X12 ) ) ),
    inference(cnf,[status(esa)],[d4_tops_1])).

thf('29',plain,
    ( ~ ( l1_pre_topc @ sk_A )
    | ( v1_tops_1 @ ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ ( k2_pre_topc @ sk_A @ sk_B ) ) @ sk_A )
    | ~ ( v2_tops_1 @ ( k2_pre_topc @ sk_A @ sk_B ) @ sk_A ) ),
    inference('sup-',[status(thm)],['27','28'])).

thf('30',plain,(
    l1_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('31',plain,
    ( ( v1_tops_1 @ ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ ( k2_pre_topc @ sk_A @ sk_B ) ) @ sk_A )
    | ~ ( v2_tops_1 @ ( k2_pre_topc @ sk_A @ sk_B ) @ sk_A ) ),
    inference(demod,[status(thm)],['29','30'])).

thf('32',plain,(
    m1_subset_1 @ sk_B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(d5_tops_1,axiom,(
    ! [A: $i] :
      ( ( l1_pre_topc @ A )
     => ! [B: $i] :
          ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) )
         => ( ( v3_tops_1 @ B @ A )
          <=> ( v2_tops_1 @ ( k2_pre_topc @ A @ B ) @ A ) ) ) ) )).

thf('33',plain,(
    ! [X13: $i,X14: $i] :
      ( ~ ( m1_subset_1 @ X13 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X14 ) ) )
      | ~ ( v3_tops_1 @ X13 @ X14 )
      | ( v2_tops_1 @ ( k2_pre_topc @ X14 @ X13 ) @ X14 )
      | ~ ( l1_pre_topc @ X14 ) ) ),
    inference(cnf,[status(esa)],[d5_tops_1])).

thf('34',plain,
    ( ~ ( l1_pre_topc @ sk_A )
    | ( v2_tops_1 @ ( k2_pre_topc @ sk_A @ sk_B ) @ sk_A )
    | ~ ( v3_tops_1 @ sk_B @ sk_A ) ),
    inference('sup-',[status(thm)],['32','33'])).

thf('35',plain,(
    l1_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('36',plain,(
    v3_tops_1 @ sk_B @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('37',plain,(
    v2_tops_1 @ ( k2_pre_topc @ sk_A @ sk_B ) @ sk_A ),
    inference(demod,[status(thm)],['34','35','36'])).

thf('38',plain,(
    v1_tops_1 @ ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ ( k2_pre_topc @ sk_A @ sk_B ) ) @ sk_A ),
    inference(demod,[status(thm)],['31','37'])).

thf('39',plain,(
    ! [X0: $i] :
      ( ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) )
      | ( v1_tops_1 @ X0 @ sk_A )
      | ~ ( r1_tarski @ ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ ( k2_pre_topc @ sk_A @ sk_B ) ) @ X0 ) ) ),
    inference(demod,[status(thm)],['25','26','38'])).

thf('40',plain,
    ( ( v1_tops_1 @ ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ sk_B ) @ sk_A )
    | ~ ( m1_subset_1 @ ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ sk_B ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ) ),
    inference('sup-',[status(thm)],['20','39'])).

thf('41',plain,(
    m1_subset_1 @ ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ sk_B ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ),
    inference('sup-',[status(thm)],['17','18'])).

thf('42',plain,(
    v1_tops_1 @ ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ sk_B ) @ sk_A ),
    inference(demod,[status(thm)],['40','41'])).

thf('43',plain,(
    $false ),
    inference(demod,[status(thm)],['0','42'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.10/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.10/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.sPVdqWefg5
% 0.14/0.34  % Computer   : n020.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % DateTime   : Tue Dec  1 11:40:37 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.34  % Running portfolio for 600 s
% 0.14/0.34  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.14/0.34  % Number of cores: 8
% 0.14/0.34  % Python version: Python 3.6.8
% 0.14/0.35  % Running in FO mode
% 0.20/0.53  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.20/0.53  % Solved by: fo/fo7.sh
% 0.20/0.53  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.20/0.53  % done 89 iterations in 0.075s
% 0.20/0.53  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.20/0.53  % SZS output start Refutation
% 0.20/0.53  thf(k1_zfmisc_1_type, type, k1_zfmisc_1: $i > $i).
% 0.20/0.53  thf(v1_tops_1_type, type, v1_tops_1: $i > $i > $o).
% 0.20/0.53  thf(l1_pre_topc_type, type, l1_pre_topc: $i > $o).
% 0.20/0.53  thf(sk_A_type, type, sk_A: $i).
% 0.20/0.53  thf(v3_tops_1_type, type, v3_tops_1: $i > $i > $o).
% 0.20/0.53  thf(u1_struct_0_type, type, u1_struct_0: $i > $i).
% 0.20/0.53  thf(sk_B_type, type, sk_B: $i).
% 0.20/0.53  thf(m1_subset_1_type, type, m1_subset_1: $i > $i > $o).
% 0.20/0.53  thf(k2_pre_topc_type, type, k2_pre_topc: $i > $i > $i).
% 0.20/0.53  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.20/0.53  thf(v2_tops_1_type, type, v2_tops_1: $i > $i > $o).
% 0.20/0.53  thf(k3_subset_1_type, type, k3_subset_1: $i > $i > $i).
% 0.20/0.53  thf(t91_tops_1, conjecture,
% 0.20/0.53    (![A:$i]:
% 0.20/0.53     ( ( l1_pre_topc @ A ) =>
% 0.20/0.53       ( ![B:$i]:
% 0.20/0.53         ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) =>
% 0.20/0.53           ( ( v3_tops_1 @ B @ A ) =>
% 0.20/0.53             ( v1_tops_1 @ ( k3_subset_1 @ ( u1_struct_0 @ A ) @ B ) @ A ) ) ) ) ))).
% 0.20/0.53  thf(zf_stmt_0, negated_conjecture,
% 0.20/0.53    (~( ![A:$i]:
% 0.20/0.53        ( ( l1_pre_topc @ A ) =>
% 0.20/0.53          ( ![B:$i]:
% 0.20/0.53            ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) =>
% 0.20/0.53              ( ( v3_tops_1 @ B @ A ) =>
% 0.20/0.53                ( v1_tops_1 @ ( k3_subset_1 @ ( u1_struct_0 @ A ) @ B ) @ A ) ) ) ) ) )),
% 0.20/0.53    inference('cnf.neg', [status(esa)], [t91_tops_1])).
% 0.20/0.53  thf('0', plain,
% 0.20/0.53      (~ (v1_tops_1 @ (k3_subset_1 @ (u1_struct_0 @ sk_A) @ sk_B) @ sk_A)),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf('1', plain,
% 0.20/0.53      ((m1_subset_1 @ sk_B @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf(involutiveness_k3_subset_1, axiom,
% 0.20/0.53    (![A:$i,B:$i]:
% 0.20/0.53     ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) ) =>
% 0.20/0.53       ( ( k3_subset_1 @ A @ ( k3_subset_1 @ A @ B ) ) = ( B ) ) ))).
% 0.20/0.53  thf('2', plain,
% 0.20/0.53      (![X2 : $i, X3 : $i]:
% 0.20/0.53         (((k3_subset_1 @ X3 @ (k3_subset_1 @ X3 @ X2)) = (X2))
% 0.20/0.53          | ~ (m1_subset_1 @ X2 @ (k1_zfmisc_1 @ X3)))),
% 0.20/0.53      inference('cnf', [status(esa)], [involutiveness_k3_subset_1])).
% 0.20/0.53  thf('3', plain,
% 0.20/0.53      (((k3_subset_1 @ (u1_struct_0 @ sk_A) @ 
% 0.20/0.53         (k3_subset_1 @ (u1_struct_0 @ sk_A) @ sk_B)) = (sk_B))),
% 0.20/0.53      inference('sup-', [status(thm)], ['1', '2'])).
% 0.20/0.53  thf('4', plain,
% 0.20/0.53      ((m1_subset_1 @ sk_B @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf(dt_k2_pre_topc, axiom,
% 0.20/0.53    (![A:$i,B:$i]:
% 0.20/0.53     ( ( ( l1_pre_topc @ A ) & 
% 0.20/0.53         ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) ) =>
% 0.20/0.53       ( m1_subset_1 @
% 0.20/0.53         ( k2_pre_topc @ A @ B ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) ))).
% 0.20/0.53  thf('5', plain,
% 0.20/0.53      (![X7 : $i, X8 : $i]:
% 0.20/0.53         (~ (l1_pre_topc @ X7)
% 0.20/0.53          | ~ (m1_subset_1 @ X8 @ (k1_zfmisc_1 @ (u1_struct_0 @ X7)))
% 0.20/0.53          | (m1_subset_1 @ (k2_pre_topc @ X7 @ X8) @ 
% 0.20/0.53             (k1_zfmisc_1 @ (u1_struct_0 @ X7))))),
% 0.20/0.53      inference('cnf', [status(esa)], [dt_k2_pre_topc])).
% 0.20/0.53  thf('6', plain,
% 0.20/0.53      (((m1_subset_1 @ (k2_pre_topc @ sk_A @ sk_B) @ 
% 0.20/0.53         (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))
% 0.20/0.53        | ~ (l1_pre_topc @ sk_A))),
% 0.20/0.53      inference('sup-', [status(thm)], ['4', '5'])).
% 0.20/0.53  thf('7', plain, ((l1_pre_topc @ sk_A)),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf('8', plain,
% 0.20/0.53      ((m1_subset_1 @ (k2_pre_topc @ sk_A @ sk_B) @ 
% 0.20/0.53        (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))),
% 0.20/0.53      inference('demod', [status(thm)], ['6', '7'])).
% 0.20/0.53  thf(t36_subset_1, axiom,
% 0.20/0.53    (![A:$i,B:$i]:
% 0.20/0.53     ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) ) =>
% 0.20/0.53       ( ![C:$i]:
% 0.20/0.53         ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ A ) ) =>
% 0.20/0.53           ( ( r1_tarski @ ( k3_subset_1 @ A @ B ) @ C ) =>
% 0.20/0.53             ( r1_tarski @ ( k3_subset_1 @ A @ C ) @ B ) ) ) ) ))).
% 0.20/0.53  thf('9', plain,
% 0.20/0.53      (![X4 : $i, X5 : $i, X6 : $i]:
% 0.20/0.53         (~ (m1_subset_1 @ X4 @ (k1_zfmisc_1 @ X5))
% 0.20/0.53          | (r1_tarski @ (k3_subset_1 @ X5 @ X4) @ X6)
% 0.20/0.53          | ~ (r1_tarski @ (k3_subset_1 @ X5 @ X6) @ X4)
% 0.20/0.53          | ~ (m1_subset_1 @ X6 @ (k1_zfmisc_1 @ X5)))),
% 0.20/0.53      inference('cnf', [status(esa)], [t36_subset_1])).
% 0.20/0.53  thf('10', plain,
% 0.20/0.53      (![X0 : $i]:
% 0.20/0.53         (~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))
% 0.20/0.53          | ~ (r1_tarski @ (k3_subset_1 @ (u1_struct_0 @ sk_A) @ X0) @ 
% 0.20/0.53               (k2_pre_topc @ sk_A @ sk_B))
% 0.20/0.53          | (r1_tarski @ 
% 0.20/0.53             (k3_subset_1 @ (u1_struct_0 @ sk_A) @ (k2_pre_topc @ sk_A @ sk_B)) @ 
% 0.20/0.53             X0))),
% 0.20/0.53      inference('sup-', [status(thm)], ['8', '9'])).
% 0.20/0.53  thf('11', plain,
% 0.20/0.53      ((~ (r1_tarski @ sk_B @ (k2_pre_topc @ sk_A @ sk_B))
% 0.20/0.53        | (r1_tarski @ 
% 0.20/0.53           (k3_subset_1 @ (u1_struct_0 @ sk_A) @ (k2_pre_topc @ sk_A @ sk_B)) @ 
% 0.20/0.53           (k3_subset_1 @ (u1_struct_0 @ sk_A) @ sk_B))
% 0.20/0.53        | ~ (m1_subset_1 @ (k3_subset_1 @ (u1_struct_0 @ sk_A) @ sk_B) @ 
% 0.20/0.53             (k1_zfmisc_1 @ (u1_struct_0 @ sk_A))))),
% 0.20/0.53      inference('sup-', [status(thm)], ['3', '10'])).
% 0.20/0.53  thf('12', plain,
% 0.20/0.53      ((m1_subset_1 @ sk_B @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf(t48_pre_topc, axiom,
% 0.20/0.53    (![A:$i]:
% 0.20/0.53     ( ( l1_pre_topc @ A ) =>
% 0.20/0.53       ( ![B:$i]:
% 0.20/0.53         ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) =>
% 0.20/0.53           ( r1_tarski @ B @ ( k2_pre_topc @ A @ B ) ) ) ) ))).
% 0.20/0.53  thf('13', plain,
% 0.20/0.53      (![X9 : $i, X10 : $i]:
% 0.20/0.53         (~ (m1_subset_1 @ X9 @ (k1_zfmisc_1 @ (u1_struct_0 @ X10)))
% 0.20/0.53          | (r1_tarski @ X9 @ (k2_pre_topc @ X10 @ X9))
% 0.20/0.53          | ~ (l1_pre_topc @ X10))),
% 0.20/0.53      inference('cnf', [status(esa)], [t48_pre_topc])).
% 0.20/0.53  thf('14', plain,
% 0.20/0.53      ((~ (l1_pre_topc @ sk_A)
% 0.20/0.53        | (r1_tarski @ sk_B @ (k2_pre_topc @ sk_A @ sk_B)))),
% 0.20/0.53      inference('sup-', [status(thm)], ['12', '13'])).
% 0.20/0.53  thf('15', plain, ((l1_pre_topc @ sk_A)),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf('16', plain, ((r1_tarski @ sk_B @ (k2_pre_topc @ sk_A @ sk_B))),
% 0.20/0.53      inference('demod', [status(thm)], ['14', '15'])).
% 0.20/0.53  thf('17', plain,
% 0.20/0.53      ((m1_subset_1 @ sk_B @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf(dt_k3_subset_1, axiom,
% 0.20/0.53    (![A:$i,B:$i]:
% 0.20/0.53     ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) ) =>
% 0.20/0.53       ( m1_subset_1 @ ( k3_subset_1 @ A @ B ) @ ( k1_zfmisc_1 @ A ) ) ))).
% 0.20/0.53  thf('18', plain,
% 0.20/0.53      (![X0 : $i, X1 : $i]:
% 0.20/0.53         ((m1_subset_1 @ (k3_subset_1 @ X0 @ X1) @ (k1_zfmisc_1 @ X0))
% 0.20/0.53          | ~ (m1_subset_1 @ X1 @ (k1_zfmisc_1 @ X0)))),
% 0.20/0.53      inference('cnf', [status(esa)], [dt_k3_subset_1])).
% 0.20/0.53  thf('19', plain,
% 0.20/0.53      ((m1_subset_1 @ (k3_subset_1 @ (u1_struct_0 @ sk_A) @ sk_B) @ 
% 0.20/0.53        (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))),
% 0.20/0.53      inference('sup-', [status(thm)], ['17', '18'])).
% 0.20/0.53  thf('20', plain,
% 0.20/0.53      ((r1_tarski @ 
% 0.20/0.53        (k3_subset_1 @ (u1_struct_0 @ sk_A) @ (k2_pre_topc @ sk_A @ sk_B)) @ 
% 0.20/0.53        (k3_subset_1 @ (u1_struct_0 @ sk_A) @ sk_B))),
% 0.20/0.53      inference('demod', [status(thm)], ['11', '16', '19'])).
% 0.20/0.53  thf('21', plain,
% 0.20/0.53      ((m1_subset_1 @ (k2_pre_topc @ sk_A @ sk_B) @ 
% 0.20/0.53        (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))),
% 0.20/0.53      inference('demod', [status(thm)], ['6', '7'])).
% 0.20/0.53  thf('22', plain,
% 0.20/0.53      (![X0 : $i, X1 : $i]:
% 0.20/0.53         ((m1_subset_1 @ (k3_subset_1 @ X0 @ X1) @ (k1_zfmisc_1 @ X0))
% 0.20/0.53          | ~ (m1_subset_1 @ X1 @ (k1_zfmisc_1 @ X0)))),
% 0.20/0.53      inference('cnf', [status(esa)], [dt_k3_subset_1])).
% 0.20/0.53  thf('23', plain,
% 0.20/0.53      ((m1_subset_1 @ 
% 0.20/0.53        (k3_subset_1 @ (u1_struct_0 @ sk_A) @ (k2_pre_topc @ sk_A @ sk_B)) @ 
% 0.20/0.53        (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))),
% 0.20/0.53      inference('sup-', [status(thm)], ['21', '22'])).
% 0.20/0.53  thf(t79_tops_1, axiom,
% 0.20/0.53    (![A:$i]:
% 0.20/0.53     ( ( l1_pre_topc @ A ) =>
% 0.20/0.53       ( ![B:$i]:
% 0.20/0.53         ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) =>
% 0.20/0.53           ( ![C:$i]:
% 0.20/0.53             ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) =>
% 0.20/0.53               ( ( ( v1_tops_1 @ B @ A ) & ( r1_tarski @ B @ C ) ) =>
% 0.20/0.53                 ( v1_tops_1 @ C @ A ) ) ) ) ) ) ))).
% 0.20/0.53  thf('24', plain,
% 0.20/0.53      (![X15 : $i, X16 : $i, X17 : $i]:
% 0.20/0.53         (~ (m1_subset_1 @ X15 @ (k1_zfmisc_1 @ (u1_struct_0 @ X16)))
% 0.20/0.53          | ~ (v1_tops_1 @ X15 @ X16)
% 0.20/0.53          | ~ (r1_tarski @ X15 @ X17)
% 0.20/0.53          | (v1_tops_1 @ X17 @ X16)
% 0.20/0.53          | ~ (m1_subset_1 @ X17 @ (k1_zfmisc_1 @ (u1_struct_0 @ X16)))
% 0.20/0.53          | ~ (l1_pre_topc @ X16))),
% 0.20/0.53      inference('cnf', [status(esa)], [t79_tops_1])).
% 0.20/0.53  thf('25', plain,
% 0.20/0.53      (![X0 : $i]:
% 0.20/0.53         (~ (l1_pre_topc @ sk_A)
% 0.20/0.53          | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))
% 0.20/0.53          | (v1_tops_1 @ X0 @ sk_A)
% 0.20/0.53          | ~ (r1_tarski @ 
% 0.20/0.53               (k3_subset_1 @ (u1_struct_0 @ sk_A) @ 
% 0.20/0.53                (k2_pre_topc @ sk_A @ sk_B)) @ 
% 0.20/0.53               X0)
% 0.20/0.53          | ~ (v1_tops_1 @ 
% 0.20/0.53               (k3_subset_1 @ (u1_struct_0 @ sk_A) @ 
% 0.20/0.53                (k2_pre_topc @ sk_A @ sk_B)) @ 
% 0.20/0.53               sk_A))),
% 0.20/0.53      inference('sup-', [status(thm)], ['23', '24'])).
% 0.20/0.53  thf('26', plain, ((l1_pre_topc @ sk_A)),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf('27', plain,
% 0.20/0.53      ((m1_subset_1 @ (k2_pre_topc @ sk_A @ sk_B) @ 
% 0.20/0.53        (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))),
% 0.20/0.53      inference('demod', [status(thm)], ['6', '7'])).
% 0.20/0.53  thf(d4_tops_1, axiom,
% 0.20/0.53    (![A:$i]:
% 0.20/0.53     ( ( l1_pre_topc @ A ) =>
% 0.20/0.53       ( ![B:$i]:
% 0.20/0.53         ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) =>
% 0.20/0.53           ( ( v2_tops_1 @ B @ A ) <=>
% 0.20/0.53             ( v1_tops_1 @ ( k3_subset_1 @ ( u1_struct_0 @ A ) @ B ) @ A ) ) ) ) ))).
% 0.20/0.53  thf('28', plain,
% 0.20/0.53      (![X11 : $i, X12 : $i]:
% 0.20/0.53         (~ (m1_subset_1 @ X11 @ (k1_zfmisc_1 @ (u1_struct_0 @ X12)))
% 0.20/0.53          | ~ (v2_tops_1 @ X11 @ X12)
% 0.20/0.53          | (v1_tops_1 @ (k3_subset_1 @ (u1_struct_0 @ X12) @ X11) @ X12)
% 0.20/0.53          | ~ (l1_pre_topc @ X12))),
% 0.20/0.53      inference('cnf', [status(esa)], [d4_tops_1])).
% 0.20/0.53  thf('29', plain,
% 0.20/0.53      ((~ (l1_pre_topc @ sk_A)
% 0.20/0.53        | (v1_tops_1 @ 
% 0.20/0.53           (k3_subset_1 @ (u1_struct_0 @ sk_A) @ (k2_pre_topc @ sk_A @ sk_B)) @ 
% 0.20/0.53           sk_A)
% 0.20/0.53        | ~ (v2_tops_1 @ (k2_pre_topc @ sk_A @ sk_B) @ sk_A))),
% 0.20/0.53      inference('sup-', [status(thm)], ['27', '28'])).
% 0.20/0.53  thf('30', plain, ((l1_pre_topc @ sk_A)),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf('31', plain,
% 0.20/0.53      (((v1_tops_1 @ 
% 0.20/0.53         (k3_subset_1 @ (u1_struct_0 @ sk_A) @ (k2_pre_topc @ sk_A @ sk_B)) @ 
% 0.20/0.53         sk_A)
% 0.20/0.53        | ~ (v2_tops_1 @ (k2_pre_topc @ sk_A @ sk_B) @ sk_A))),
% 0.20/0.53      inference('demod', [status(thm)], ['29', '30'])).
% 0.20/0.53  thf('32', plain,
% 0.20/0.53      ((m1_subset_1 @ sk_B @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf(d5_tops_1, axiom,
% 0.20/0.53    (![A:$i]:
% 0.20/0.53     ( ( l1_pre_topc @ A ) =>
% 0.20/0.53       ( ![B:$i]:
% 0.20/0.53         ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) =>
% 0.20/0.53           ( ( v3_tops_1 @ B @ A ) <=>
% 0.20/0.53             ( v2_tops_1 @ ( k2_pre_topc @ A @ B ) @ A ) ) ) ) ))).
% 0.20/0.53  thf('33', plain,
% 0.20/0.53      (![X13 : $i, X14 : $i]:
% 0.20/0.53         (~ (m1_subset_1 @ X13 @ (k1_zfmisc_1 @ (u1_struct_0 @ X14)))
% 0.20/0.53          | ~ (v3_tops_1 @ X13 @ X14)
% 0.20/0.53          | (v2_tops_1 @ (k2_pre_topc @ X14 @ X13) @ X14)
% 0.20/0.53          | ~ (l1_pre_topc @ X14))),
% 0.20/0.53      inference('cnf', [status(esa)], [d5_tops_1])).
% 0.20/0.53  thf('34', plain,
% 0.20/0.53      ((~ (l1_pre_topc @ sk_A)
% 0.20/0.53        | (v2_tops_1 @ (k2_pre_topc @ sk_A @ sk_B) @ sk_A)
% 0.20/0.53        | ~ (v3_tops_1 @ sk_B @ sk_A))),
% 0.20/0.53      inference('sup-', [status(thm)], ['32', '33'])).
% 0.20/0.53  thf('35', plain, ((l1_pre_topc @ sk_A)),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf('36', plain, ((v3_tops_1 @ sk_B @ sk_A)),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf('37', plain, ((v2_tops_1 @ (k2_pre_topc @ sk_A @ sk_B) @ sk_A)),
% 0.20/0.53      inference('demod', [status(thm)], ['34', '35', '36'])).
% 0.20/0.53  thf('38', plain,
% 0.20/0.53      ((v1_tops_1 @ 
% 0.20/0.53        (k3_subset_1 @ (u1_struct_0 @ sk_A) @ (k2_pre_topc @ sk_A @ sk_B)) @ 
% 0.20/0.53        sk_A)),
% 0.20/0.53      inference('demod', [status(thm)], ['31', '37'])).
% 0.20/0.53  thf('39', plain,
% 0.20/0.53      (![X0 : $i]:
% 0.20/0.53         (~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))
% 0.20/0.53          | (v1_tops_1 @ X0 @ sk_A)
% 0.20/0.53          | ~ (r1_tarski @ 
% 0.20/0.53               (k3_subset_1 @ (u1_struct_0 @ sk_A) @ 
% 0.20/0.53                (k2_pre_topc @ sk_A @ sk_B)) @ 
% 0.20/0.53               X0))),
% 0.20/0.53      inference('demod', [status(thm)], ['25', '26', '38'])).
% 0.20/0.53  thf('40', plain,
% 0.20/0.53      (((v1_tops_1 @ (k3_subset_1 @ (u1_struct_0 @ sk_A) @ sk_B) @ sk_A)
% 0.20/0.53        | ~ (m1_subset_1 @ (k3_subset_1 @ (u1_struct_0 @ sk_A) @ sk_B) @ 
% 0.20/0.53             (k1_zfmisc_1 @ (u1_struct_0 @ sk_A))))),
% 0.20/0.53      inference('sup-', [status(thm)], ['20', '39'])).
% 0.20/0.53  thf('41', plain,
% 0.20/0.53      ((m1_subset_1 @ (k3_subset_1 @ (u1_struct_0 @ sk_A) @ sk_B) @ 
% 0.20/0.53        (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))),
% 0.20/0.53      inference('sup-', [status(thm)], ['17', '18'])).
% 0.20/0.53  thf('42', plain,
% 0.20/0.53      ((v1_tops_1 @ (k3_subset_1 @ (u1_struct_0 @ sk_A) @ sk_B) @ sk_A)),
% 0.20/0.53      inference('demod', [status(thm)], ['40', '41'])).
% 0.20/0.53  thf('43', plain, ($false), inference('demod', [status(thm)], ['0', '42'])).
% 0.20/0.53  
% 0.20/0.53  % SZS output end Refutation
% 0.20/0.53  
% 0.20/0.54  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
