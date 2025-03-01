%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT1310+1.001 : TPTP v7.4.0. Released v7.4.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.2Wl8l56C45

% Computer   : n032.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 08:53:27 EST 2020

% Result     : Theorem 0.13s
% Output     : Refutation 0.13s
% Verified   : 
% Statistics : Number of formulae       :   89 ( 150 expanded)
%              Number of leaves         :   33 (  59 expanded)
%              Depth                    :    9
%              Number of atoms          :  619 (1669 expanded)
%              Number of equality atoms :   17 (  27 expanded)
%              Maximal formula depth    :   12 (   5 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k3_tarski_type,type,(
    k3_tarski: $i > $i )).

thf(k6_setfam_1_type,type,(
    k6_setfam_1: $i > $i > $i )).

thf(k5_setfam_1_type,type,(
    k5_setfam_1: $i > $i > $i )).

thf(v2_tops_2_type,type,(
    v2_tops_2: $i > $i > $o )).

thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(v4_pre_topc_type,type,(
    v4_pre_topc: $i > $i > $o )).

thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(v3_pre_topc_type,type,(
    v3_pre_topc: $i > $i > $o )).

thf(v2_pre_topc_type,type,(
    v2_pre_topc: $i > $o )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(k3_subset_1_type,type,(
    k3_subset_1: $i > $i > $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(v1_tops_2_type,type,(
    v1_tops_2: $i > $i > $o )).

thf(l1_pre_topc_type,type,(
    l1_pre_topc: $i > $o )).

thf(l1_struct_0_type,type,(
    l1_struct_0: $i > $o )).

thf(k7_setfam_1_type,type,(
    k7_setfam_1: $i > $i > $i )).

thf(v1_finset_1_type,type,(
    v1_finset_1: $i > $o )).

thf(v1_xboole_0_type,type,(
    v1_xboole_0: $i > $o )).

thf(u1_struct_0_type,type,(
    u1_struct_0: $i > $i )).

thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(t28_tops_2,conjecture,(
    ! [A: $i] :
      ( ( ( v2_pre_topc @ A )
        & ( l1_pre_topc @ A ) )
     => ! [B: $i] :
          ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) )
         => ( ( ( v2_tops_2 @ B @ A )
              & ( v1_finset_1 @ B ) )
           => ( v4_pre_topc @ ( k5_setfam_1 @ ( u1_struct_0 @ A ) @ B ) @ A ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i] :
        ( ( ( v2_pre_topc @ A )
          & ( l1_pre_topc @ A ) )
       => ! [B: $i] :
            ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) )
           => ( ( ( v2_tops_2 @ B @ A )
                & ( v1_finset_1 @ B ) )
             => ( v4_pre_topc @ ( k5_setfam_1 @ ( u1_struct_0 @ A ) @ B ) @ A ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t28_tops_2])).

thf('0',plain,(
    m1_subset_1 @ sk_B @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(dt_k5_setfam_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ A ) ) )
     => ( m1_subset_1 @ ( k5_setfam_1 @ A @ B ) @ ( k1_zfmisc_1 @ A ) ) ) )).

thf('1',plain,(
    ! [X2: $i,X3: $i] :
      ( ( m1_subset_1 @ ( k5_setfam_1 @ X2 @ X3 ) @ ( k1_zfmisc_1 @ X2 ) )
      | ~ ( m1_subset_1 @ X3 @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ X2 ) ) ) ) ),
    inference(cnf,[status(esa)],[dt_k5_setfam_1])).

thf('2',plain,(
    m1_subset_1 @ ( k5_setfam_1 @ ( u1_struct_0 @ sk_A ) @ sk_B ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ),
    inference('sup-',[status(thm)],['0','1'])).

thf('3',plain,(
    m1_subset_1 @ sk_B @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(redefinition_k5_setfam_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ A ) ) )
     => ( ( k5_setfam_1 @ A @ B )
        = ( k3_tarski @ B ) ) ) )).

thf('4',plain,(
    ! [X7: $i,X8: $i] :
      ( ( ( k5_setfam_1 @ X8 @ X7 )
        = ( k3_tarski @ X7 ) )
      | ~ ( m1_subset_1 @ X7 @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ X8 ) ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k5_setfam_1])).

thf('5',plain,
    ( ( k5_setfam_1 @ ( u1_struct_0 @ sk_A ) @ sk_B )
    = ( k3_tarski @ sk_B ) ),
    inference('sup-',[status(thm)],['3','4'])).

thf('6',plain,(
    m1_subset_1 @ ( k3_tarski @ sk_B ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ),
    inference(demod,[status(thm)],['2','5'])).

thf(cc2_pre_topc,axiom,(
    ! [A: $i] :
      ( ( ( v2_pre_topc @ A )
        & ( l1_pre_topc @ A ) )
     => ! [B: $i] :
          ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) )
         => ( ( v1_xboole_0 @ B )
           => ( v4_pre_topc @ B @ A ) ) ) ) )).

thf('7',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X1 ) ) )
      | ( v4_pre_topc @ X0 @ X1 )
      | ~ ( v1_xboole_0 @ X0 )
      | ~ ( l1_pre_topc @ X1 )
      | ~ ( v2_pre_topc @ X1 ) ) ),
    inference(cnf,[status(esa)],[cc2_pre_topc])).

thf('8',plain,
    ( ~ ( v2_pre_topc @ sk_A )
    | ~ ( l1_pre_topc @ sk_A )
    | ~ ( v1_xboole_0 @ ( k3_tarski @ sk_B ) )
    | ( v4_pre_topc @ ( k3_tarski @ sk_B ) @ sk_A ) ),
    inference('sup-',[status(thm)],['6','7'])).

thf('9',plain,(
    v2_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('10',plain,(
    l1_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('11',plain,
    ( ~ ( v1_xboole_0 @ ( k3_tarski @ sk_B ) )
    | ( v4_pre_topc @ ( k3_tarski @ sk_B ) @ sk_A ) ),
    inference(demod,[status(thm)],['8','9','10'])).

thf('12',plain,(
    ~ ( v4_pre_topc @ ( k5_setfam_1 @ ( u1_struct_0 @ sk_A ) @ sk_B ) @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('13',plain,
    ( ( k5_setfam_1 @ ( u1_struct_0 @ sk_A ) @ sk_B )
    = ( k3_tarski @ sk_B ) ),
    inference('sup-',[status(thm)],['3','4'])).

thf('14',plain,(
    ~ ( v4_pre_topc @ ( k3_tarski @ sk_B ) @ sk_A ) ),
    inference(demod,[status(thm)],['12','13'])).

thf('15',plain,(
    ~ ( v1_xboole_0 @ ( k3_tarski @ sk_B ) ) ),
    inference(clc,[status(thm)],['11','14'])).

thf('16',plain,(
    m1_subset_1 @ sk_B @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t11_tops_2,axiom,(
    ! [A: $i,B: $i] :
      ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ A ) ) )
     => ( ( B != k1_xboole_0 )
       => ( ( k6_setfam_1 @ A @ ( k7_setfam_1 @ A @ B ) )
          = ( k3_subset_1 @ A @ ( k5_setfam_1 @ A @ B ) ) ) ) ) )).

thf('17',plain,(
    ! [X9: $i,X10: $i] :
      ( ( X9 = k1_xboole_0 )
      | ( ( k6_setfam_1 @ X10 @ ( k7_setfam_1 @ X10 @ X9 ) )
        = ( k3_subset_1 @ X10 @ ( k5_setfam_1 @ X10 @ X9 ) ) )
      | ~ ( m1_subset_1 @ X9 @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ X10 ) ) ) ) ),
    inference(cnf,[status(esa)],[t11_tops_2])).

thf('18',plain,
    ( ( ( k6_setfam_1 @ ( u1_struct_0 @ sk_A ) @ ( k7_setfam_1 @ ( u1_struct_0 @ sk_A ) @ sk_B ) )
      = ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ ( k5_setfam_1 @ ( u1_struct_0 @ sk_A ) @ sk_B ) ) )
    | ( sk_B = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['16','17'])).

thf('19',plain,
    ( ( k5_setfam_1 @ ( u1_struct_0 @ sk_A ) @ sk_B )
    = ( k3_tarski @ sk_B ) ),
    inference('sup-',[status(thm)],['3','4'])).

thf('20',plain,
    ( ( ( k6_setfam_1 @ ( u1_struct_0 @ sk_A ) @ ( k7_setfam_1 @ ( u1_struct_0 @ sk_A ) @ sk_B ) )
      = ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ ( k3_tarski @ sk_B ) ) )
    | ( sk_B = k1_xboole_0 ) ),
    inference(demod,[status(thm)],['18','19'])).

thf('21',plain,(
    m1_subset_1 @ sk_B @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(dt_k7_setfam_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ A ) ) )
     => ( m1_subset_1 @ ( k7_setfam_1 @ A @ B ) @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ A ) ) ) ) )).

thf('22',plain,(
    ! [X4: $i,X5: $i] :
      ( ( m1_subset_1 @ ( k7_setfam_1 @ X4 @ X5 ) @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ X4 ) ) )
      | ~ ( m1_subset_1 @ X5 @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ X4 ) ) ) ) ),
    inference(cnf,[status(esa)],[dt_k7_setfam_1])).

thf('23',plain,(
    m1_subset_1 @ ( k7_setfam_1 @ ( u1_struct_0 @ sk_A ) @ sk_B ) @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ) ),
    inference('sup-',[status(thm)],['21','22'])).

thf(t27_tops_2,axiom,(
    ! [A: $i] :
      ( ( ( v2_pre_topc @ A )
        & ( l1_pre_topc @ A ) )
     => ! [B: $i] :
          ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) )
         => ( ( ( v1_tops_2 @ B @ A )
              & ( v1_finset_1 @ B ) )
           => ( v3_pre_topc @ ( k6_setfam_1 @ ( u1_struct_0 @ A ) @ B ) @ A ) ) ) ) )).

thf('24',plain,(
    ! [X15: $i,X16: $i] :
      ( ~ ( m1_subset_1 @ X15 @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X16 ) ) ) )
      | ( v3_pre_topc @ ( k6_setfam_1 @ ( u1_struct_0 @ X16 ) @ X15 ) @ X16 )
      | ~ ( v1_finset_1 @ X15 )
      | ~ ( v1_tops_2 @ X15 @ X16 )
      | ~ ( l1_pre_topc @ X16 )
      | ~ ( v2_pre_topc @ X16 ) ) ),
    inference(cnf,[status(esa)],[t27_tops_2])).

thf('25',plain,
    ( ~ ( v2_pre_topc @ sk_A )
    | ~ ( l1_pre_topc @ sk_A )
    | ~ ( v1_tops_2 @ ( k7_setfam_1 @ ( u1_struct_0 @ sk_A ) @ sk_B ) @ sk_A )
    | ~ ( v1_finset_1 @ ( k7_setfam_1 @ ( u1_struct_0 @ sk_A ) @ sk_B ) )
    | ( v3_pre_topc @ ( k6_setfam_1 @ ( u1_struct_0 @ sk_A ) @ ( k7_setfam_1 @ ( u1_struct_0 @ sk_A ) @ sk_B ) ) @ sk_A ) ),
    inference('sup-',[status(thm)],['23','24'])).

thf('26',plain,(
    v2_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('27',plain,(
    l1_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('28',plain,(
    m1_subset_1 @ sk_B @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t16_tops_2,axiom,(
    ! [A: $i] :
      ( ( l1_pre_topc @ A )
     => ! [B: $i] :
          ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) )
         => ( ( v2_tops_2 @ B @ A )
          <=> ( v1_tops_2 @ ( k7_setfam_1 @ ( u1_struct_0 @ A ) @ B ) @ A ) ) ) ) )).

thf('29',plain,(
    ! [X13: $i,X14: $i] :
      ( ~ ( m1_subset_1 @ X13 @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X14 ) ) ) )
      | ~ ( v2_tops_2 @ X13 @ X14 )
      | ( v1_tops_2 @ ( k7_setfam_1 @ ( u1_struct_0 @ X14 ) @ X13 ) @ X14 )
      | ~ ( l1_pre_topc @ X14 ) ) ),
    inference(cnf,[status(esa)],[t16_tops_2])).

thf('30',plain,
    ( ~ ( l1_pre_topc @ sk_A )
    | ( v1_tops_2 @ ( k7_setfam_1 @ ( u1_struct_0 @ sk_A ) @ sk_B ) @ sk_A )
    | ~ ( v2_tops_2 @ sk_B @ sk_A ) ),
    inference('sup-',[status(thm)],['28','29'])).

thf('31',plain,(
    l1_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('32',plain,(
    v2_tops_2 @ sk_B @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('33',plain,(
    v1_tops_2 @ ( k7_setfam_1 @ ( u1_struct_0 @ sk_A ) @ sk_B ) @ sk_A ),
    inference(demod,[status(thm)],['30','31','32'])).

thf('34',plain,(
    m1_subset_1 @ sk_B @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t13_tops_2,axiom,(
    ! [A: $i] :
      ( ( l1_struct_0 @ A )
     => ! [B: $i] :
          ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) )
         => ( ( v1_finset_1 @ ( k7_setfam_1 @ ( u1_struct_0 @ A ) @ B ) )
          <=> ( v1_finset_1 @ B ) ) ) ) )).

thf('35',plain,(
    ! [X11: $i,X12: $i] :
      ( ~ ( m1_subset_1 @ X11 @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X12 ) ) ) )
      | ~ ( v1_finset_1 @ X11 )
      | ( v1_finset_1 @ ( k7_setfam_1 @ ( u1_struct_0 @ X12 ) @ X11 ) )
      | ~ ( l1_struct_0 @ X12 ) ) ),
    inference(cnf,[status(esa)],[t13_tops_2])).

thf('36',plain,
    ( ~ ( l1_struct_0 @ sk_A )
    | ( v1_finset_1 @ ( k7_setfam_1 @ ( u1_struct_0 @ sk_A ) @ sk_B ) )
    | ~ ( v1_finset_1 @ sk_B ) ),
    inference('sup-',[status(thm)],['34','35'])).

thf('37',plain,(
    l1_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(dt_l1_pre_topc,axiom,(
    ! [A: $i] :
      ( ( l1_pre_topc @ A )
     => ( l1_struct_0 @ A ) ) )).

thf('38',plain,(
    ! [X6: $i] :
      ( ( l1_struct_0 @ X6 )
      | ~ ( l1_pre_topc @ X6 ) ) ),
    inference(cnf,[status(esa)],[dt_l1_pre_topc])).

thf('39',plain,(
    l1_struct_0 @ sk_A ),
    inference('sup-',[status(thm)],['37','38'])).

thf('40',plain,(
    v1_finset_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('41',plain,(
    v1_finset_1 @ ( k7_setfam_1 @ ( u1_struct_0 @ sk_A ) @ sk_B ) ),
    inference(demod,[status(thm)],['36','39','40'])).

thf('42',plain,(
    v3_pre_topc @ ( k6_setfam_1 @ ( u1_struct_0 @ sk_A ) @ ( k7_setfam_1 @ ( u1_struct_0 @ sk_A ) @ sk_B ) ) @ sk_A ),
    inference(demod,[status(thm)],['25','26','27','33','41'])).

thf('43',plain,
    ( ( v3_pre_topc @ ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ ( k3_tarski @ sk_B ) ) @ sk_A )
    | ( sk_B = k1_xboole_0 ) ),
    inference('sup+',[status(thm)],['20','42'])).

thf('44',plain,(
    m1_subset_1 @ ( k3_tarski @ sk_B ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ),
    inference(demod,[status(thm)],['2','5'])).

thf(t29_tops_1,axiom,(
    ! [A: $i] :
      ( ( l1_pre_topc @ A )
     => ! [B: $i] :
          ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) )
         => ( ( v4_pre_topc @ B @ A )
          <=> ( v3_pre_topc @ ( k3_subset_1 @ ( u1_struct_0 @ A ) @ B ) @ A ) ) ) ) )).

thf('45',plain,(
    ! [X17: $i,X18: $i] :
      ( ~ ( m1_subset_1 @ X17 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X18 ) ) )
      | ~ ( v3_pre_topc @ ( k3_subset_1 @ ( u1_struct_0 @ X18 ) @ X17 ) @ X18 )
      | ( v4_pre_topc @ X17 @ X18 )
      | ~ ( l1_pre_topc @ X18 ) ) ),
    inference(cnf,[status(esa)],[t29_tops_1])).

thf('46',plain,
    ( ~ ( l1_pre_topc @ sk_A )
    | ( v4_pre_topc @ ( k3_tarski @ sk_B ) @ sk_A )
    | ~ ( v3_pre_topc @ ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ ( k3_tarski @ sk_B ) ) @ sk_A ) ),
    inference('sup-',[status(thm)],['44','45'])).

thf('47',plain,(
    l1_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('48',plain,
    ( ( v4_pre_topc @ ( k3_tarski @ sk_B ) @ sk_A )
    | ~ ( v3_pre_topc @ ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ ( k3_tarski @ sk_B ) ) @ sk_A ) ),
    inference(demod,[status(thm)],['46','47'])).

thf('49',plain,(
    ~ ( v4_pre_topc @ ( k3_tarski @ sk_B ) @ sk_A ) ),
    inference(demod,[status(thm)],['12','13'])).

thf('50',plain,(
    ~ ( v3_pre_topc @ ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ ( k3_tarski @ sk_B ) ) @ sk_A ) ),
    inference(clc,[status(thm)],['48','49'])).

thf('51',plain,(
    sk_B = k1_xboole_0 ),
    inference(clc,[status(thm)],['43','50'])).

thf(t2_zfmisc_1,axiom,
    ( ( k3_tarski @ k1_xboole_0 )
    = k1_xboole_0 )).

thf('52',plain,
    ( ( k3_tarski @ k1_xboole_0 )
    = k1_xboole_0 ),
    inference(cnf,[status(esa)],[t2_zfmisc_1])).

thf(fc1_xboole_0,axiom,(
    v1_xboole_0 @ k1_xboole_0 )).

thf('53',plain,(
    v1_xboole_0 @ k1_xboole_0 ),
    inference(cnf,[status(esa)],[fc1_xboole_0])).

thf('54',plain,(
    $false ),
    inference(demod,[status(thm)],['15','51','52','53'])).


%------------------------------------------------------------------------------
