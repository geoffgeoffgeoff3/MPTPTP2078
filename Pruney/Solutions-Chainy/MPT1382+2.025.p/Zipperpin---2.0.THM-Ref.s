%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.ohfXA7eHi5

% Computer   : n009.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 14:06:53 EST 2020

% Result     : Theorem 0.21s
% Output     : Refutation 0.21s
% Verified   : 
% Statistics : Number of formulae       :   96 ( 308 expanded)
%              Number of leaves         :   23 (  99 expanded)
%              Depth                    :   16
%              Number of atoms          :  779 (5338 expanded)
%              Number of equality atoms :    0 (   0 expanded)
%              Maximal formula depth    :   17 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(v3_pre_topc_type,type,(
    v3_pre_topc: $i > $i > $o )).

thf(k1_tops_1_type,type,(
    k1_tops_1: $i > $i > $i )).

thf(sk_C_type,type,(
    sk_C: $i )).

thf(l1_pre_topc_type,type,(
    l1_pre_topc: $i > $o )).

thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(u1_struct_0_type,type,(
    u1_struct_0: $i > $i )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(v2_struct_0_type,type,(
    v2_struct_0: $i > $o )).

thf(v1_xboole_0_type,type,(
    v1_xboole_0: $i > $o )).

thf(v2_pre_topc_type,type,(
    v2_pre_topc: $i > $o )).

thf(m1_connsp_2_type,type,(
    m1_connsp_2: $i > $i > $i > $o )).

thf(t7_connsp_2,conjecture,(
    ! [A: $i] :
      ( ( ~ ( v2_struct_0 @ A )
        & ( v2_pre_topc @ A )
        & ( l1_pre_topc @ A ) )
     => ! [B: $i] :
          ( ( m1_subset_1 @ B @ ( u1_struct_0 @ A ) )
         => ! [C: $i] :
              ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) )
             => ~ ( ( m1_connsp_2 @ C @ A @ B )
                  & ! [D: $i] :
                      ( ( ~ ( v1_xboole_0 @ D )
                        & ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) )
                     => ~ ( ( m1_connsp_2 @ D @ A @ B )
                          & ( v3_pre_topc @ D @ A )
                          & ( r1_tarski @ D @ C ) ) ) ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i] :
        ( ( ~ ( v2_struct_0 @ A )
          & ( v2_pre_topc @ A )
          & ( l1_pre_topc @ A ) )
       => ! [B: $i] :
            ( ( m1_subset_1 @ B @ ( u1_struct_0 @ A ) )
           => ! [C: $i] :
                ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) )
               => ~ ( ( m1_connsp_2 @ C @ A @ B )
                    & ! [D: $i] :
                        ( ( ~ ( v1_xboole_0 @ D )
                          & ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) )
                       => ~ ( ( m1_connsp_2 @ D @ A @ B )
                            & ( v3_pre_topc @ D @ A )
                            & ( r1_tarski @ D @ C ) ) ) ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t7_connsp_2])).

thf('0',plain,(
    ~ ( v2_struct_0 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('1',plain,(
    m1_connsp_2 @ sk_C @ sk_A @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('2',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ),
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

thf('3',plain,(
    ! [X16: $i,X17: $i,X18: $i] :
      ( ~ ( m1_subset_1 @ X16 @ ( u1_struct_0 @ X17 ) )
      | ~ ( m1_connsp_2 @ X18 @ X17 @ X16 )
      | ( r2_hidden @ X16 @ ( k1_tops_1 @ X17 @ X18 ) )
      | ~ ( m1_subset_1 @ X18 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X17 ) ) )
      | ~ ( l1_pre_topc @ X17 )
      | ~ ( v2_pre_topc @ X17 )
      | ( v2_struct_0 @ X17 ) ) ),
    inference(cnf,[status(esa)],[d1_connsp_2])).

thf('4',plain,(
    ! [X0: $i] :
      ( ( v2_struct_0 @ sk_A )
      | ~ ( v2_pre_topc @ sk_A )
      | ~ ( l1_pre_topc @ sk_A )
      | ( r2_hidden @ X0 @ ( k1_tops_1 @ sk_A @ sk_C ) )
      | ~ ( m1_connsp_2 @ sk_C @ sk_A @ X0 )
      | ~ ( m1_subset_1 @ X0 @ ( u1_struct_0 @ sk_A ) ) ) ),
    inference('sup-',[status(thm)],['2','3'])).

thf('5',plain,(
    v2_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('6',plain,(
    l1_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('7',plain,(
    ! [X0: $i] :
      ( ( v2_struct_0 @ sk_A )
      | ( r2_hidden @ X0 @ ( k1_tops_1 @ sk_A @ sk_C ) )
      | ~ ( m1_connsp_2 @ sk_C @ sk_A @ X0 )
      | ~ ( m1_subset_1 @ X0 @ ( u1_struct_0 @ sk_A ) ) ) ),
    inference(demod,[status(thm)],['4','5','6'])).

thf('8',plain,
    ( ~ ( m1_subset_1 @ sk_B @ ( u1_struct_0 @ sk_A ) )
    | ( r2_hidden @ sk_B @ ( k1_tops_1 @ sk_A @ sk_C ) )
    | ( v2_struct_0 @ sk_A ) ),
    inference('sup-',[status(thm)],['1','7'])).

thf('9',plain,(
    m1_subset_1 @ sk_B @ ( u1_struct_0 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('10',plain,
    ( ( r2_hidden @ sk_B @ ( k1_tops_1 @ sk_A @ sk_C ) )
    | ( v2_struct_0 @ sk_A ) ),
    inference(demod,[status(thm)],['8','9'])).

thf('11',plain,(
    ~ ( v2_struct_0 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('12',plain,(
    r2_hidden @ sk_B @ ( k1_tops_1 @ sk_A @ sk_C ) ),
    inference(clc,[status(thm)],['10','11'])).

thf('13',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t3_subset,axiom,(
    ! [A: $i,B: $i] :
      ( ( m1_subset_1 @ A @ ( k1_zfmisc_1 @ B ) )
    <=> ( r1_tarski @ A @ B ) ) )).

thf('14',plain,(
    ! [X3: $i,X4: $i] :
      ( ( r1_tarski @ X3 @ X4 )
      | ~ ( m1_subset_1 @ X3 @ ( k1_zfmisc_1 @ X4 ) ) ) ),
    inference(cnf,[status(esa)],[t3_subset])).

thf('15',plain,(
    r1_tarski @ sk_C @ ( u1_struct_0 @ sk_A ) ),
    inference('sup-',[status(thm)],['13','14'])).

thf('16',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t44_tops_1,axiom,(
    ! [A: $i] :
      ( ( l1_pre_topc @ A )
     => ! [B: $i] :
          ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) )
         => ( r1_tarski @ ( k1_tops_1 @ A @ B ) @ B ) ) ) )).

thf('17',plain,(
    ! [X14: $i,X15: $i] :
      ( ~ ( m1_subset_1 @ X14 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X15 ) ) )
      | ( r1_tarski @ ( k1_tops_1 @ X15 @ X14 ) @ X14 )
      | ~ ( l1_pre_topc @ X15 ) ) ),
    inference(cnf,[status(esa)],[t44_tops_1])).

thf('18',plain,
    ( ~ ( l1_pre_topc @ sk_A )
    | ( r1_tarski @ ( k1_tops_1 @ sk_A @ sk_C ) @ sk_C ) ),
    inference('sup-',[status(thm)],['16','17'])).

thf('19',plain,(
    l1_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('20',plain,(
    r1_tarski @ ( k1_tops_1 @ sk_A @ sk_C ) @ sk_C ),
    inference(demod,[status(thm)],['18','19'])).

thf(t1_xboole_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( ( r1_tarski @ A @ B )
        & ( r1_tarski @ B @ C ) )
     => ( r1_tarski @ A @ C ) ) )).

thf('21',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( r1_tarski @ X0 @ X1 )
      | ~ ( r1_tarski @ X1 @ X2 )
      | ( r1_tarski @ X0 @ X2 ) ) ),
    inference(cnf,[status(esa)],[t1_xboole_1])).

thf('22',plain,(
    ! [X0: $i] :
      ( ( r1_tarski @ ( k1_tops_1 @ sk_A @ sk_C ) @ X0 )
      | ~ ( r1_tarski @ sk_C @ X0 ) ) ),
    inference('sup-',[status(thm)],['20','21'])).

thf('23',plain,(
    r1_tarski @ ( k1_tops_1 @ sk_A @ sk_C ) @ ( u1_struct_0 @ sk_A ) ),
    inference('sup-',[status(thm)],['15','22'])).

thf('24',plain,(
    ! [X3: $i,X5: $i] :
      ( ( m1_subset_1 @ X3 @ ( k1_zfmisc_1 @ X5 ) )
      | ~ ( r1_tarski @ X3 @ X5 ) ) ),
    inference(cnf,[status(esa)],[t3_subset])).

thf('25',plain,(
    m1_subset_1 @ ( k1_tops_1 @ sk_A @ sk_C ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ),
    inference('sup-',[status(thm)],['23','24'])).

thf(t5_connsp_2,axiom,(
    ! [A: $i] :
      ( ( ~ ( v2_struct_0 @ A )
        & ( v2_pre_topc @ A )
        & ( l1_pre_topc @ A ) )
     => ! [B: $i] :
          ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) )
         => ! [C: $i] :
              ( ( m1_subset_1 @ C @ ( u1_struct_0 @ A ) )
             => ( ( ( v3_pre_topc @ B @ A )
                  & ( r2_hidden @ C @ B ) )
               => ( m1_connsp_2 @ B @ A @ C ) ) ) ) ) )).

thf('26',plain,(
    ! [X22: $i,X23: $i,X24: $i] :
      ( ~ ( m1_subset_1 @ X22 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X23 ) ) )
      | ~ ( v3_pre_topc @ X22 @ X23 )
      | ~ ( r2_hidden @ X24 @ X22 )
      | ( m1_connsp_2 @ X22 @ X23 @ X24 )
      | ~ ( m1_subset_1 @ X24 @ ( u1_struct_0 @ X23 ) )
      | ~ ( l1_pre_topc @ X23 )
      | ~ ( v2_pre_topc @ X23 )
      | ( v2_struct_0 @ X23 ) ) ),
    inference(cnf,[status(esa)],[t5_connsp_2])).

thf('27',plain,(
    ! [X0: $i] :
      ( ( v2_struct_0 @ sk_A )
      | ~ ( v2_pre_topc @ sk_A )
      | ~ ( l1_pre_topc @ sk_A )
      | ~ ( m1_subset_1 @ X0 @ ( u1_struct_0 @ sk_A ) )
      | ( m1_connsp_2 @ ( k1_tops_1 @ sk_A @ sk_C ) @ sk_A @ X0 )
      | ~ ( r2_hidden @ X0 @ ( k1_tops_1 @ sk_A @ sk_C ) )
      | ~ ( v3_pre_topc @ ( k1_tops_1 @ sk_A @ sk_C ) @ sk_A ) ) ),
    inference('sup-',[status(thm)],['25','26'])).

thf('28',plain,(
    v2_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('29',plain,(
    l1_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('30',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(fc9_tops_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( ( v2_pre_topc @ A )
        & ( l1_pre_topc @ A )
        & ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) )
     => ( v3_pre_topc @ ( k1_tops_1 @ A @ B ) @ A ) ) )).

thf('31',plain,(
    ! [X12: $i,X13: $i] :
      ( ~ ( l1_pre_topc @ X12 )
      | ~ ( v2_pre_topc @ X12 )
      | ~ ( m1_subset_1 @ X13 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X12 ) ) )
      | ( v3_pre_topc @ ( k1_tops_1 @ X12 @ X13 ) @ X12 ) ) ),
    inference(cnf,[status(esa)],[fc9_tops_1])).

thf('32',plain,
    ( ( v3_pre_topc @ ( k1_tops_1 @ sk_A @ sk_C ) @ sk_A )
    | ~ ( v2_pre_topc @ sk_A )
    | ~ ( l1_pre_topc @ sk_A ) ),
    inference('sup-',[status(thm)],['30','31'])).

thf('33',plain,(
    v2_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('34',plain,(
    l1_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('35',plain,(
    v3_pre_topc @ ( k1_tops_1 @ sk_A @ sk_C ) @ sk_A ),
    inference(demod,[status(thm)],['32','33','34'])).

thf('36',plain,(
    ! [X0: $i] :
      ( ( v2_struct_0 @ sk_A )
      | ~ ( m1_subset_1 @ X0 @ ( u1_struct_0 @ sk_A ) )
      | ( m1_connsp_2 @ ( k1_tops_1 @ sk_A @ sk_C ) @ sk_A @ X0 )
      | ~ ( r2_hidden @ X0 @ ( k1_tops_1 @ sk_A @ sk_C ) ) ) ),
    inference(demod,[status(thm)],['27','28','29','35'])).

thf('37',plain,
    ( ( m1_connsp_2 @ ( k1_tops_1 @ sk_A @ sk_C ) @ sk_A @ sk_B )
    | ~ ( m1_subset_1 @ sk_B @ ( u1_struct_0 @ sk_A ) )
    | ( v2_struct_0 @ sk_A ) ),
    inference('sup-',[status(thm)],['12','36'])).

thf('38',plain,(
    m1_subset_1 @ sk_B @ ( u1_struct_0 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('39',plain,
    ( ( m1_connsp_2 @ ( k1_tops_1 @ sk_A @ sk_C ) @ sk_A @ sk_B )
    | ( v2_struct_0 @ sk_A ) ),
    inference(demod,[status(thm)],['37','38'])).

thf('40',plain,(
    ~ ( v2_struct_0 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('41',plain,(
    m1_connsp_2 @ ( k1_tops_1 @ sk_A @ sk_C ) @ sk_A @ sk_B ),
    inference(clc,[status(thm)],['39','40'])).

thf('42',plain,(
    m1_subset_1 @ ( k1_tops_1 @ sk_A @ sk_C ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ),
    inference('sup-',[status(thm)],['23','24'])).

thf('43',plain,(
    ! [X16: $i,X17: $i,X18: $i] :
      ( ~ ( m1_subset_1 @ X16 @ ( u1_struct_0 @ X17 ) )
      | ~ ( m1_connsp_2 @ X18 @ X17 @ X16 )
      | ( r2_hidden @ X16 @ ( k1_tops_1 @ X17 @ X18 ) )
      | ~ ( m1_subset_1 @ X18 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X17 ) ) )
      | ~ ( l1_pre_topc @ X17 )
      | ~ ( v2_pre_topc @ X17 )
      | ( v2_struct_0 @ X17 ) ) ),
    inference(cnf,[status(esa)],[d1_connsp_2])).

thf('44',plain,(
    ! [X0: $i] :
      ( ( v2_struct_0 @ sk_A )
      | ~ ( v2_pre_topc @ sk_A )
      | ~ ( l1_pre_topc @ sk_A )
      | ( r2_hidden @ X0 @ ( k1_tops_1 @ sk_A @ ( k1_tops_1 @ sk_A @ sk_C ) ) )
      | ~ ( m1_connsp_2 @ ( k1_tops_1 @ sk_A @ sk_C ) @ sk_A @ X0 )
      | ~ ( m1_subset_1 @ X0 @ ( u1_struct_0 @ sk_A ) ) ) ),
    inference('sup-',[status(thm)],['42','43'])).

thf('45',plain,(
    v2_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('46',plain,(
    l1_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('47',plain,(
    ! [X0: $i] :
      ( ( v2_struct_0 @ sk_A )
      | ( r2_hidden @ X0 @ ( k1_tops_1 @ sk_A @ ( k1_tops_1 @ sk_A @ sk_C ) ) )
      | ~ ( m1_connsp_2 @ ( k1_tops_1 @ sk_A @ sk_C ) @ sk_A @ X0 )
      | ~ ( m1_subset_1 @ X0 @ ( u1_struct_0 @ sk_A ) ) ) ),
    inference(demod,[status(thm)],['44','45','46'])).

thf('48',plain,
    ( ~ ( m1_subset_1 @ sk_B @ ( u1_struct_0 @ sk_A ) )
    | ( r2_hidden @ sk_B @ ( k1_tops_1 @ sk_A @ ( k1_tops_1 @ sk_A @ sk_C ) ) )
    | ( v2_struct_0 @ sk_A ) ),
    inference('sup-',[status(thm)],['41','47'])).

thf('49',plain,(
    m1_subset_1 @ sk_B @ ( u1_struct_0 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('50',plain,
    ( ( r2_hidden @ sk_B @ ( k1_tops_1 @ sk_A @ ( k1_tops_1 @ sk_A @ sk_C ) ) )
    | ( v2_struct_0 @ sk_A ) ),
    inference(demod,[status(thm)],['48','49'])).

thf('51',plain,(
    m1_subset_1 @ ( k1_tops_1 @ sk_A @ sk_C ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ),
    inference('sup-',[status(thm)],['23','24'])).

thf('52',plain,(
    ! [X14: $i,X15: $i] :
      ( ~ ( m1_subset_1 @ X14 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X15 ) ) )
      | ( r1_tarski @ ( k1_tops_1 @ X15 @ X14 ) @ X14 )
      | ~ ( l1_pre_topc @ X15 ) ) ),
    inference(cnf,[status(esa)],[t44_tops_1])).

thf('53',plain,
    ( ~ ( l1_pre_topc @ sk_A )
    | ( r1_tarski @ ( k1_tops_1 @ sk_A @ ( k1_tops_1 @ sk_A @ sk_C ) ) @ ( k1_tops_1 @ sk_A @ sk_C ) ) ),
    inference('sup-',[status(thm)],['51','52'])).

thf('54',plain,(
    l1_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('55',plain,(
    r1_tarski @ ( k1_tops_1 @ sk_A @ ( k1_tops_1 @ sk_A @ sk_C ) ) @ ( k1_tops_1 @ sk_A @ sk_C ) ),
    inference(demod,[status(thm)],['53','54'])).

thf('56',plain,(
    ! [X3: $i,X5: $i] :
      ( ( m1_subset_1 @ X3 @ ( k1_zfmisc_1 @ X5 ) )
      | ~ ( r1_tarski @ X3 @ X5 ) ) ),
    inference(cnf,[status(esa)],[t3_subset])).

thf('57',plain,(
    m1_subset_1 @ ( k1_tops_1 @ sk_A @ ( k1_tops_1 @ sk_A @ sk_C ) ) @ ( k1_zfmisc_1 @ ( k1_tops_1 @ sk_A @ sk_C ) ) ),
    inference('sup-',[status(thm)],['55','56'])).

thf(t5_subset,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ~ ( ( r2_hidden @ A @ B )
        & ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ C ) )
        & ( v1_xboole_0 @ C ) ) )).

thf('58',plain,(
    ! [X9: $i,X10: $i,X11: $i] :
      ( ~ ( r2_hidden @ X9 @ X10 )
      | ~ ( v1_xboole_0 @ X11 )
      | ~ ( m1_subset_1 @ X10 @ ( k1_zfmisc_1 @ X11 ) ) ) ),
    inference(cnf,[status(esa)],[t5_subset])).

thf('59',plain,(
    ! [X0: $i] :
      ( ~ ( v1_xboole_0 @ ( k1_tops_1 @ sk_A @ sk_C ) )
      | ~ ( r2_hidden @ X0 @ ( k1_tops_1 @ sk_A @ ( k1_tops_1 @ sk_A @ sk_C ) ) ) ) ),
    inference('sup-',[status(thm)],['57','58'])).

thf('60',plain,(
    m1_subset_1 @ ( k1_tops_1 @ sk_A @ sk_C ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ),
    inference('sup-',[status(thm)],['23','24'])).

thf('61',plain,(
    ! [X25: $i] :
      ( ~ ( r1_tarski @ X25 @ sk_C )
      | ~ ( v3_pre_topc @ X25 @ sk_A )
      | ~ ( m1_connsp_2 @ X25 @ sk_A @ sk_B )
      | ~ ( m1_subset_1 @ X25 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) )
      | ( v1_xboole_0 @ X25 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('62',plain,
    ( ( v1_xboole_0 @ ( k1_tops_1 @ sk_A @ sk_C ) )
    | ~ ( m1_connsp_2 @ ( k1_tops_1 @ sk_A @ sk_C ) @ sk_A @ sk_B )
    | ~ ( v3_pre_topc @ ( k1_tops_1 @ sk_A @ sk_C ) @ sk_A )
    | ~ ( r1_tarski @ ( k1_tops_1 @ sk_A @ sk_C ) @ sk_C ) ),
    inference('sup-',[status(thm)],['60','61'])).

thf('63',plain,(
    r1_tarski @ ( k1_tops_1 @ sk_A @ sk_C ) @ sk_C ),
    inference(demod,[status(thm)],['18','19'])).

thf('64',plain,
    ( ( v1_xboole_0 @ ( k1_tops_1 @ sk_A @ sk_C ) )
    | ~ ( m1_connsp_2 @ ( k1_tops_1 @ sk_A @ sk_C ) @ sk_A @ sk_B )
    | ~ ( v3_pre_topc @ ( k1_tops_1 @ sk_A @ sk_C ) @ sk_A ) ),
    inference(demod,[status(thm)],['62','63'])).

thf('65',plain,(
    v3_pre_topc @ ( k1_tops_1 @ sk_A @ sk_C ) @ sk_A ),
    inference(demod,[status(thm)],['32','33','34'])).

thf('66',plain,
    ( ( v1_xboole_0 @ ( k1_tops_1 @ sk_A @ sk_C ) )
    | ~ ( m1_connsp_2 @ ( k1_tops_1 @ sk_A @ sk_C ) @ sk_A @ sk_B ) ),
    inference(demod,[status(thm)],['64','65'])).

thf('67',plain,(
    m1_connsp_2 @ ( k1_tops_1 @ sk_A @ sk_C ) @ sk_A @ sk_B ),
    inference(clc,[status(thm)],['39','40'])).

thf('68',plain,(
    v1_xboole_0 @ ( k1_tops_1 @ sk_A @ sk_C ) ),
    inference(demod,[status(thm)],['66','67'])).

thf('69',plain,(
    ! [X0: $i] :
      ~ ( r2_hidden @ X0 @ ( k1_tops_1 @ sk_A @ ( k1_tops_1 @ sk_A @ sk_C ) ) ) ),
    inference(demod,[status(thm)],['59','68'])).

thf('70',plain,(
    v2_struct_0 @ sk_A ),
    inference(clc,[status(thm)],['50','69'])).

thf('71',plain,(
    $false ),
    inference(demod,[status(thm)],['0','70'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.ohfXA7eHi5
% 0.14/0.34  % Computer   : n009.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % DateTime   : Tue Dec  1 18:06:41 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.34  % Running portfolio for 600 s
% 0.14/0.34  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.14/0.34  % Number of cores: 8
% 0.14/0.35  % Python version: Python 3.6.8
% 0.14/0.35  % Running in FO mode
% 0.21/0.51  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.21/0.51  % Solved by: fo/fo7.sh
% 0.21/0.51  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.21/0.51  % done 116 iterations in 0.056s
% 0.21/0.51  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.21/0.51  % SZS output start Refutation
% 0.21/0.51  thf(v3_pre_topc_type, type, v3_pre_topc: $i > $i > $o).
% 0.21/0.51  thf(k1_tops_1_type, type, k1_tops_1: $i > $i > $i).
% 0.21/0.51  thf(sk_C_type, type, sk_C: $i).
% 0.21/0.51  thf(l1_pre_topc_type, type, l1_pre_topc: $i > $o).
% 0.21/0.51  thf(m1_subset_1_type, type, m1_subset_1: $i > $i > $o).
% 0.21/0.51  thf(k1_zfmisc_1_type, type, k1_zfmisc_1: $i > $i).
% 0.21/0.51  thf(sk_A_type, type, sk_A: $i).
% 0.21/0.51  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.21/0.51  thf(sk_B_type, type, sk_B: $i).
% 0.21/0.51  thf(u1_struct_0_type, type, u1_struct_0: $i > $i).
% 0.21/0.51  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.21/0.51  thf(v2_struct_0_type, type, v2_struct_0: $i > $o).
% 0.21/0.51  thf(v1_xboole_0_type, type, v1_xboole_0: $i > $o).
% 0.21/0.51  thf(v2_pre_topc_type, type, v2_pre_topc: $i > $o).
% 0.21/0.51  thf(m1_connsp_2_type, type, m1_connsp_2: $i > $i > $i > $o).
% 0.21/0.51  thf(t7_connsp_2, conjecture,
% 0.21/0.51    (![A:$i]:
% 0.21/0.51     ( ( ( ~( v2_struct_0 @ A ) ) & ( v2_pre_topc @ A ) & ( l1_pre_topc @ A ) ) =>
% 0.21/0.51       ( ![B:$i]:
% 0.21/0.51         ( ( m1_subset_1 @ B @ ( u1_struct_0 @ A ) ) =>
% 0.21/0.51           ( ![C:$i]:
% 0.21/0.51             ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) =>
% 0.21/0.51               ( ~( ( m1_connsp_2 @ C @ A @ B ) & 
% 0.21/0.51                    ( ![D:$i]:
% 0.21/0.51                      ( ( ( ~( v1_xboole_0 @ D ) ) & 
% 0.21/0.51                          ( m1_subset_1 @
% 0.21/0.51                            D @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) ) =>
% 0.21/0.51                        ( ~( ( m1_connsp_2 @ D @ A @ B ) & 
% 0.21/0.51                             ( v3_pre_topc @ D @ A ) & ( r1_tarski @ D @ C ) ) ) ) ) ) ) ) ) ) ) ))).
% 0.21/0.51  thf(zf_stmt_0, negated_conjecture,
% 0.21/0.51    (~( ![A:$i]:
% 0.21/0.51        ( ( ( ~( v2_struct_0 @ A ) ) & ( v2_pre_topc @ A ) & 
% 0.21/0.51            ( l1_pre_topc @ A ) ) =>
% 0.21/0.51          ( ![B:$i]:
% 0.21/0.51            ( ( m1_subset_1 @ B @ ( u1_struct_0 @ A ) ) =>
% 0.21/0.51              ( ![C:$i]:
% 0.21/0.51                ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) =>
% 0.21/0.51                  ( ~( ( m1_connsp_2 @ C @ A @ B ) & 
% 0.21/0.51                       ( ![D:$i]:
% 0.21/0.51                         ( ( ( ~( v1_xboole_0 @ D ) ) & 
% 0.21/0.51                             ( m1_subset_1 @
% 0.21/0.51                               D @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) ) =>
% 0.21/0.51                           ( ~( ( m1_connsp_2 @ D @ A @ B ) & 
% 0.21/0.51                                ( v3_pre_topc @ D @ A ) & ( r1_tarski @ D @ C ) ) ) ) ) ) ) ) ) ) ) ) )),
% 0.21/0.51    inference('cnf.neg', [status(esa)], [t7_connsp_2])).
% 0.21/0.51  thf('0', plain, (~ (v2_struct_0 @ sk_A)),
% 0.21/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.51  thf('1', plain, ((m1_connsp_2 @ sk_C @ sk_A @ sk_B)),
% 0.21/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.51  thf('2', plain,
% 0.21/0.51      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))),
% 0.21/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.51  thf(d1_connsp_2, axiom,
% 0.21/0.51    (![A:$i]:
% 0.21/0.51     ( ( ( ~( v2_struct_0 @ A ) ) & ( v2_pre_topc @ A ) & ( l1_pre_topc @ A ) ) =>
% 0.21/0.51       ( ![B:$i]:
% 0.21/0.51         ( ( m1_subset_1 @ B @ ( u1_struct_0 @ A ) ) =>
% 0.21/0.51           ( ![C:$i]:
% 0.21/0.51             ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) =>
% 0.21/0.51               ( ( m1_connsp_2 @ C @ A @ B ) <=>
% 0.21/0.51                 ( r2_hidden @ B @ ( k1_tops_1 @ A @ C ) ) ) ) ) ) ) ))).
% 0.21/0.51  thf('3', plain,
% 0.21/0.51      (![X16 : $i, X17 : $i, X18 : $i]:
% 0.21/0.51         (~ (m1_subset_1 @ X16 @ (u1_struct_0 @ X17))
% 0.21/0.51          | ~ (m1_connsp_2 @ X18 @ X17 @ X16)
% 0.21/0.51          | (r2_hidden @ X16 @ (k1_tops_1 @ X17 @ X18))
% 0.21/0.51          | ~ (m1_subset_1 @ X18 @ (k1_zfmisc_1 @ (u1_struct_0 @ X17)))
% 0.21/0.51          | ~ (l1_pre_topc @ X17)
% 0.21/0.51          | ~ (v2_pre_topc @ X17)
% 0.21/0.51          | (v2_struct_0 @ X17))),
% 0.21/0.51      inference('cnf', [status(esa)], [d1_connsp_2])).
% 0.21/0.51  thf('4', plain,
% 0.21/0.51      (![X0 : $i]:
% 0.21/0.51         ((v2_struct_0 @ sk_A)
% 0.21/0.51          | ~ (v2_pre_topc @ sk_A)
% 0.21/0.51          | ~ (l1_pre_topc @ sk_A)
% 0.21/0.51          | (r2_hidden @ X0 @ (k1_tops_1 @ sk_A @ sk_C))
% 0.21/0.51          | ~ (m1_connsp_2 @ sk_C @ sk_A @ X0)
% 0.21/0.51          | ~ (m1_subset_1 @ X0 @ (u1_struct_0 @ sk_A)))),
% 0.21/0.51      inference('sup-', [status(thm)], ['2', '3'])).
% 0.21/0.51  thf('5', plain, ((v2_pre_topc @ sk_A)),
% 0.21/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.51  thf('6', plain, ((l1_pre_topc @ sk_A)),
% 0.21/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.51  thf('7', plain,
% 0.21/0.51      (![X0 : $i]:
% 0.21/0.51         ((v2_struct_0 @ sk_A)
% 0.21/0.51          | (r2_hidden @ X0 @ (k1_tops_1 @ sk_A @ sk_C))
% 0.21/0.51          | ~ (m1_connsp_2 @ sk_C @ sk_A @ X0)
% 0.21/0.51          | ~ (m1_subset_1 @ X0 @ (u1_struct_0 @ sk_A)))),
% 0.21/0.51      inference('demod', [status(thm)], ['4', '5', '6'])).
% 0.21/0.51  thf('8', plain,
% 0.21/0.51      ((~ (m1_subset_1 @ sk_B @ (u1_struct_0 @ sk_A))
% 0.21/0.51        | (r2_hidden @ sk_B @ (k1_tops_1 @ sk_A @ sk_C))
% 0.21/0.51        | (v2_struct_0 @ sk_A))),
% 0.21/0.51      inference('sup-', [status(thm)], ['1', '7'])).
% 0.21/0.51  thf('9', plain, ((m1_subset_1 @ sk_B @ (u1_struct_0 @ sk_A))),
% 0.21/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.51  thf('10', plain,
% 0.21/0.51      (((r2_hidden @ sk_B @ (k1_tops_1 @ sk_A @ sk_C)) | (v2_struct_0 @ sk_A))),
% 0.21/0.51      inference('demod', [status(thm)], ['8', '9'])).
% 0.21/0.51  thf('11', plain, (~ (v2_struct_0 @ sk_A)),
% 0.21/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.51  thf('12', plain, ((r2_hidden @ sk_B @ (k1_tops_1 @ sk_A @ sk_C))),
% 0.21/0.51      inference('clc', [status(thm)], ['10', '11'])).
% 0.21/0.51  thf('13', plain,
% 0.21/0.51      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))),
% 0.21/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.51  thf(t3_subset, axiom,
% 0.21/0.51    (![A:$i,B:$i]:
% 0.21/0.51     ( ( m1_subset_1 @ A @ ( k1_zfmisc_1 @ B ) ) <=> ( r1_tarski @ A @ B ) ))).
% 0.21/0.51  thf('14', plain,
% 0.21/0.51      (![X3 : $i, X4 : $i]:
% 0.21/0.51         ((r1_tarski @ X3 @ X4) | ~ (m1_subset_1 @ X3 @ (k1_zfmisc_1 @ X4)))),
% 0.21/0.51      inference('cnf', [status(esa)], [t3_subset])).
% 0.21/0.51  thf('15', plain, ((r1_tarski @ sk_C @ (u1_struct_0 @ sk_A))),
% 0.21/0.51      inference('sup-', [status(thm)], ['13', '14'])).
% 0.21/0.51  thf('16', plain,
% 0.21/0.51      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))),
% 0.21/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.51  thf(t44_tops_1, axiom,
% 0.21/0.51    (![A:$i]:
% 0.21/0.51     ( ( l1_pre_topc @ A ) =>
% 0.21/0.51       ( ![B:$i]:
% 0.21/0.51         ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) =>
% 0.21/0.51           ( r1_tarski @ ( k1_tops_1 @ A @ B ) @ B ) ) ) ))).
% 0.21/0.51  thf('17', plain,
% 0.21/0.51      (![X14 : $i, X15 : $i]:
% 0.21/0.51         (~ (m1_subset_1 @ X14 @ (k1_zfmisc_1 @ (u1_struct_0 @ X15)))
% 0.21/0.51          | (r1_tarski @ (k1_tops_1 @ X15 @ X14) @ X14)
% 0.21/0.51          | ~ (l1_pre_topc @ X15))),
% 0.21/0.51      inference('cnf', [status(esa)], [t44_tops_1])).
% 0.21/0.51  thf('18', plain,
% 0.21/0.51      ((~ (l1_pre_topc @ sk_A) | (r1_tarski @ (k1_tops_1 @ sk_A @ sk_C) @ sk_C))),
% 0.21/0.51      inference('sup-', [status(thm)], ['16', '17'])).
% 0.21/0.51  thf('19', plain, ((l1_pre_topc @ sk_A)),
% 0.21/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.51  thf('20', plain, ((r1_tarski @ (k1_tops_1 @ sk_A @ sk_C) @ sk_C)),
% 0.21/0.51      inference('demod', [status(thm)], ['18', '19'])).
% 0.21/0.51  thf(t1_xboole_1, axiom,
% 0.21/0.51    (![A:$i,B:$i,C:$i]:
% 0.21/0.51     ( ( ( r1_tarski @ A @ B ) & ( r1_tarski @ B @ C ) ) =>
% 0.21/0.51       ( r1_tarski @ A @ C ) ))).
% 0.21/0.51  thf('21', plain,
% 0.21/0.51      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.21/0.51         (~ (r1_tarski @ X0 @ X1)
% 0.21/0.51          | ~ (r1_tarski @ X1 @ X2)
% 0.21/0.51          | (r1_tarski @ X0 @ X2))),
% 0.21/0.51      inference('cnf', [status(esa)], [t1_xboole_1])).
% 0.21/0.51  thf('22', plain,
% 0.21/0.51      (![X0 : $i]:
% 0.21/0.51         ((r1_tarski @ (k1_tops_1 @ sk_A @ sk_C) @ X0)
% 0.21/0.51          | ~ (r1_tarski @ sk_C @ X0))),
% 0.21/0.51      inference('sup-', [status(thm)], ['20', '21'])).
% 0.21/0.51  thf('23', plain,
% 0.21/0.51      ((r1_tarski @ (k1_tops_1 @ sk_A @ sk_C) @ (u1_struct_0 @ sk_A))),
% 0.21/0.51      inference('sup-', [status(thm)], ['15', '22'])).
% 0.21/0.51  thf('24', plain,
% 0.21/0.51      (![X3 : $i, X5 : $i]:
% 0.21/0.51         ((m1_subset_1 @ X3 @ (k1_zfmisc_1 @ X5)) | ~ (r1_tarski @ X3 @ X5))),
% 0.21/0.51      inference('cnf', [status(esa)], [t3_subset])).
% 0.21/0.51  thf('25', plain,
% 0.21/0.51      ((m1_subset_1 @ (k1_tops_1 @ sk_A @ sk_C) @ 
% 0.21/0.51        (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))),
% 0.21/0.51      inference('sup-', [status(thm)], ['23', '24'])).
% 0.21/0.51  thf(t5_connsp_2, axiom,
% 0.21/0.51    (![A:$i]:
% 0.21/0.51     ( ( ( ~( v2_struct_0 @ A ) ) & ( v2_pre_topc @ A ) & ( l1_pre_topc @ A ) ) =>
% 0.21/0.51       ( ![B:$i]:
% 0.21/0.51         ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) =>
% 0.21/0.51           ( ![C:$i]:
% 0.21/0.51             ( ( m1_subset_1 @ C @ ( u1_struct_0 @ A ) ) =>
% 0.21/0.51               ( ( ( v3_pre_topc @ B @ A ) & ( r2_hidden @ C @ B ) ) =>
% 0.21/0.51                 ( m1_connsp_2 @ B @ A @ C ) ) ) ) ) ) ))).
% 0.21/0.51  thf('26', plain,
% 0.21/0.51      (![X22 : $i, X23 : $i, X24 : $i]:
% 0.21/0.51         (~ (m1_subset_1 @ X22 @ (k1_zfmisc_1 @ (u1_struct_0 @ X23)))
% 0.21/0.51          | ~ (v3_pre_topc @ X22 @ X23)
% 0.21/0.51          | ~ (r2_hidden @ X24 @ X22)
% 0.21/0.51          | (m1_connsp_2 @ X22 @ X23 @ X24)
% 0.21/0.51          | ~ (m1_subset_1 @ X24 @ (u1_struct_0 @ X23))
% 0.21/0.51          | ~ (l1_pre_topc @ X23)
% 0.21/0.51          | ~ (v2_pre_topc @ X23)
% 0.21/0.51          | (v2_struct_0 @ X23))),
% 0.21/0.51      inference('cnf', [status(esa)], [t5_connsp_2])).
% 0.21/0.51  thf('27', plain,
% 0.21/0.51      (![X0 : $i]:
% 0.21/0.51         ((v2_struct_0 @ sk_A)
% 0.21/0.51          | ~ (v2_pre_topc @ sk_A)
% 0.21/0.51          | ~ (l1_pre_topc @ sk_A)
% 0.21/0.51          | ~ (m1_subset_1 @ X0 @ (u1_struct_0 @ sk_A))
% 0.21/0.51          | (m1_connsp_2 @ (k1_tops_1 @ sk_A @ sk_C) @ sk_A @ X0)
% 0.21/0.51          | ~ (r2_hidden @ X0 @ (k1_tops_1 @ sk_A @ sk_C))
% 0.21/0.51          | ~ (v3_pre_topc @ (k1_tops_1 @ sk_A @ sk_C) @ sk_A))),
% 0.21/0.51      inference('sup-', [status(thm)], ['25', '26'])).
% 0.21/0.51  thf('28', plain, ((v2_pre_topc @ sk_A)),
% 0.21/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.51  thf('29', plain, ((l1_pre_topc @ sk_A)),
% 0.21/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.51  thf('30', plain,
% 0.21/0.51      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))),
% 0.21/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.51  thf(fc9_tops_1, axiom,
% 0.21/0.51    (![A:$i,B:$i]:
% 0.21/0.51     ( ( ( v2_pre_topc @ A ) & ( l1_pre_topc @ A ) & 
% 0.21/0.51         ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) ) =>
% 0.21/0.51       ( v3_pre_topc @ ( k1_tops_1 @ A @ B ) @ A ) ))).
% 0.21/0.51  thf('31', plain,
% 0.21/0.51      (![X12 : $i, X13 : $i]:
% 0.21/0.51         (~ (l1_pre_topc @ X12)
% 0.21/0.51          | ~ (v2_pre_topc @ X12)
% 0.21/0.51          | ~ (m1_subset_1 @ X13 @ (k1_zfmisc_1 @ (u1_struct_0 @ X12)))
% 0.21/0.51          | (v3_pre_topc @ (k1_tops_1 @ X12 @ X13) @ X12))),
% 0.21/0.51      inference('cnf', [status(esa)], [fc9_tops_1])).
% 0.21/0.51  thf('32', plain,
% 0.21/0.51      (((v3_pre_topc @ (k1_tops_1 @ sk_A @ sk_C) @ sk_A)
% 0.21/0.51        | ~ (v2_pre_topc @ sk_A)
% 0.21/0.51        | ~ (l1_pre_topc @ sk_A))),
% 0.21/0.51      inference('sup-', [status(thm)], ['30', '31'])).
% 0.21/0.51  thf('33', plain, ((v2_pre_topc @ sk_A)),
% 0.21/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.51  thf('34', plain, ((l1_pre_topc @ sk_A)),
% 0.21/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.51  thf('35', plain, ((v3_pre_topc @ (k1_tops_1 @ sk_A @ sk_C) @ sk_A)),
% 0.21/0.51      inference('demod', [status(thm)], ['32', '33', '34'])).
% 0.21/0.51  thf('36', plain,
% 0.21/0.51      (![X0 : $i]:
% 0.21/0.51         ((v2_struct_0 @ sk_A)
% 0.21/0.51          | ~ (m1_subset_1 @ X0 @ (u1_struct_0 @ sk_A))
% 0.21/0.51          | (m1_connsp_2 @ (k1_tops_1 @ sk_A @ sk_C) @ sk_A @ X0)
% 0.21/0.51          | ~ (r2_hidden @ X0 @ (k1_tops_1 @ sk_A @ sk_C)))),
% 0.21/0.51      inference('demod', [status(thm)], ['27', '28', '29', '35'])).
% 0.21/0.51  thf('37', plain,
% 0.21/0.51      (((m1_connsp_2 @ (k1_tops_1 @ sk_A @ sk_C) @ sk_A @ sk_B)
% 0.21/0.51        | ~ (m1_subset_1 @ sk_B @ (u1_struct_0 @ sk_A))
% 0.21/0.51        | (v2_struct_0 @ sk_A))),
% 0.21/0.51      inference('sup-', [status(thm)], ['12', '36'])).
% 0.21/0.51  thf('38', plain, ((m1_subset_1 @ sk_B @ (u1_struct_0 @ sk_A))),
% 0.21/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.51  thf('39', plain,
% 0.21/0.51      (((m1_connsp_2 @ (k1_tops_1 @ sk_A @ sk_C) @ sk_A @ sk_B)
% 0.21/0.51        | (v2_struct_0 @ sk_A))),
% 0.21/0.51      inference('demod', [status(thm)], ['37', '38'])).
% 0.21/0.51  thf('40', plain, (~ (v2_struct_0 @ sk_A)),
% 0.21/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.51  thf('41', plain, ((m1_connsp_2 @ (k1_tops_1 @ sk_A @ sk_C) @ sk_A @ sk_B)),
% 0.21/0.51      inference('clc', [status(thm)], ['39', '40'])).
% 0.21/0.51  thf('42', plain,
% 0.21/0.51      ((m1_subset_1 @ (k1_tops_1 @ sk_A @ sk_C) @ 
% 0.21/0.51        (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))),
% 0.21/0.51      inference('sup-', [status(thm)], ['23', '24'])).
% 0.21/0.51  thf('43', plain,
% 0.21/0.51      (![X16 : $i, X17 : $i, X18 : $i]:
% 0.21/0.51         (~ (m1_subset_1 @ X16 @ (u1_struct_0 @ X17))
% 0.21/0.51          | ~ (m1_connsp_2 @ X18 @ X17 @ X16)
% 0.21/0.51          | (r2_hidden @ X16 @ (k1_tops_1 @ X17 @ X18))
% 0.21/0.51          | ~ (m1_subset_1 @ X18 @ (k1_zfmisc_1 @ (u1_struct_0 @ X17)))
% 0.21/0.51          | ~ (l1_pre_topc @ X17)
% 0.21/0.51          | ~ (v2_pre_topc @ X17)
% 0.21/0.51          | (v2_struct_0 @ X17))),
% 0.21/0.51      inference('cnf', [status(esa)], [d1_connsp_2])).
% 0.21/0.51  thf('44', plain,
% 0.21/0.51      (![X0 : $i]:
% 0.21/0.51         ((v2_struct_0 @ sk_A)
% 0.21/0.51          | ~ (v2_pre_topc @ sk_A)
% 0.21/0.51          | ~ (l1_pre_topc @ sk_A)
% 0.21/0.51          | (r2_hidden @ X0 @ (k1_tops_1 @ sk_A @ (k1_tops_1 @ sk_A @ sk_C)))
% 0.21/0.51          | ~ (m1_connsp_2 @ (k1_tops_1 @ sk_A @ sk_C) @ sk_A @ X0)
% 0.21/0.51          | ~ (m1_subset_1 @ X0 @ (u1_struct_0 @ sk_A)))),
% 0.21/0.51      inference('sup-', [status(thm)], ['42', '43'])).
% 0.21/0.51  thf('45', plain, ((v2_pre_topc @ sk_A)),
% 0.21/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.51  thf('46', plain, ((l1_pre_topc @ sk_A)),
% 0.21/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.51  thf('47', plain,
% 0.21/0.51      (![X0 : $i]:
% 0.21/0.51         ((v2_struct_0 @ sk_A)
% 0.21/0.51          | (r2_hidden @ X0 @ (k1_tops_1 @ sk_A @ (k1_tops_1 @ sk_A @ sk_C)))
% 0.21/0.51          | ~ (m1_connsp_2 @ (k1_tops_1 @ sk_A @ sk_C) @ sk_A @ X0)
% 0.21/0.51          | ~ (m1_subset_1 @ X0 @ (u1_struct_0 @ sk_A)))),
% 0.21/0.51      inference('demod', [status(thm)], ['44', '45', '46'])).
% 0.21/0.51  thf('48', plain,
% 0.21/0.51      ((~ (m1_subset_1 @ sk_B @ (u1_struct_0 @ sk_A))
% 0.21/0.51        | (r2_hidden @ sk_B @ (k1_tops_1 @ sk_A @ (k1_tops_1 @ sk_A @ sk_C)))
% 0.21/0.51        | (v2_struct_0 @ sk_A))),
% 0.21/0.51      inference('sup-', [status(thm)], ['41', '47'])).
% 0.21/0.51  thf('49', plain, ((m1_subset_1 @ sk_B @ (u1_struct_0 @ sk_A))),
% 0.21/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.51  thf('50', plain,
% 0.21/0.51      (((r2_hidden @ sk_B @ (k1_tops_1 @ sk_A @ (k1_tops_1 @ sk_A @ sk_C)))
% 0.21/0.51        | (v2_struct_0 @ sk_A))),
% 0.21/0.51      inference('demod', [status(thm)], ['48', '49'])).
% 0.21/0.51  thf('51', plain,
% 0.21/0.51      ((m1_subset_1 @ (k1_tops_1 @ sk_A @ sk_C) @ 
% 0.21/0.51        (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))),
% 0.21/0.51      inference('sup-', [status(thm)], ['23', '24'])).
% 0.21/0.51  thf('52', plain,
% 0.21/0.51      (![X14 : $i, X15 : $i]:
% 0.21/0.51         (~ (m1_subset_1 @ X14 @ (k1_zfmisc_1 @ (u1_struct_0 @ X15)))
% 0.21/0.51          | (r1_tarski @ (k1_tops_1 @ X15 @ X14) @ X14)
% 0.21/0.51          | ~ (l1_pre_topc @ X15))),
% 0.21/0.51      inference('cnf', [status(esa)], [t44_tops_1])).
% 0.21/0.51  thf('53', plain,
% 0.21/0.51      ((~ (l1_pre_topc @ sk_A)
% 0.21/0.51        | (r1_tarski @ (k1_tops_1 @ sk_A @ (k1_tops_1 @ sk_A @ sk_C)) @ 
% 0.21/0.51           (k1_tops_1 @ sk_A @ sk_C)))),
% 0.21/0.51      inference('sup-', [status(thm)], ['51', '52'])).
% 0.21/0.51  thf('54', plain, ((l1_pre_topc @ sk_A)),
% 0.21/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.51  thf('55', plain,
% 0.21/0.51      ((r1_tarski @ (k1_tops_1 @ sk_A @ (k1_tops_1 @ sk_A @ sk_C)) @ 
% 0.21/0.51        (k1_tops_1 @ sk_A @ sk_C))),
% 0.21/0.51      inference('demod', [status(thm)], ['53', '54'])).
% 0.21/0.51  thf('56', plain,
% 0.21/0.51      (![X3 : $i, X5 : $i]:
% 0.21/0.51         ((m1_subset_1 @ X3 @ (k1_zfmisc_1 @ X5)) | ~ (r1_tarski @ X3 @ X5))),
% 0.21/0.51      inference('cnf', [status(esa)], [t3_subset])).
% 0.21/0.51  thf('57', plain,
% 0.21/0.51      ((m1_subset_1 @ (k1_tops_1 @ sk_A @ (k1_tops_1 @ sk_A @ sk_C)) @ 
% 0.21/0.51        (k1_zfmisc_1 @ (k1_tops_1 @ sk_A @ sk_C)))),
% 0.21/0.51      inference('sup-', [status(thm)], ['55', '56'])).
% 0.21/0.51  thf(t5_subset, axiom,
% 0.21/0.51    (![A:$i,B:$i,C:$i]:
% 0.21/0.51     ( ~( ( r2_hidden @ A @ B ) & ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ C ) ) & 
% 0.21/0.51          ( v1_xboole_0 @ C ) ) ))).
% 0.21/0.51  thf('58', plain,
% 0.21/0.51      (![X9 : $i, X10 : $i, X11 : $i]:
% 0.21/0.51         (~ (r2_hidden @ X9 @ X10)
% 0.21/0.51          | ~ (v1_xboole_0 @ X11)
% 0.21/0.51          | ~ (m1_subset_1 @ X10 @ (k1_zfmisc_1 @ X11)))),
% 0.21/0.51      inference('cnf', [status(esa)], [t5_subset])).
% 0.21/0.51  thf('59', plain,
% 0.21/0.51      (![X0 : $i]:
% 0.21/0.51         (~ (v1_xboole_0 @ (k1_tops_1 @ sk_A @ sk_C))
% 0.21/0.51          | ~ (r2_hidden @ X0 @ (k1_tops_1 @ sk_A @ (k1_tops_1 @ sk_A @ sk_C))))),
% 0.21/0.51      inference('sup-', [status(thm)], ['57', '58'])).
% 0.21/0.51  thf('60', plain,
% 0.21/0.51      ((m1_subset_1 @ (k1_tops_1 @ sk_A @ sk_C) @ 
% 0.21/0.51        (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))),
% 0.21/0.51      inference('sup-', [status(thm)], ['23', '24'])).
% 0.21/0.51  thf('61', plain,
% 0.21/0.51      (![X25 : $i]:
% 0.21/0.51         (~ (r1_tarski @ X25 @ sk_C)
% 0.21/0.51          | ~ (v3_pre_topc @ X25 @ sk_A)
% 0.21/0.51          | ~ (m1_connsp_2 @ X25 @ sk_A @ sk_B)
% 0.21/0.51          | ~ (m1_subset_1 @ X25 @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))
% 0.21/0.51          | (v1_xboole_0 @ X25))),
% 0.21/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.51  thf('62', plain,
% 0.21/0.51      (((v1_xboole_0 @ (k1_tops_1 @ sk_A @ sk_C))
% 0.21/0.51        | ~ (m1_connsp_2 @ (k1_tops_1 @ sk_A @ sk_C) @ sk_A @ sk_B)
% 0.21/0.51        | ~ (v3_pre_topc @ (k1_tops_1 @ sk_A @ sk_C) @ sk_A)
% 0.21/0.51        | ~ (r1_tarski @ (k1_tops_1 @ sk_A @ sk_C) @ sk_C))),
% 0.21/0.51      inference('sup-', [status(thm)], ['60', '61'])).
% 0.21/0.51  thf('63', plain, ((r1_tarski @ (k1_tops_1 @ sk_A @ sk_C) @ sk_C)),
% 0.21/0.51      inference('demod', [status(thm)], ['18', '19'])).
% 0.21/0.51  thf('64', plain,
% 0.21/0.51      (((v1_xboole_0 @ (k1_tops_1 @ sk_A @ sk_C))
% 0.21/0.51        | ~ (m1_connsp_2 @ (k1_tops_1 @ sk_A @ sk_C) @ sk_A @ sk_B)
% 0.21/0.51        | ~ (v3_pre_topc @ (k1_tops_1 @ sk_A @ sk_C) @ sk_A))),
% 0.21/0.51      inference('demod', [status(thm)], ['62', '63'])).
% 0.21/0.51  thf('65', plain, ((v3_pre_topc @ (k1_tops_1 @ sk_A @ sk_C) @ sk_A)),
% 0.21/0.51      inference('demod', [status(thm)], ['32', '33', '34'])).
% 0.21/0.51  thf('66', plain,
% 0.21/0.51      (((v1_xboole_0 @ (k1_tops_1 @ sk_A @ sk_C))
% 0.21/0.51        | ~ (m1_connsp_2 @ (k1_tops_1 @ sk_A @ sk_C) @ sk_A @ sk_B))),
% 0.21/0.51      inference('demod', [status(thm)], ['64', '65'])).
% 0.21/0.51  thf('67', plain, ((m1_connsp_2 @ (k1_tops_1 @ sk_A @ sk_C) @ sk_A @ sk_B)),
% 0.21/0.51      inference('clc', [status(thm)], ['39', '40'])).
% 0.21/0.51  thf('68', plain, ((v1_xboole_0 @ (k1_tops_1 @ sk_A @ sk_C))),
% 0.21/0.51      inference('demod', [status(thm)], ['66', '67'])).
% 0.21/0.51  thf('69', plain,
% 0.21/0.51      (![X0 : $i]:
% 0.21/0.51         ~ (r2_hidden @ X0 @ (k1_tops_1 @ sk_A @ (k1_tops_1 @ sk_A @ sk_C)))),
% 0.21/0.51      inference('demod', [status(thm)], ['59', '68'])).
% 0.21/0.51  thf('70', plain, ((v2_struct_0 @ sk_A)),
% 0.21/0.51      inference('clc', [status(thm)], ['50', '69'])).
% 0.21/0.51  thf('71', plain, ($false), inference('demod', [status(thm)], ['0', '70'])).
% 0.21/0.51  
% 0.21/0.51  % SZS output end Refutation
% 0.21/0.51  
% 0.21/0.52  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
