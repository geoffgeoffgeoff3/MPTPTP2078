%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.02VvH2eQjT

% Computer   : n014.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 14:06:49 EST 2020

% Result     : Theorem 0.20s
% Output     : Refutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   54 ( 106 expanded)
%              Number of leaves         :   21 (  40 expanded)
%              Depth                    :   12
%              Number of atoms          :  330 (1210 expanded)
%              Number of equality atoms :    0 (   0 expanded)
%              Maximal formula depth    :   12 (   5 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(v2_struct_0_type,type,(
    v2_struct_0: $i > $o )).

thf(sk_C_type,type,(
    sk_C: $i )).

thf(v1_xboole_0_type,type,(
    v1_xboole_0: $i > $o )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(v2_pre_topc_type,type,(
    v2_pre_topc: $i > $o )).

thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(m1_connsp_2_type,type,(
    m1_connsp_2: $i > $i > $i > $o )).

thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(u1_struct_0_type,type,(
    u1_struct_0: $i > $i )).

thf(l1_pre_topc_type,type,(
    l1_pre_topc: $i > $o )).

thf(k1_tops_1_type,type,(
    k1_tops_1: $i > $i > $i )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(t6_connsp_2,conjecture,(
    ! [A: $i] :
      ( ( ~ ( v2_struct_0 @ A )
        & ( v2_pre_topc @ A )
        & ( l1_pre_topc @ A ) )
     => ! [B: $i] :
          ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) )
         => ! [C: $i] :
              ( ( m1_subset_1 @ C @ ( u1_struct_0 @ A ) )
             => ( ( m1_connsp_2 @ B @ A @ C )
               => ( r2_hidden @ C @ B ) ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i] :
        ( ( ~ ( v2_struct_0 @ A )
          & ( v2_pre_topc @ A )
          & ( l1_pre_topc @ A ) )
       => ! [B: $i] :
            ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) )
           => ! [C: $i] :
                ( ( m1_subset_1 @ C @ ( u1_struct_0 @ A ) )
               => ( ( m1_connsp_2 @ B @ A @ C )
                 => ( r2_hidden @ C @ B ) ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t6_connsp_2])).

thf('0',plain,(
    m1_connsp_2 @ sk_B @ sk_A @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('1',plain,(
    m1_subset_1 @ sk_B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(d1_connsp_2,axiom,(
    ! [A: $i] :
      ( ( ~ ( v2_struct_0 @ A )
        & ( v2_pre_topc @ A )
        & ( l1_pre_topc @ A ) )
     => ! [B: $i] :
          ( ( m1_subset_1 @ B @ ( u1_struct_0 @ A ) )
         => ! [C: $i] :
              ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) )
             => ( ( m1_connsp_2 @ C @ A @ B )
              <=> ( r2_hidden @ B @ ( k1_tops_1 @ A @ C ) ) ) ) ) ) )).

thf('2',plain,(
    ! [X13: $i,X14: $i,X15: $i] :
      ( ~ ( m1_subset_1 @ X13 @ ( u1_struct_0 @ X14 ) )
      | ~ ( m1_connsp_2 @ X15 @ X14 @ X13 )
      | ( r2_hidden @ X13 @ ( k1_tops_1 @ X14 @ X15 ) )
      | ~ ( m1_subset_1 @ X15 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X14 ) ) )
      | ~ ( l1_pre_topc @ X14 )
      | ~ ( v2_pre_topc @ X14 )
      | ( v2_struct_0 @ X14 ) ) ),
    inference(cnf,[status(esa)],[d1_connsp_2])).

thf('3',plain,(
    ! [X0: $i] :
      ( ( v2_struct_0 @ sk_A )
      | ~ ( v2_pre_topc @ sk_A )
      | ~ ( l1_pre_topc @ sk_A )
      | ( r2_hidden @ X0 @ ( k1_tops_1 @ sk_A @ sk_B ) )
      | ~ ( m1_connsp_2 @ sk_B @ sk_A @ X0 )
      | ~ ( m1_subset_1 @ X0 @ ( u1_struct_0 @ sk_A ) ) ) ),
    inference('sup-',[status(thm)],['1','2'])).

thf('4',plain,(
    v2_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('5',plain,(
    l1_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('6',plain,(
    ! [X0: $i] :
      ( ( v2_struct_0 @ sk_A )
      | ( r2_hidden @ X0 @ ( k1_tops_1 @ sk_A @ sk_B ) )
      | ~ ( m1_connsp_2 @ sk_B @ sk_A @ X0 )
      | ~ ( m1_subset_1 @ X0 @ ( u1_struct_0 @ sk_A ) ) ) ),
    inference(demod,[status(thm)],['3','4','5'])).

thf('7',plain,
    ( ~ ( m1_subset_1 @ sk_C @ ( u1_struct_0 @ sk_A ) )
    | ( r2_hidden @ sk_C @ ( k1_tops_1 @ sk_A @ sk_B ) )
    | ( v2_struct_0 @ sk_A ) ),
    inference('sup-',[status(thm)],['0','6'])).

thf('8',plain,(
    m1_subset_1 @ sk_C @ ( u1_struct_0 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('9',plain,
    ( ( r2_hidden @ sk_C @ ( k1_tops_1 @ sk_A @ sk_B ) )
    | ( v2_struct_0 @ sk_A ) ),
    inference(demod,[status(thm)],['7','8'])).

thf('10',plain,(
    ~ ( v2_struct_0 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('11',plain,(
    r2_hidden @ sk_C @ ( k1_tops_1 @ sk_A @ sk_B ) ),
    inference(clc,[status(thm)],['9','10'])).

thf('12',plain,(
    m1_subset_1 @ sk_B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t44_tops_1,axiom,(
    ! [A: $i] :
      ( ( l1_pre_topc @ A )
     => ! [B: $i] :
          ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) )
         => ( r1_tarski @ ( k1_tops_1 @ A @ B ) @ B ) ) ) )).

thf('13',plain,(
    ! [X11: $i,X12: $i] :
      ( ~ ( m1_subset_1 @ X11 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X12 ) ) )
      | ( r1_tarski @ ( k1_tops_1 @ X12 @ X11 ) @ X11 )
      | ~ ( l1_pre_topc @ X12 ) ) ),
    inference(cnf,[status(esa)],[t44_tops_1])).

thf('14',plain,
    ( ~ ( l1_pre_topc @ sk_A )
    | ( r1_tarski @ ( k1_tops_1 @ sk_A @ sk_B ) @ sk_B ) ),
    inference('sup-',[status(thm)],['12','13'])).

thf('15',plain,(
    l1_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('16',plain,(
    r1_tarski @ ( k1_tops_1 @ sk_A @ sk_B ) @ sk_B ),
    inference(demod,[status(thm)],['14','15'])).

thf(t3_subset,axiom,(
    ! [A: $i,B: $i] :
      ( ( m1_subset_1 @ A @ ( k1_zfmisc_1 @ B ) )
    <=> ( r1_tarski @ A @ B ) ) )).

thf('17',plain,(
    ! [X2: $i,X4: $i] :
      ( ( m1_subset_1 @ X2 @ ( k1_zfmisc_1 @ X4 ) )
      | ~ ( r1_tarski @ X2 @ X4 ) ) ),
    inference(cnf,[status(esa)],[t3_subset])).

thf('18',plain,(
    m1_subset_1 @ ( k1_tops_1 @ sk_A @ sk_B ) @ ( k1_zfmisc_1 @ sk_B ) ),
    inference('sup-',[status(thm)],['16','17'])).

thf(t5_subset,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ~ ( ( r2_hidden @ A @ B )
        & ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ C ) )
        & ( v1_xboole_0 @ C ) ) )).

thf('19',plain,(
    ! [X8: $i,X9: $i,X10: $i] :
      ( ~ ( r2_hidden @ X8 @ X9 )
      | ~ ( v1_xboole_0 @ X10 )
      | ~ ( m1_subset_1 @ X9 @ ( k1_zfmisc_1 @ X10 ) ) ) ),
    inference(cnf,[status(esa)],[t5_subset])).

thf('20',plain,(
    ! [X0: $i] :
      ( ~ ( v1_xboole_0 @ sk_B )
      | ~ ( r2_hidden @ X0 @ ( k1_tops_1 @ sk_A @ sk_B ) ) ) ),
    inference('sup-',[status(thm)],['18','19'])).

thf('21',plain,(
    r2_hidden @ sk_C @ ( k1_tops_1 @ sk_A @ sk_B ) ),
    inference(clc,[status(thm)],['9','10'])).

thf('22',plain,(
    m1_subset_1 @ ( k1_tops_1 @ sk_A @ sk_B ) @ ( k1_zfmisc_1 @ sk_B ) ),
    inference('sup-',[status(thm)],['16','17'])).

thf(t4_subset,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( ( r2_hidden @ A @ B )
        & ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ C ) ) )
     => ( m1_subset_1 @ A @ C ) ) )).

thf('23',plain,(
    ! [X5: $i,X6: $i,X7: $i] :
      ( ~ ( r2_hidden @ X5 @ X6 )
      | ~ ( m1_subset_1 @ X6 @ ( k1_zfmisc_1 @ X7 ) )
      | ( m1_subset_1 @ X5 @ X7 ) ) ),
    inference(cnf,[status(esa)],[t4_subset])).

thf('24',plain,(
    ! [X0: $i] :
      ( ( m1_subset_1 @ X0 @ sk_B )
      | ~ ( r2_hidden @ X0 @ ( k1_tops_1 @ sk_A @ sk_B ) ) ) ),
    inference('sup-',[status(thm)],['22','23'])).

thf('25',plain,(
    m1_subset_1 @ sk_C @ sk_B ),
    inference('sup-',[status(thm)],['21','24'])).

thf(t2_subset,axiom,(
    ! [A: $i,B: $i] :
      ( ( m1_subset_1 @ A @ B )
     => ( ( v1_xboole_0 @ B )
        | ( r2_hidden @ A @ B ) ) ) )).

thf('26',plain,(
    ! [X0: $i,X1: $i] :
      ( ( r2_hidden @ X0 @ X1 )
      | ( v1_xboole_0 @ X1 )
      | ~ ( m1_subset_1 @ X0 @ X1 ) ) ),
    inference(cnf,[status(esa)],[t2_subset])).

thf('27',plain,
    ( ( v1_xboole_0 @ sk_B )
    | ( r2_hidden @ sk_C @ sk_B ) ),
    inference('sup-',[status(thm)],['25','26'])).

thf('28',plain,(
    ~ ( r2_hidden @ sk_C @ sk_B ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('29',plain,(
    v1_xboole_0 @ sk_B ),
    inference(clc,[status(thm)],['27','28'])).

thf('30',plain,(
    ! [X0: $i] :
      ~ ( r2_hidden @ X0 @ ( k1_tops_1 @ sk_A @ sk_B ) ) ),
    inference(demod,[status(thm)],['20','29'])).

thf('31',plain,(
    $false ),
    inference('sup-',[status(thm)],['11','30'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.06/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.06/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.02VvH2eQjT
% 0.12/0.34  % Computer   : n014.cluster.edu
% 0.12/0.34  % Model      : x86_64 x86_64
% 0.12/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.34  % Memory     : 8042.1875MB
% 0.12/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % DateTime   : Tue Dec  1 19:36:52 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  % Running portfolio for 600 s
% 0.12/0.34  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.12/0.34  % Number of cores: 8
% 0.12/0.34  % Python version: Python 3.6.8
% 0.12/0.34  % Running in FO mode
% 0.20/0.42  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.20/0.42  % Solved by: fo/fo7.sh
% 0.20/0.42  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.20/0.42  % done 34 iterations in 0.011s
% 0.20/0.42  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.20/0.42  % SZS output start Refutation
% 0.20/0.42  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.20/0.42  thf(v2_struct_0_type, type, v2_struct_0: $i > $o).
% 0.20/0.42  thf(sk_C_type, type, sk_C: $i).
% 0.20/0.42  thf(v1_xboole_0_type, type, v1_xboole_0: $i > $o).
% 0.20/0.42  thf(sk_B_type, type, sk_B: $i).
% 0.20/0.42  thf(sk_A_type, type, sk_A: $i).
% 0.20/0.42  thf(v2_pre_topc_type, type, v2_pre_topc: $i > $o).
% 0.20/0.42  thf(k1_zfmisc_1_type, type, k1_zfmisc_1: $i > $i).
% 0.20/0.42  thf(m1_connsp_2_type, type, m1_connsp_2: $i > $i > $i > $o).
% 0.20/0.42  thf(m1_subset_1_type, type, m1_subset_1: $i > $i > $o).
% 0.20/0.42  thf(u1_struct_0_type, type, u1_struct_0: $i > $i).
% 0.20/0.42  thf(l1_pre_topc_type, type, l1_pre_topc: $i > $o).
% 0.20/0.42  thf(k1_tops_1_type, type, k1_tops_1: $i > $i > $i).
% 0.20/0.42  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.20/0.42  thf(t6_connsp_2, conjecture,
% 0.20/0.42    (![A:$i]:
% 0.20/0.42     ( ( ( ~( v2_struct_0 @ A ) ) & ( v2_pre_topc @ A ) & ( l1_pre_topc @ A ) ) =>
% 0.20/0.42       ( ![B:$i]:
% 0.20/0.42         ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) =>
% 0.20/0.42           ( ![C:$i]:
% 0.20/0.42             ( ( m1_subset_1 @ C @ ( u1_struct_0 @ A ) ) =>
% 0.20/0.42               ( ( m1_connsp_2 @ B @ A @ C ) => ( r2_hidden @ C @ B ) ) ) ) ) ) ))).
% 0.20/0.42  thf(zf_stmt_0, negated_conjecture,
% 0.20/0.42    (~( ![A:$i]:
% 0.20/0.42        ( ( ( ~( v2_struct_0 @ A ) ) & ( v2_pre_topc @ A ) & 
% 0.20/0.42            ( l1_pre_topc @ A ) ) =>
% 0.20/0.42          ( ![B:$i]:
% 0.20/0.42            ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) =>
% 0.20/0.42              ( ![C:$i]:
% 0.20/0.42                ( ( m1_subset_1 @ C @ ( u1_struct_0 @ A ) ) =>
% 0.20/0.42                  ( ( m1_connsp_2 @ B @ A @ C ) => ( r2_hidden @ C @ B ) ) ) ) ) ) ) )),
% 0.20/0.42    inference('cnf.neg', [status(esa)], [t6_connsp_2])).
% 0.20/0.42  thf('0', plain, ((m1_connsp_2 @ sk_B @ sk_A @ sk_C)),
% 0.20/0.42      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.42  thf('1', plain,
% 0.20/0.42      ((m1_subset_1 @ sk_B @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))),
% 0.20/0.42      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.42  thf(d1_connsp_2, axiom,
% 0.20/0.42    (![A:$i]:
% 0.20/0.42     ( ( ( ~( v2_struct_0 @ A ) ) & ( v2_pre_topc @ A ) & ( l1_pre_topc @ A ) ) =>
% 0.20/0.42       ( ![B:$i]:
% 0.20/0.42         ( ( m1_subset_1 @ B @ ( u1_struct_0 @ A ) ) =>
% 0.20/0.42           ( ![C:$i]:
% 0.20/0.42             ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) =>
% 0.20/0.42               ( ( m1_connsp_2 @ C @ A @ B ) <=>
% 0.20/0.42                 ( r2_hidden @ B @ ( k1_tops_1 @ A @ C ) ) ) ) ) ) ) ))).
% 0.20/0.42  thf('2', plain,
% 0.20/0.42      (![X13 : $i, X14 : $i, X15 : $i]:
% 0.20/0.42         (~ (m1_subset_1 @ X13 @ (u1_struct_0 @ X14))
% 0.20/0.42          | ~ (m1_connsp_2 @ X15 @ X14 @ X13)
% 0.20/0.42          | (r2_hidden @ X13 @ (k1_tops_1 @ X14 @ X15))
% 0.20/0.42          | ~ (m1_subset_1 @ X15 @ (k1_zfmisc_1 @ (u1_struct_0 @ X14)))
% 0.20/0.42          | ~ (l1_pre_topc @ X14)
% 0.20/0.42          | ~ (v2_pre_topc @ X14)
% 0.20/0.42          | (v2_struct_0 @ X14))),
% 0.20/0.42      inference('cnf', [status(esa)], [d1_connsp_2])).
% 0.20/0.42  thf('3', plain,
% 0.20/0.42      (![X0 : $i]:
% 0.20/0.42         ((v2_struct_0 @ sk_A)
% 0.20/0.42          | ~ (v2_pre_topc @ sk_A)
% 0.20/0.42          | ~ (l1_pre_topc @ sk_A)
% 0.20/0.42          | (r2_hidden @ X0 @ (k1_tops_1 @ sk_A @ sk_B))
% 0.20/0.42          | ~ (m1_connsp_2 @ sk_B @ sk_A @ X0)
% 0.20/0.42          | ~ (m1_subset_1 @ X0 @ (u1_struct_0 @ sk_A)))),
% 0.20/0.42      inference('sup-', [status(thm)], ['1', '2'])).
% 0.20/0.42  thf('4', plain, ((v2_pre_topc @ sk_A)),
% 0.20/0.42      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.42  thf('5', plain, ((l1_pre_topc @ sk_A)),
% 0.20/0.42      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.42  thf('6', plain,
% 0.20/0.42      (![X0 : $i]:
% 0.20/0.42         ((v2_struct_0 @ sk_A)
% 0.20/0.42          | (r2_hidden @ X0 @ (k1_tops_1 @ sk_A @ sk_B))
% 0.20/0.42          | ~ (m1_connsp_2 @ sk_B @ sk_A @ X0)
% 0.20/0.42          | ~ (m1_subset_1 @ X0 @ (u1_struct_0 @ sk_A)))),
% 0.20/0.42      inference('demod', [status(thm)], ['3', '4', '5'])).
% 0.20/0.42  thf('7', plain,
% 0.20/0.42      ((~ (m1_subset_1 @ sk_C @ (u1_struct_0 @ sk_A))
% 0.20/0.42        | (r2_hidden @ sk_C @ (k1_tops_1 @ sk_A @ sk_B))
% 0.20/0.42        | (v2_struct_0 @ sk_A))),
% 0.20/0.42      inference('sup-', [status(thm)], ['0', '6'])).
% 0.20/0.42  thf('8', plain, ((m1_subset_1 @ sk_C @ (u1_struct_0 @ sk_A))),
% 0.20/0.42      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.42  thf('9', plain,
% 0.20/0.42      (((r2_hidden @ sk_C @ (k1_tops_1 @ sk_A @ sk_B)) | (v2_struct_0 @ sk_A))),
% 0.20/0.42      inference('demod', [status(thm)], ['7', '8'])).
% 0.20/0.42  thf('10', plain, (~ (v2_struct_0 @ sk_A)),
% 0.20/0.42      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.42  thf('11', plain, ((r2_hidden @ sk_C @ (k1_tops_1 @ sk_A @ sk_B))),
% 0.20/0.42      inference('clc', [status(thm)], ['9', '10'])).
% 0.20/0.42  thf('12', plain,
% 0.20/0.42      ((m1_subset_1 @ sk_B @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))),
% 0.20/0.42      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.42  thf(t44_tops_1, axiom,
% 0.20/0.42    (![A:$i]:
% 0.20/0.42     ( ( l1_pre_topc @ A ) =>
% 0.20/0.42       ( ![B:$i]:
% 0.20/0.42         ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) =>
% 0.20/0.42           ( r1_tarski @ ( k1_tops_1 @ A @ B ) @ B ) ) ) ))).
% 0.20/0.42  thf('13', plain,
% 0.20/0.42      (![X11 : $i, X12 : $i]:
% 0.20/0.42         (~ (m1_subset_1 @ X11 @ (k1_zfmisc_1 @ (u1_struct_0 @ X12)))
% 0.20/0.42          | (r1_tarski @ (k1_tops_1 @ X12 @ X11) @ X11)
% 0.20/0.42          | ~ (l1_pre_topc @ X12))),
% 0.20/0.42      inference('cnf', [status(esa)], [t44_tops_1])).
% 0.20/0.42  thf('14', plain,
% 0.20/0.42      ((~ (l1_pre_topc @ sk_A) | (r1_tarski @ (k1_tops_1 @ sk_A @ sk_B) @ sk_B))),
% 0.20/0.42      inference('sup-', [status(thm)], ['12', '13'])).
% 0.20/0.42  thf('15', plain, ((l1_pre_topc @ sk_A)),
% 0.20/0.42      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.42  thf('16', plain, ((r1_tarski @ (k1_tops_1 @ sk_A @ sk_B) @ sk_B)),
% 0.20/0.42      inference('demod', [status(thm)], ['14', '15'])).
% 0.20/0.42  thf(t3_subset, axiom,
% 0.20/0.42    (![A:$i,B:$i]:
% 0.20/0.42     ( ( m1_subset_1 @ A @ ( k1_zfmisc_1 @ B ) ) <=> ( r1_tarski @ A @ B ) ))).
% 0.20/0.42  thf('17', plain,
% 0.20/0.42      (![X2 : $i, X4 : $i]:
% 0.20/0.42         ((m1_subset_1 @ X2 @ (k1_zfmisc_1 @ X4)) | ~ (r1_tarski @ X2 @ X4))),
% 0.20/0.42      inference('cnf', [status(esa)], [t3_subset])).
% 0.20/0.42  thf('18', plain,
% 0.20/0.42      ((m1_subset_1 @ (k1_tops_1 @ sk_A @ sk_B) @ (k1_zfmisc_1 @ sk_B))),
% 0.20/0.42      inference('sup-', [status(thm)], ['16', '17'])).
% 0.20/0.42  thf(t5_subset, axiom,
% 0.20/0.42    (![A:$i,B:$i,C:$i]:
% 0.20/0.42     ( ~( ( r2_hidden @ A @ B ) & ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ C ) ) & 
% 0.20/0.42          ( v1_xboole_0 @ C ) ) ))).
% 0.20/0.42  thf('19', plain,
% 0.20/0.42      (![X8 : $i, X9 : $i, X10 : $i]:
% 0.20/0.42         (~ (r2_hidden @ X8 @ X9)
% 0.20/0.42          | ~ (v1_xboole_0 @ X10)
% 0.20/0.42          | ~ (m1_subset_1 @ X9 @ (k1_zfmisc_1 @ X10)))),
% 0.20/0.42      inference('cnf', [status(esa)], [t5_subset])).
% 0.20/0.42  thf('20', plain,
% 0.20/0.42      (![X0 : $i]:
% 0.20/0.42         (~ (v1_xboole_0 @ sk_B)
% 0.20/0.42          | ~ (r2_hidden @ X0 @ (k1_tops_1 @ sk_A @ sk_B)))),
% 0.20/0.42      inference('sup-', [status(thm)], ['18', '19'])).
% 0.20/0.42  thf('21', plain, ((r2_hidden @ sk_C @ (k1_tops_1 @ sk_A @ sk_B))),
% 0.20/0.42      inference('clc', [status(thm)], ['9', '10'])).
% 0.20/0.42  thf('22', plain,
% 0.20/0.42      ((m1_subset_1 @ (k1_tops_1 @ sk_A @ sk_B) @ (k1_zfmisc_1 @ sk_B))),
% 0.20/0.42      inference('sup-', [status(thm)], ['16', '17'])).
% 0.20/0.42  thf(t4_subset, axiom,
% 0.20/0.42    (![A:$i,B:$i,C:$i]:
% 0.20/0.42     ( ( ( r2_hidden @ A @ B ) & ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ C ) ) ) =>
% 0.20/0.42       ( m1_subset_1 @ A @ C ) ))).
% 0.20/0.42  thf('23', plain,
% 0.20/0.42      (![X5 : $i, X6 : $i, X7 : $i]:
% 0.20/0.42         (~ (r2_hidden @ X5 @ X6)
% 0.20/0.42          | ~ (m1_subset_1 @ X6 @ (k1_zfmisc_1 @ X7))
% 0.20/0.42          | (m1_subset_1 @ X5 @ X7))),
% 0.20/0.42      inference('cnf', [status(esa)], [t4_subset])).
% 0.20/0.42  thf('24', plain,
% 0.20/0.42      (![X0 : $i]:
% 0.20/0.42         ((m1_subset_1 @ X0 @ sk_B)
% 0.20/0.42          | ~ (r2_hidden @ X0 @ (k1_tops_1 @ sk_A @ sk_B)))),
% 0.20/0.42      inference('sup-', [status(thm)], ['22', '23'])).
% 0.20/0.42  thf('25', plain, ((m1_subset_1 @ sk_C @ sk_B)),
% 0.20/0.42      inference('sup-', [status(thm)], ['21', '24'])).
% 0.20/0.42  thf(t2_subset, axiom,
% 0.20/0.42    (![A:$i,B:$i]:
% 0.20/0.42     ( ( m1_subset_1 @ A @ B ) =>
% 0.20/0.42       ( ( v1_xboole_0 @ B ) | ( r2_hidden @ A @ B ) ) ))).
% 0.20/0.42  thf('26', plain,
% 0.20/0.42      (![X0 : $i, X1 : $i]:
% 0.20/0.42         ((r2_hidden @ X0 @ X1)
% 0.20/0.42          | (v1_xboole_0 @ X1)
% 0.20/0.42          | ~ (m1_subset_1 @ X0 @ X1))),
% 0.20/0.42      inference('cnf', [status(esa)], [t2_subset])).
% 0.20/0.42  thf('27', plain, (((v1_xboole_0 @ sk_B) | (r2_hidden @ sk_C @ sk_B))),
% 0.20/0.42      inference('sup-', [status(thm)], ['25', '26'])).
% 0.20/0.42  thf('28', plain, (~ (r2_hidden @ sk_C @ sk_B)),
% 0.20/0.42      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.42  thf('29', plain, ((v1_xboole_0 @ sk_B)),
% 0.20/0.42      inference('clc', [status(thm)], ['27', '28'])).
% 0.20/0.42  thf('30', plain,
% 0.20/0.42      (![X0 : $i]: ~ (r2_hidden @ X0 @ (k1_tops_1 @ sk_A @ sk_B))),
% 0.20/0.42      inference('demod', [status(thm)], ['20', '29'])).
% 0.20/0.42  thf('31', plain, ($false), inference('sup-', [status(thm)], ['11', '30'])).
% 0.20/0.42  
% 0.20/0.42  % SZS output end Refutation
% 0.20/0.42  
% 0.20/0.43  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
