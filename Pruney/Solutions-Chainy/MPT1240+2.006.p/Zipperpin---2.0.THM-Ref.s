%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.QNSKvUnhpn

% Computer   : n021.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 14:03:06 EST 2020

% Result     : Theorem 0.47s
% Output     : Refutation 0.47s
% Verified   : 
% Statistics : Number of formulae       :  114 ( 183 expanded)
%              Number of leaves         :   31 (  60 expanded)
%              Depth                    :   14
%              Number of atoms          : 1197 (2904 expanded)
%              Number of equality atoms :   18 (  18 expanded)
%              Maximal formula depth    :   15 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k2_tarski_type,type,(
    k2_tarski: $i > $i > $i )).

thf(u1_struct_0_type,type,(
    u1_struct_0: $i > $i )).

thf(k3_subset_1_type,type,(
    k3_subset_1: $i > $i > $i )).

thf(k1_tops_1_type,type,(
    k1_tops_1: $i > $i > $i )).

thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(k2_pre_topc_type,type,(
    k2_pre_topc: $i > $i > $i )).

thf(k2_xboole_0_type,type,(
    k2_xboole_0: $i > $i > $i )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(v3_pre_topc_type,type,(
    v3_pre_topc: $i > $i > $o )).

thf(l1_pre_topc_type,type,(
    l1_pre_topc: $i > $o )).

thf(v4_pre_topc_type,type,(
    v4_pre_topc: $i > $i > $o )).

thf(sk_D_type,type,(
    sk_D: $i )).

thf(sk_C_type,type,(
    sk_C: $i )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(v2_pre_topc_type,type,(
    v2_pre_topc: $i > $o )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(t54_tops_1,conjecture,(
    ! [A: $i] :
      ( ( ( v2_pre_topc @ A )
        & ( l1_pre_topc @ A ) )
     => ! [B: $i,C: $i] :
          ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) )
         => ( ( r2_hidden @ B @ ( k1_tops_1 @ A @ C ) )
          <=> ? [D: $i] :
                ( ( r2_hidden @ B @ D )
                & ( r1_tarski @ D @ C )
                & ( v3_pre_topc @ D @ A )
                & ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i] :
        ( ( ( v2_pre_topc @ A )
          & ( l1_pre_topc @ A ) )
       => ! [B: $i,C: $i] :
            ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) )
           => ( ( r2_hidden @ B @ ( k1_tops_1 @ A @ C ) )
            <=> ? [D: $i] :
                  ( ( r2_hidden @ B @ D )
                  & ( r1_tarski @ D @ C )
                  & ( v3_pre_topc @ D @ A )
                  & ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t54_tops_1])).

thf('0',plain,
    ( ( r2_hidden @ sk_B @ sk_D )
    | ( r2_hidden @ sk_B @ ( k1_tops_1 @ sk_A @ sk_C ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('1',plain,
    ( ( r2_hidden @ sk_B @ sk_D )
    | ( r2_hidden @ sk_B @ ( k1_tops_1 @ sk_A @ sk_C ) ) ),
    inference(split,[status(esa)],['0'])).

thf('2',plain,
    ( ( r1_tarski @ sk_D @ sk_C )
    | ( r2_hidden @ sk_B @ ( k1_tops_1 @ sk_A @ sk_C ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('3',plain,
    ( ( r1_tarski @ sk_D @ sk_C )
    | ( r2_hidden @ sk_B @ ( k1_tops_1 @ sk_A @ sk_C ) ) ),
    inference(split,[status(esa)],['2'])).

thf('4',plain,
    ( ( m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) )
    | ( r2_hidden @ sk_B @ ( k1_tops_1 @ sk_A @ sk_C ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('5',plain,
    ( ( m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) )
    | ( r2_hidden @ sk_B @ ( k1_tops_1 @ sk_A @ sk_C ) ) ),
    inference(split,[status(esa)],['4'])).

thf('6',plain,(
    ! [X31: $i] :
      ( ~ ( m1_subset_1 @ X31 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) )
      | ~ ( v3_pre_topc @ X31 @ sk_A )
      | ~ ( r1_tarski @ X31 @ sk_C )
      | ~ ( r2_hidden @ sk_B @ X31 )
      | ~ ( r2_hidden @ sk_B @ ( k1_tops_1 @ sk_A @ sk_C ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('7',plain,
    ( ! [X31: $i] :
        ( ~ ( m1_subset_1 @ X31 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) )
        | ~ ( v3_pre_topc @ X31 @ sk_A )
        | ~ ( r1_tarski @ X31 @ sk_C )
        | ~ ( r2_hidden @ sk_B @ X31 ) )
    | ~ ( r2_hidden @ sk_B @ ( k1_tops_1 @ sk_A @ sk_C ) ) ),
    inference(split,[status(esa)],['6'])).

thf('8',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t44_tops_1,axiom,(
    ! [A: $i] :
      ( ( l1_pre_topc @ A )
     => ! [B: $i] :
          ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) )
         => ( r1_tarski @ ( k1_tops_1 @ A @ B ) @ B ) ) ) )).

thf('9',plain,(
    ! [X26: $i,X27: $i] :
      ( ~ ( m1_subset_1 @ X26 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X27 ) ) )
      | ( r1_tarski @ ( k1_tops_1 @ X27 @ X26 ) @ X26 )
      | ~ ( l1_pre_topc @ X27 ) ) ),
    inference(cnf,[status(esa)],[t44_tops_1])).

thf('10',plain,
    ( ~ ( l1_pre_topc @ sk_A )
    | ( r1_tarski @ ( k1_tops_1 @ sk_A @ sk_C ) @ sk_C ) ),
    inference('sup-',[status(thm)],['8','9'])).

thf('11',plain,(
    l1_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('12',plain,(
    r1_tarski @ ( k1_tops_1 @ sk_A @ sk_C ) @ sk_C ),
    inference(demod,[status(thm)],['10','11'])).

thf('13',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(fc9_tops_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( ( v2_pre_topc @ A )
        & ( l1_pre_topc @ A )
        & ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) )
     => ( v3_pre_topc @ ( k1_tops_1 @ A @ B ) @ A ) ) )).

thf('14',plain,(
    ! [X22: $i,X23: $i] :
      ( ~ ( l1_pre_topc @ X22 )
      | ~ ( v2_pre_topc @ X22 )
      | ~ ( m1_subset_1 @ X23 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X22 ) ) )
      | ( v3_pre_topc @ ( k1_tops_1 @ X22 @ X23 ) @ X22 ) ) ),
    inference(cnf,[status(esa)],[fc9_tops_1])).

thf('15',plain,
    ( ( v3_pre_topc @ ( k1_tops_1 @ sk_A @ sk_C ) @ sk_A )
    | ~ ( v2_pre_topc @ sk_A )
    | ~ ( l1_pre_topc @ sk_A ) ),
    inference('sup-',[status(thm)],['13','14'])).

thf('16',plain,(
    v2_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('17',plain,(
    l1_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('18',plain,(
    v3_pre_topc @ ( k1_tops_1 @ sk_A @ sk_C ) @ sk_A ),
    inference(demod,[status(thm)],['15','16','17'])).

thf('19',plain,
    ( ( r2_hidden @ sk_B @ ( k1_tops_1 @ sk_A @ sk_C ) )
   <= ( r2_hidden @ sk_B @ ( k1_tops_1 @ sk_A @ sk_C ) ) ),
    inference(split,[status(esa)],['0'])).

thf('20',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(dt_k1_tops_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( ( l1_pre_topc @ A )
        & ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) )
     => ( m1_subset_1 @ ( k1_tops_1 @ A @ B ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) ) )).

thf('21',plain,(
    ! [X20: $i,X21: $i] :
      ( ~ ( l1_pre_topc @ X20 )
      | ~ ( m1_subset_1 @ X21 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X20 ) ) )
      | ( m1_subset_1 @ ( k1_tops_1 @ X20 @ X21 ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X20 ) ) ) ) ),
    inference(cnf,[status(esa)],[dt_k1_tops_1])).

thf('22',plain,
    ( ( m1_subset_1 @ ( k1_tops_1 @ sk_A @ sk_C ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) )
    | ~ ( l1_pre_topc @ sk_A ) ),
    inference('sup-',[status(thm)],['20','21'])).

thf('23',plain,(
    l1_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('24',plain,(
    m1_subset_1 @ ( k1_tops_1 @ sk_A @ sk_C ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ),
    inference(demod,[status(thm)],['22','23'])).

thf('25',plain,
    ( ! [X31: $i] :
        ( ~ ( m1_subset_1 @ X31 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) )
        | ~ ( v3_pre_topc @ X31 @ sk_A )
        | ~ ( r1_tarski @ X31 @ sk_C )
        | ~ ( r2_hidden @ sk_B @ X31 ) )
   <= ! [X31: $i] :
        ( ~ ( m1_subset_1 @ X31 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) )
        | ~ ( v3_pre_topc @ X31 @ sk_A )
        | ~ ( r1_tarski @ X31 @ sk_C )
        | ~ ( r2_hidden @ sk_B @ X31 ) ) ),
    inference(split,[status(esa)],['6'])).

thf('26',plain,
    ( ( ~ ( r2_hidden @ sk_B @ ( k1_tops_1 @ sk_A @ sk_C ) )
      | ~ ( r1_tarski @ ( k1_tops_1 @ sk_A @ sk_C ) @ sk_C )
      | ~ ( v3_pre_topc @ ( k1_tops_1 @ sk_A @ sk_C ) @ sk_A ) )
   <= ! [X31: $i] :
        ( ~ ( m1_subset_1 @ X31 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) )
        | ~ ( v3_pre_topc @ X31 @ sk_A )
        | ~ ( r1_tarski @ X31 @ sk_C )
        | ~ ( r2_hidden @ sk_B @ X31 ) ) ),
    inference('sup-',[status(thm)],['24','25'])).

thf('27',plain,
    ( ( ~ ( v3_pre_topc @ ( k1_tops_1 @ sk_A @ sk_C ) @ sk_A )
      | ~ ( r1_tarski @ ( k1_tops_1 @ sk_A @ sk_C ) @ sk_C ) )
   <= ( ( r2_hidden @ sk_B @ ( k1_tops_1 @ sk_A @ sk_C ) )
      & ! [X31: $i] :
          ( ~ ( m1_subset_1 @ X31 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) )
          | ~ ( v3_pre_topc @ X31 @ sk_A )
          | ~ ( r1_tarski @ X31 @ sk_C )
          | ~ ( r2_hidden @ sk_B @ X31 ) ) ) ),
    inference('sup-',[status(thm)],['19','26'])).

thf('28',plain,
    ( ~ ( r1_tarski @ ( k1_tops_1 @ sk_A @ sk_C ) @ sk_C )
   <= ( ( r2_hidden @ sk_B @ ( k1_tops_1 @ sk_A @ sk_C ) )
      & ! [X31: $i] :
          ( ~ ( m1_subset_1 @ X31 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) )
          | ~ ( v3_pre_topc @ X31 @ sk_A )
          | ~ ( r1_tarski @ X31 @ sk_C )
          | ~ ( r2_hidden @ sk_B @ X31 ) ) ) ),
    inference('sup-',[status(thm)],['18','27'])).

thf('29',plain,
    ( ~ ! [X31: $i] :
          ( ~ ( m1_subset_1 @ X31 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) )
          | ~ ( v3_pre_topc @ X31 @ sk_A )
          | ~ ( r1_tarski @ X31 @ sk_C )
          | ~ ( r2_hidden @ sk_B @ X31 ) )
    | ~ ( r2_hidden @ sk_B @ ( k1_tops_1 @ sk_A @ sk_C ) ) ),
    inference('sup-',[status(thm)],['12','28'])).

thf('30',plain,
    ( ( v3_pre_topc @ sk_D @ sk_A )
    | ( r2_hidden @ sk_B @ ( k1_tops_1 @ sk_A @ sk_C ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('31',plain,
    ( ( v3_pre_topc @ sk_D @ sk_A )
    | ( r2_hidden @ sk_B @ ( k1_tops_1 @ sk_A @ sk_C ) ) ),
    inference(split,[status(esa)],['30'])).

thf('32',plain,
    ( ( v3_pre_topc @ sk_D @ sk_A )
   <= ( v3_pre_topc @ sk_D @ sk_A ) ),
    inference(split,[status(esa)],['30'])).

thf('33',plain,
    ( ( m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) )
   <= ( m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ) ),
    inference(split,[status(esa)],['4'])).

thf(t30_tops_1,axiom,(
    ! [A: $i] :
      ( ( l1_pre_topc @ A )
     => ! [B: $i] :
          ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) )
         => ( ( v3_pre_topc @ B @ A )
          <=> ( v4_pre_topc @ ( k3_subset_1 @ ( u1_struct_0 @ A ) @ B ) @ A ) ) ) ) )).

thf('34',plain,(
    ! [X24: $i,X25: $i] :
      ( ~ ( m1_subset_1 @ X24 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X25 ) ) )
      | ~ ( v3_pre_topc @ X24 @ X25 )
      | ( v4_pre_topc @ ( k3_subset_1 @ ( u1_struct_0 @ X25 ) @ X24 ) @ X25 )
      | ~ ( l1_pre_topc @ X25 ) ) ),
    inference(cnf,[status(esa)],[t30_tops_1])).

thf('35',plain,
    ( ( ~ ( l1_pre_topc @ sk_A )
      | ( v4_pre_topc @ ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ sk_D ) @ sk_A )
      | ~ ( v3_pre_topc @ sk_D @ sk_A ) )
   <= ( m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ) ),
    inference('sup-',[status(thm)],['33','34'])).

thf('36',plain,(
    l1_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('37',plain,
    ( ( ( v4_pre_topc @ ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ sk_D ) @ sk_A )
      | ~ ( v3_pre_topc @ sk_D @ sk_A ) )
   <= ( m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ) ),
    inference(demod,[status(thm)],['35','36'])).

thf('38',plain,
    ( ( v4_pre_topc @ ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ sk_D ) @ sk_A )
   <= ( ( v3_pre_topc @ sk_D @ sk_A )
      & ( m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ) ) ),
    inference('sup-',[status(thm)],['32','37'])).

thf('39',plain,
    ( ( m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) )
   <= ( m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ) ),
    inference(split,[status(esa)],['4'])).

thf(dt_k3_subset_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) )
     => ( m1_subset_1 @ ( k3_subset_1 @ A @ B ) @ ( k1_zfmisc_1 @ A ) ) ) )).

thf('40',plain,(
    ! [X12: $i,X13: $i] :
      ( ( m1_subset_1 @ ( k3_subset_1 @ X12 @ X13 ) @ ( k1_zfmisc_1 @ X12 ) )
      | ~ ( m1_subset_1 @ X13 @ ( k1_zfmisc_1 @ X12 ) ) ) ),
    inference(cnf,[status(esa)],[dt_k3_subset_1])).

thf('41',plain,
    ( ( m1_subset_1 @ ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ sk_D ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) )
   <= ( m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ) ),
    inference('sup-',[status(thm)],['39','40'])).

thf(t52_pre_topc,axiom,(
    ! [A: $i] :
      ( ( l1_pre_topc @ A )
     => ! [B: $i] :
          ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) )
         => ( ( ( v4_pre_topc @ B @ A )
             => ( ( k2_pre_topc @ A @ B )
                = B ) )
            & ( ( ( v2_pre_topc @ A )
                & ( ( k2_pre_topc @ A @ B )
                  = B ) )
             => ( v4_pre_topc @ B @ A ) ) ) ) ) )).

thf('42',plain,(
    ! [X16: $i,X17: $i] :
      ( ~ ( m1_subset_1 @ X16 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X17 ) ) )
      | ~ ( v4_pre_topc @ X16 @ X17 )
      | ( ( k2_pre_topc @ X17 @ X16 )
        = X16 )
      | ~ ( l1_pre_topc @ X17 ) ) ),
    inference(cnf,[status(esa)],[t52_pre_topc])).

thf('43',plain,
    ( ( ~ ( l1_pre_topc @ sk_A )
      | ( ( k2_pre_topc @ sk_A @ ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ sk_D ) )
        = ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ sk_D ) )
      | ~ ( v4_pre_topc @ ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ sk_D ) @ sk_A ) )
   <= ( m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ) ),
    inference('sup-',[status(thm)],['41','42'])).

thf('44',plain,(
    l1_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('45',plain,
    ( ( ( ( k2_pre_topc @ sk_A @ ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ sk_D ) )
        = ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ sk_D ) )
      | ~ ( v4_pre_topc @ ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ sk_D ) @ sk_A ) )
   <= ( m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ) ),
    inference(demod,[status(thm)],['43','44'])).

thf('46',plain,
    ( ( ( k2_pre_topc @ sk_A @ ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ sk_D ) )
      = ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ sk_D ) )
   <= ( ( v3_pre_topc @ sk_D @ sk_A )
      & ( m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ) ) ),
    inference('sup-',[status(thm)],['38','45'])).

thf('47',plain,
    ( ( m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) )
   <= ( m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ) ),
    inference(split,[status(esa)],['4'])).

thf(d1_tops_1,axiom,(
    ! [A: $i] :
      ( ( l1_pre_topc @ A )
     => ! [B: $i] :
          ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) )
         => ( ( k1_tops_1 @ A @ B )
            = ( k3_subset_1 @ ( u1_struct_0 @ A ) @ ( k2_pre_topc @ A @ ( k3_subset_1 @ ( u1_struct_0 @ A ) @ B ) ) ) ) ) ) )).

thf('48',plain,(
    ! [X18: $i,X19: $i] :
      ( ~ ( m1_subset_1 @ X18 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X19 ) ) )
      | ( ( k1_tops_1 @ X19 @ X18 )
        = ( k3_subset_1 @ ( u1_struct_0 @ X19 ) @ ( k2_pre_topc @ X19 @ ( k3_subset_1 @ ( u1_struct_0 @ X19 ) @ X18 ) ) ) )
      | ~ ( l1_pre_topc @ X19 ) ) ),
    inference(cnf,[status(esa)],[d1_tops_1])).

thf('49',plain,
    ( ( ~ ( l1_pre_topc @ sk_A )
      | ( ( k1_tops_1 @ sk_A @ sk_D )
        = ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ ( k2_pre_topc @ sk_A @ ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ sk_D ) ) ) ) )
   <= ( m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ) ),
    inference('sup-',[status(thm)],['47','48'])).

thf('50',plain,(
    l1_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('51',plain,
    ( ( ( k1_tops_1 @ sk_A @ sk_D )
      = ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ ( k2_pre_topc @ sk_A @ ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ sk_D ) ) ) )
   <= ( m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ) ),
    inference(demod,[status(thm)],['49','50'])).

thf('52',plain,
    ( ( ( k1_tops_1 @ sk_A @ sk_D )
      = ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ sk_D ) ) )
   <= ( ( v3_pre_topc @ sk_D @ sk_A )
      & ( m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ) ) ),
    inference('sup+',[status(thm)],['46','51'])).

thf('53',plain,
    ( ( m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) )
   <= ( m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ) ),
    inference(split,[status(esa)],['4'])).

thf(involutiveness_k3_subset_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) )
     => ( ( k3_subset_1 @ A @ ( k3_subset_1 @ A @ B ) )
        = B ) ) )).

thf('54',plain,(
    ! [X14: $i,X15: $i] :
      ( ( ( k3_subset_1 @ X15 @ ( k3_subset_1 @ X15 @ X14 ) )
        = X14 )
      | ~ ( m1_subset_1 @ X14 @ ( k1_zfmisc_1 @ X15 ) ) ) ),
    inference(cnf,[status(esa)],[involutiveness_k3_subset_1])).

thf('55',plain,
    ( ( ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ ( k3_subset_1 @ ( u1_struct_0 @ sk_A ) @ sk_D ) )
      = sk_D )
   <= ( m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ) ),
    inference('sup-',[status(thm)],['53','54'])).

thf('56',plain,
    ( ( ( k1_tops_1 @ sk_A @ sk_D )
      = sk_D )
   <= ( ( v3_pre_topc @ sk_D @ sk_A )
      & ( m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ) ) ),
    inference('sup+',[status(thm)],['52','55'])).

thf('57',plain,
    ( ( r1_tarski @ sk_D @ sk_C )
   <= ( r1_tarski @ sk_D @ sk_C ) ),
    inference(split,[status(esa)],['2'])).

thf('58',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('59',plain,
    ( ( m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) )
   <= ( m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ) ),
    inference(split,[status(esa)],['4'])).

thf(t48_tops_1,axiom,(
    ! [A: $i] :
      ( ( l1_pre_topc @ A )
     => ! [B: $i] :
          ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) )
         => ! [C: $i] :
              ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) )
             => ( ( r1_tarski @ B @ C )
               => ( r1_tarski @ ( k1_tops_1 @ A @ B ) @ ( k1_tops_1 @ A @ C ) ) ) ) ) ) )).

thf('60',plain,(
    ! [X28: $i,X29: $i,X30: $i] :
      ( ~ ( m1_subset_1 @ X28 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X29 ) ) )
      | ~ ( r1_tarski @ X28 @ X30 )
      | ( r1_tarski @ ( k1_tops_1 @ X29 @ X28 ) @ ( k1_tops_1 @ X29 @ X30 ) )
      | ~ ( m1_subset_1 @ X30 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X29 ) ) )
      | ~ ( l1_pre_topc @ X29 ) ) ),
    inference(cnf,[status(esa)],[t48_tops_1])).

thf('61',plain,
    ( ! [X0: $i] :
        ( ~ ( l1_pre_topc @ sk_A )
        | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) )
        | ( r1_tarski @ ( k1_tops_1 @ sk_A @ sk_D ) @ ( k1_tops_1 @ sk_A @ X0 ) )
        | ~ ( r1_tarski @ sk_D @ X0 ) )
   <= ( m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ) ),
    inference('sup-',[status(thm)],['59','60'])).

thf('62',plain,(
    l1_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('63',plain,
    ( ! [X0: $i] :
        ( ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) )
        | ( r1_tarski @ ( k1_tops_1 @ sk_A @ sk_D ) @ ( k1_tops_1 @ sk_A @ X0 ) )
        | ~ ( r1_tarski @ sk_D @ X0 ) )
   <= ( m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ) ),
    inference(demod,[status(thm)],['61','62'])).

thf('64',plain,
    ( ( ~ ( r1_tarski @ sk_D @ sk_C )
      | ( r1_tarski @ ( k1_tops_1 @ sk_A @ sk_D ) @ ( k1_tops_1 @ sk_A @ sk_C ) ) )
   <= ( m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ) ),
    inference('sup-',[status(thm)],['58','63'])).

thf('65',plain,
    ( ( r1_tarski @ ( k1_tops_1 @ sk_A @ sk_D ) @ ( k1_tops_1 @ sk_A @ sk_C ) )
   <= ( ( r1_tarski @ sk_D @ sk_C )
      & ( m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ) ) ),
    inference('sup-',[status(thm)],['57','64'])).

thf('66',plain,
    ( ( r1_tarski @ sk_D @ ( k1_tops_1 @ sk_A @ sk_C ) )
   <= ( ( r1_tarski @ sk_D @ sk_C )
      & ( v3_pre_topc @ sk_D @ sk_A )
      & ( m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ) ) ),
    inference('sup+',[status(thm)],['56','65'])).

thf('67',plain,
    ( ( r2_hidden @ sk_B @ sk_D )
   <= ( r2_hidden @ sk_B @ sk_D ) ),
    inference(split,[status(esa)],['0'])).

thf('68',plain,
    ( ( r2_hidden @ sk_B @ sk_D )
   <= ( r2_hidden @ sk_B @ sk_D ) ),
    inference(split,[status(esa)],['0'])).

thf(t38_zfmisc_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( r1_tarski @ ( k2_tarski @ A @ B ) @ C )
    <=> ( ( r2_hidden @ A @ C )
        & ( r2_hidden @ B @ C ) ) ) )).

thf('69',plain,(
    ! [X8: $i,X10: $i,X11: $i] :
      ( ( r1_tarski @ ( k2_tarski @ X8 @ X10 ) @ X11 )
      | ~ ( r2_hidden @ X10 @ X11 )
      | ~ ( r2_hidden @ X8 @ X11 ) ) ),
    inference(cnf,[status(esa)],[t38_zfmisc_1])).

thf('70',plain,
    ( ! [X0: $i] :
        ( ~ ( r2_hidden @ X0 @ sk_D )
        | ( r1_tarski @ ( k2_tarski @ X0 @ sk_B ) @ sk_D ) )
   <= ( r2_hidden @ sk_B @ sk_D ) ),
    inference('sup-',[status(thm)],['68','69'])).

thf('71',plain,
    ( ( r1_tarski @ ( k2_tarski @ sk_B @ sk_B ) @ sk_D )
   <= ( r2_hidden @ sk_B @ sk_D ) ),
    inference('sup-',[status(thm)],['67','70'])).

thf(t12_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_tarski @ A @ B )
     => ( ( k2_xboole_0 @ A @ B )
        = B ) ) )).

thf('72',plain,(
    ! [X6: $i,X7: $i] :
      ( ( ( k2_xboole_0 @ X7 @ X6 )
        = X6 )
      | ~ ( r1_tarski @ X7 @ X6 ) ) ),
    inference(cnf,[status(esa)],[t12_xboole_1])).

thf('73',plain,
    ( ( ( k2_xboole_0 @ ( k2_tarski @ sk_B @ sk_B ) @ sk_D )
      = sk_D )
   <= ( r2_hidden @ sk_B @ sk_D ) ),
    inference('sup-',[status(thm)],['71','72'])).

thf(t11_xboole_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( r1_tarski @ ( k2_xboole_0 @ A @ B ) @ C )
     => ( r1_tarski @ A @ C ) ) )).

thf('74',plain,(
    ! [X3: $i,X4: $i,X5: $i] :
      ( ( r1_tarski @ X3 @ X4 )
      | ~ ( r1_tarski @ ( k2_xboole_0 @ X3 @ X5 ) @ X4 ) ) ),
    inference(cnf,[status(esa)],[t11_xboole_1])).

thf('75',plain,
    ( ! [X0: $i] :
        ( ~ ( r1_tarski @ sk_D @ X0 )
        | ( r1_tarski @ ( k2_tarski @ sk_B @ sk_B ) @ X0 ) )
   <= ( r2_hidden @ sk_B @ sk_D ) ),
    inference('sup-',[status(thm)],['73','74'])).

thf('76',plain,
    ( ( r1_tarski @ ( k2_tarski @ sk_B @ sk_B ) @ ( k1_tops_1 @ sk_A @ sk_C ) )
   <= ( ( r2_hidden @ sk_B @ sk_D )
      & ( r1_tarski @ sk_D @ sk_C )
      & ( v3_pre_topc @ sk_D @ sk_A )
      & ( m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ) ) ),
    inference('sup-',[status(thm)],['66','75'])).

thf('77',plain,(
    ! [X8: $i,X9: $i,X10: $i] :
      ( ( r2_hidden @ X8 @ X9 )
      | ~ ( r1_tarski @ ( k2_tarski @ X8 @ X10 ) @ X9 ) ) ),
    inference(cnf,[status(esa)],[t38_zfmisc_1])).

thf('78',plain,
    ( ( r2_hidden @ sk_B @ ( k1_tops_1 @ sk_A @ sk_C ) )
   <= ( ( r2_hidden @ sk_B @ sk_D )
      & ( r1_tarski @ sk_D @ sk_C )
      & ( v3_pre_topc @ sk_D @ sk_A )
      & ( m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ) ) ),
    inference('sup-',[status(thm)],['76','77'])).

thf('79',plain,
    ( ~ ( r2_hidden @ sk_B @ ( k1_tops_1 @ sk_A @ sk_C ) )
   <= ~ ( r2_hidden @ sk_B @ ( k1_tops_1 @ sk_A @ sk_C ) ) ),
    inference(split,[status(esa)],['6'])).

thf('80',plain,
    ( ~ ( v3_pre_topc @ sk_D @ sk_A )
    | ~ ( m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) )
    | ~ ( r1_tarski @ sk_D @ sk_C )
    | ~ ( r2_hidden @ sk_B @ sk_D )
    | ( r2_hidden @ sk_B @ ( k1_tops_1 @ sk_A @ sk_C ) ) ),
    inference('sup-',[status(thm)],['78','79'])).

thf('81',plain,(
    $false ),
    inference('sat_resolution*',[status(thm)],['1','3','5','7','29','31','80'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.02/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.02/0.12  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.QNSKvUnhpn
% 0.12/0.31  % Computer   : n021.cluster.edu
% 0.12/0.31  % Model      : x86_64 x86_64
% 0.12/0.31  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.31  % Memory     : 8042.1875MB
% 0.12/0.31  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.31  % CPULimit   : 60
% 0.12/0.31  % DateTime   : Tue Dec  1 18:49:49 EST 2020
% 0.12/0.32  % CPUTime    : 
% 0.12/0.32  % Running portfolio for 600 s
% 0.12/0.32  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.12/0.32  % Number of cores: 8
% 0.12/0.32  % Python version: Python 3.6.8
% 0.12/0.32  % Running in FO mode
% 0.47/0.65  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.47/0.65  % Solved by: fo/fo7.sh
% 0.47/0.65  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.47/0.65  % done 918 iterations in 0.223s
% 0.47/0.65  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.47/0.65  % SZS output start Refutation
% 0.47/0.65  thf(k2_tarski_type, type, k2_tarski: $i > $i > $i).
% 0.47/0.65  thf(u1_struct_0_type, type, u1_struct_0: $i > $i).
% 0.47/0.65  thf(k3_subset_1_type, type, k3_subset_1: $i > $i > $i).
% 0.47/0.65  thf(k1_tops_1_type, type, k1_tops_1: $i > $i > $i).
% 0.47/0.65  thf(m1_subset_1_type, type, m1_subset_1: $i > $i > $o).
% 0.47/0.65  thf(k2_pre_topc_type, type, k2_pre_topc: $i > $i > $i).
% 0.47/0.65  thf(k2_xboole_0_type, type, k2_xboole_0: $i > $i > $i).
% 0.47/0.65  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.47/0.65  thf(v3_pre_topc_type, type, v3_pre_topc: $i > $i > $o).
% 0.47/0.65  thf(l1_pre_topc_type, type, l1_pre_topc: $i > $o).
% 0.47/0.65  thf(v4_pre_topc_type, type, v4_pre_topc: $i > $i > $o).
% 0.47/0.65  thf(sk_D_type, type, sk_D: $i).
% 0.47/0.65  thf(sk_C_type, type, sk_C: $i).
% 0.47/0.65  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.47/0.65  thf(v2_pre_topc_type, type, v2_pre_topc: $i > $o).
% 0.47/0.65  thf(sk_A_type, type, sk_A: $i).
% 0.47/0.65  thf(k1_zfmisc_1_type, type, k1_zfmisc_1: $i > $i).
% 0.47/0.65  thf(sk_B_type, type, sk_B: $i).
% 0.47/0.65  thf(t54_tops_1, conjecture,
% 0.47/0.65    (![A:$i]:
% 0.47/0.65     ( ( ( v2_pre_topc @ A ) & ( l1_pre_topc @ A ) ) =>
% 0.47/0.65       ( ![B:$i,C:$i]:
% 0.47/0.65         ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) =>
% 0.47/0.65           ( ( r2_hidden @ B @ ( k1_tops_1 @ A @ C ) ) <=>
% 0.47/0.65             ( ?[D:$i]:
% 0.47/0.65               ( ( r2_hidden @ B @ D ) & ( r1_tarski @ D @ C ) & 
% 0.47/0.65                 ( v3_pre_topc @ D @ A ) & 
% 0.47/0.65                 ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) ) ) ) ) ) ))).
% 0.47/0.65  thf(zf_stmt_0, negated_conjecture,
% 0.47/0.65    (~( ![A:$i]:
% 0.47/0.65        ( ( ( v2_pre_topc @ A ) & ( l1_pre_topc @ A ) ) =>
% 0.47/0.65          ( ![B:$i,C:$i]:
% 0.47/0.65            ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) =>
% 0.47/0.65              ( ( r2_hidden @ B @ ( k1_tops_1 @ A @ C ) ) <=>
% 0.47/0.65                ( ?[D:$i]:
% 0.47/0.65                  ( ( r2_hidden @ B @ D ) & ( r1_tarski @ D @ C ) & 
% 0.47/0.65                    ( v3_pre_topc @ D @ A ) & 
% 0.47/0.65                    ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) ) ) ) ) ) ) )),
% 0.47/0.65    inference('cnf.neg', [status(esa)], [t54_tops_1])).
% 0.47/0.65  thf('0', plain,
% 0.47/0.65      (((r2_hidden @ sk_B @ sk_D)
% 0.47/0.65        | (r2_hidden @ sk_B @ (k1_tops_1 @ sk_A @ sk_C)))),
% 0.47/0.65      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.47/0.65  thf('1', plain,
% 0.47/0.65      (((r2_hidden @ sk_B @ sk_D)) | 
% 0.47/0.65       ((r2_hidden @ sk_B @ (k1_tops_1 @ sk_A @ sk_C)))),
% 0.47/0.65      inference('split', [status(esa)], ['0'])).
% 0.47/0.65  thf('2', plain,
% 0.47/0.65      (((r1_tarski @ sk_D @ sk_C)
% 0.47/0.65        | (r2_hidden @ sk_B @ (k1_tops_1 @ sk_A @ sk_C)))),
% 0.47/0.65      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.47/0.65  thf('3', plain,
% 0.47/0.65      (((r1_tarski @ sk_D @ sk_C)) | 
% 0.47/0.65       ((r2_hidden @ sk_B @ (k1_tops_1 @ sk_A @ sk_C)))),
% 0.47/0.65      inference('split', [status(esa)], ['2'])).
% 0.47/0.65  thf('4', plain,
% 0.47/0.65      (((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))
% 0.47/0.65        | (r2_hidden @ sk_B @ (k1_tops_1 @ sk_A @ sk_C)))),
% 0.47/0.65      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.47/0.65  thf('5', plain,
% 0.47/0.65      (((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))) | 
% 0.47/0.65       ((r2_hidden @ sk_B @ (k1_tops_1 @ sk_A @ sk_C)))),
% 0.47/0.65      inference('split', [status(esa)], ['4'])).
% 0.47/0.65  thf('6', plain,
% 0.47/0.65      (![X31 : $i]:
% 0.47/0.65         (~ (m1_subset_1 @ X31 @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))
% 0.47/0.65          | ~ (v3_pre_topc @ X31 @ sk_A)
% 0.47/0.65          | ~ (r1_tarski @ X31 @ sk_C)
% 0.47/0.65          | ~ (r2_hidden @ sk_B @ X31)
% 0.47/0.65          | ~ (r2_hidden @ sk_B @ (k1_tops_1 @ sk_A @ sk_C)))),
% 0.47/0.65      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.47/0.65  thf('7', plain,
% 0.47/0.65      ((![X31 : $i]:
% 0.47/0.65          (~ (m1_subset_1 @ X31 @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))
% 0.47/0.65           | ~ (v3_pre_topc @ X31 @ sk_A)
% 0.47/0.65           | ~ (r1_tarski @ X31 @ sk_C)
% 0.47/0.65           | ~ (r2_hidden @ sk_B @ X31))) | 
% 0.47/0.65       ~ ((r2_hidden @ sk_B @ (k1_tops_1 @ sk_A @ sk_C)))),
% 0.47/0.65      inference('split', [status(esa)], ['6'])).
% 0.47/0.65  thf('8', plain,
% 0.47/0.65      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))),
% 0.47/0.65      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.47/0.65  thf(t44_tops_1, axiom,
% 0.47/0.65    (![A:$i]:
% 0.47/0.65     ( ( l1_pre_topc @ A ) =>
% 0.47/0.65       ( ![B:$i]:
% 0.47/0.65         ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) =>
% 0.47/0.65           ( r1_tarski @ ( k1_tops_1 @ A @ B ) @ B ) ) ) ))).
% 0.47/0.65  thf('9', plain,
% 0.47/0.65      (![X26 : $i, X27 : $i]:
% 0.47/0.65         (~ (m1_subset_1 @ X26 @ (k1_zfmisc_1 @ (u1_struct_0 @ X27)))
% 0.47/0.65          | (r1_tarski @ (k1_tops_1 @ X27 @ X26) @ X26)
% 0.47/0.65          | ~ (l1_pre_topc @ X27))),
% 0.47/0.65      inference('cnf', [status(esa)], [t44_tops_1])).
% 0.47/0.65  thf('10', plain,
% 0.47/0.65      ((~ (l1_pre_topc @ sk_A) | (r1_tarski @ (k1_tops_1 @ sk_A @ sk_C) @ sk_C))),
% 0.47/0.65      inference('sup-', [status(thm)], ['8', '9'])).
% 0.47/0.65  thf('11', plain, ((l1_pre_topc @ sk_A)),
% 0.47/0.65      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.47/0.65  thf('12', plain, ((r1_tarski @ (k1_tops_1 @ sk_A @ sk_C) @ sk_C)),
% 0.47/0.65      inference('demod', [status(thm)], ['10', '11'])).
% 0.47/0.65  thf('13', plain,
% 0.47/0.65      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))),
% 0.47/0.65      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.47/0.65  thf(fc9_tops_1, axiom,
% 0.47/0.65    (![A:$i,B:$i]:
% 0.47/0.65     ( ( ( v2_pre_topc @ A ) & ( l1_pre_topc @ A ) & 
% 0.47/0.65         ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) ) =>
% 0.47/0.65       ( v3_pre_topc @ ( k1_tops_1 @ A @ B ) @ A ) ))).
% 0.47/0.65  thf('14', plain,
% 0.47/0.65      (![X22 : $i, X23 : $i]:
% 0.47/0.65         (~ (l1_pre_topc @ X22)
% 0.47/0.65          | ~ (v2_pre_topc @ X22)
% 0.47/0.65          | ~ (m1_subset_1 @ X23 @ (k1_zfmisc_1 @ (u1_struct_0 @ X22)))
% 0.47/0.65          | (v3_pre_topc @ (k1_tops_1 @ X22 @ X23) @ X22))),
% 0.47/0.65      inference('cnf', [status(esa)], [fc9_tops_1])).
% 0.47/0.65  thf('15', plain,
% 0.47/0.65      (((v3_pre_topc @ (k1_tops_1 @ sk_A @ sk_C) @ sk_A)
% 0.47/0.65        | ~ (v2_pre_topc @ sk_A)
% 0.47/0.65        | ~ (l1_pre_topc @ sk_A))),
% 0.47/0.65      inference('sup-', [status(thm)], ['13', '14'])).
% 0.47/0.65  thf('16', plain, ((v2_pre_topc @ sk_A)),
% 0.47/0.65      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.47/0.65  thf('17', plain, ((l1_pre_topc @ sk_A)),
% 0.47/0.65      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.47/0.65  thf('18', plain, ((v3_pre_topc @ (k1_tops_1 @ sk_A @ sk_C) @ sk_A)),
% 0.47/0.65      inference('demod', [status(thm)], ['15', '16', '17'])).
% 0.47/0.65  thf('19', plain,
% 0.47/0.65      (((r2_hidden @ sk_B @ (k1_tops_1 @ sk_A @ sk_C)))
% 0.47/0.65         <= (((r2_hidden @ sk_B @ (k1_tops_1 @ sk_A @ sk_C))))),
% 0.47/0.65      inference('split', [status(esa)], ['0'])).
% 0.47/0.65  thf('20', plain,
% 0.47/0.65      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))),
% 0.47/0.65      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.47/0.65  thf(dt_k1_tops_1, axiom,
% 0.47/0.65    (![A:$i,B:$i]:
% 0.47/0.65     ( ( ( l1_pre_topc @ A ) & 
% 0.47/0.65         ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) ) =>
% 0.47/0.65       ( m1_subset_1 @
% 0.47/0.65         ( k1_tops_1 @ A @ B ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) ))).
% 0.47/0.65  thf('21', plain,
% 0.47/0.65      (![X20 : $i, X21 : $i]:
% 0.47/0.65         (~ (l1_pre_topc @ X20)
% 0.47/0.65          | ~ (m1_subset_1 @ X21 @ (k1_zfmisc_1 @ (u1_struct_0 @ X20)))
% 0.47/0.65          | (m1_subset_1 @ (k1_tops_1 @ X20 @ X21) @ 
% 0.47/0.65             (k1_zfmisc_1 @ (u1_struct_0 @ X20))))),
% 0.47/0.65      inference('cnf', [status(esa)], [dt_k1_tops_1])).
% 0.47/0.65  thf('22', plain,
% 0.47/0.65      (((m1_subset_1 @ (k1_tops_1 @ sk_A @ sk_C) @ 
% 0.47/0.65         (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))
% 0.47/0.65        | ~ (l1_pre_topc @ sk_A))),
% 0.47/0.65      inference('sup-', [status(thm)], ['20', '21'])).
% 0.47/0.65  thf('23', plain, ((l1_pre_topc @ sk_A)),
% 0.47/0.65      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.47/0.65  thf('24', plain,
% 0.47/0.65      ((m1_subset_1 @ (k1_tops_1 @ sk_A @ sk_C) @ 
% 0.47/0.65        (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))),
% 0.47/0.65      inference('demod', [status(thm)], ['22', '23'])).
% 0.47/0.65  thf('25', plain,
% 0.47/0.65      ((![X31 : $i]:
% 0.47/0.65          (~ (m1_subset_1 @ X31 @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))
% 0.47/0.65           | ~ (v3_pre_topc @ X31 @ sk_A)
% 0.47/0.65           | ~ (r1_tarski @ X31 @ sk_C)
% 0.47/0.65           | ~ (r2_hidden @ sk_B @ X31)))
% 0.47/0.65         <= ((![X31 : $i]:
% 0.47/0.65                (~ (m1_subset_1 @ X31 @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))
% 0.47/0.65                 | ~ (v3_pre_topc @ X31 @ sk_A)
% 0.47/0.65                 | ~ (r1_tarski @ X31 @ sk_C)
% 0.47/0.65                 | ~ (r2_hidden @ sk_B @ X31))))),
% 0.47/0.65      inference('split', [status(esa)], ['6'])).
% 0.47/0.65  thf('26', plain,
% 0.47/0.65      (((~ (r2_hidden @ sk_B @ (k1_tops_1 @ sk_A @ sk_C))
% 0.47/0.65         | ~ (r1_tarski @ (k1_tops_1 @ sk_A @ sk_C) @ sk_C)
% 0.47/0.65         | ~ (v3_pre_topc @ (k1_tops_1 @ sk_A @ sk_C) @ sk_A)))
% 0.47/0.65         <= ((![X31 : $i]:
% 0.47/0.65                (~ (m1_subset_1 @ X31 @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))
% 0.47/0.65                 | ~ (v3_pre_topc @ X31 @ sk_A)
% 0.47/0.65                 | ~ (r1_tarski @ X31 @ sk_C)
% 0.47/0.65                 | ~ (r2_hidden @ sk_B @ X31))))),
% 0.47/0.65      inference('sup-', [status(thm)], ['24', '25'])).
% 0.47/0.65  thf('27', plain,
% 0.47/0.65      (((~ (v3_pre_topc @ (k1_tops_1 @ sk_A @ sk_C) @ sk_A)
% 0.47/0.65         | ~ (r1_tarski @ (k1_tops_1 @ sk_A @ sk_C) @ sk_C)))
% 0.47/0.65         <= (((r2_hidden @ sk_B @ (k1_tops_1 @ sk_A @ sk_C))) & 
% 0.47/0.65             (![X31 : $i]:
% 0.47/0.65                (~ (m1_subset_1 @ X31 @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))
% 0.47/0.65                 | ~ (v3_pre_topc @ X31 @ sk_A)
% 0.47/0.65                 | ~ (r1_tarski @ X31 @ sk_C)
% 0.47/0.65                 | ~ (r2_hidden @ sk_B @ X31))))),
% 0.47/0.65      inference('sup-', [status(thm)], ['19', '26'])).
% 0.47/0.65  thf('28', plain,
% 0.47/0.65      ((~ (r1_tarski @ (k1_tops_1 @ sk_A @ sk_C) @ sk_C))
% 0.47/0.65         <= (((r2_hidden @ sk_B @ (k1_tops_1 @ sk_A @ sk_C))) & 
% 0.47/0.65             (![X31 : $i]:
% 0.47/0.65                (~ (m1_subset_1 @ X31 @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))
% 0.47/0.65                 | ~ (v3_pre_topc @ X31 @ sk_A)
% 0.47/0.65                 | ~ (r1_tarski @ X31 @ sk_C)
% 0.47/0.65                 | ~ (r2_hidden @ sk_B @ X31))))),
% 0.47/0.65      inference('sup-', [status(thm)], ['18', '27'])).
% 0.47/0.65  thf('29', plain,
% 0.47/0.65      (~
% 0.47/0.65       (![X31 : $i]:
% 0.47/0.65          (~ (m1_subset_1 @ X31 @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))
% 0.47/0.65           | ~ (v3_pre_topc @ X31 @ sk_A)
% 0.47/0.65           | ~ (r1_tarski @ X31 @ sk_C)
% 0.47/0.65           | ~ (r2_hidden @ sk_B @ X31))) | 
% 0.47/0.65       ~ ((r2_hidden @ sk_B @ (k1_tops_1 @ sk_A @ sk_C)))),
% 0.47/0.65      inference('sup-', [status(thm)], ['12', '28'])).
% 0.47/0.65  thf('30', plain,
% 0.47/0.65      (((v3_pre_topc @ sk_D @ sk_A)
% 0.47/0.65        | (r2_hidden @ sk_B @ (k1_tops_1 @ sk_A @ sk_C)))),
% 0.47/0.65      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.47/0.65  thf('31', plain,
% 0.47/0.65      (((v3_pre_topc @ sk_D @ sk_A)) | 
% 0.47/0.65       ((r2_hidden @ sk_B @ (k1_tops_1 @ sk_A @ sk_C)))),
% 0.47/0.65      inference('split', [status(esa)], ['30'])).
% 0.47/0.65  thf('32', plain,
% 0.47/0.65      (((v3_pre_topc @ sk_D @ sk_A)) <= (((v3_pre_topc @ sk_D @ sk_A)))),
% 0.47/0.65      inference('split', [status(esa)], ['30'])).
% 0.47/0.65  thf('33', plain,
% 0.47/0.65      (((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A))))
% 0.47/0.65         <= (((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))))),
% 0.47/0.65      inference('split', [status(esa)], ['4'])).
% 0.47/0.65  thf(t30_tops_1, axiom,
% 0.47/0.65    (![A:$i]:
% 0.47/0.65     ( ( l1_pre_topc @ A ) =>
% 0.47/0.65       ( ![B:$i]:
% 0.47/0.65         ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) =>
% 0.47/0.65           ( ( v3_pre_topc @ B @ A ) <=>
% 0.47/0.65             ( v4_pre_topc @ ( k3_subset_1 @ ( u1_struct_0 @ A ) @ B ) @ A ) ) ) ) ))).
% 0.47/0.65  thf('34', plain,
% 0.47/0.65      (![X24 : $i, X25 : $i]:
% 0.47/0.65         (~ (m1_subset_1 @ X24 @ (k1_zfmisc_1 @ (u1_struct_0 @ X25)))
% 0.47/0.65          | ~ (v3_pre_topc @ X24 @ X25)
% 0.47/0.65          | (v4_pre_topc @ (k3_subset_1 @ (u1_struct_0 @ X25) @ X24) @ X25)
% 0.47/0.65          | ~ (l1_pre_topc @ X25))),
% 0.47/0.65      inference('cnf', [status(esa)], [t30_tops_1])).
% 0.47/0.65  thf('35', plain,
% 0.47/0.65      (((~ (l1_pre_topc @ sk_A)
% 0.47/0.65         | (v4_pre_topc @ (k3_subset_1 @ (u1_struct_0 @ sk_A) @ sk_D) @ sk_A)
% 0.47/0.65         | ~ (v3_pre_topc @ sk_D @ sk_A)))
% 0.47/0.65         <= (((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))))),
% 0.47/0.65      inference('sup-', [status(thm)], ['33', '34'])).
% 0.47/0.65  thf('36', plain, ((l1_pre_topc @ sk_A)),
% 0.47/0.65      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.47/0.65  thf('37', plain,
% 0.47/0.65      ((((v4_pre_topc @ (k3_subset_1 @ (u1_struct_0 @ sk_A) @ sk_D) @ sk_A)
% 0.47/0.65         | ~ (v3_pre_topc @ sk_D @ sk_A)))
% 0.47/0.65         <= (((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))))),
% 0.47/0.65      inference('demod', [status(thm)], ['35', '36'])).
% 0.47/0.65  thf('38', plain,
% 0.47/0.65      (((v4_pre_topc @ (k3_subset_1 @ (u1_struct_0 @ sk_A) @ sk_D) @ sk_A))
% 0.47/0.65         <= (((v3_pre_topc @ sk_D @ sk_A)) & 
% 0.47/0.65             ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))))),
% 0.47/0.65      inference('sup-', [status(thm)], ['32', '37'])).
% 0.47/0.65  thf('39', plain,
% 0.47/0.65      (((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A))))
% 0.47/0.65         <= (((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))))),
% 0.47/0.65      inference('split', [status(esa)], ['4'])).
% 0.47/0.65  thf(dt_k3_subset_1, axiom,
% 0.47/0.65    (![A:$i,B:$i]:
% 0.47/0.65     ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) ) =>
% 0.47/0.65       ( m1_subset_1 @ ( k3_subset_1 @ A @ B ) @ ( k1_zfmisc_1 @ A ) ) ))).
% 0.47/0.65  thf('40', plain,
% 0.47/0.65      (![X12 : $i, X13 : $i]:
% 0.47/0.65         ((m1_subset_1 @ (k3_subset_1 @ X12 @ X13) @ (k1_zfmisc_1 @ X12))
% 0.47/0.65          | ~ (m1_subset_1 @ X13 @ (k1_zfmisc_1 @ X12)))),
% 0.47/0.65      inference('cnf', [status(esa)], [dt_k3_subset_1])).
% 0.47/0.65  thf('41', plain,
% 0.47/0.65      (((m1_subset_1 @ (k3_subset_1 @ (u1_struct_0 @ sk_A) @ sk_D) @ 
% 0.47/0.65         (k1_zfmisc_1 @ (u1_struct_0 @ sk_A))))
% 0.47/0.65         <= (((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))))),
% 0.47/0.65      inference('sup-', [status(thm)], ['39', '40'])).
% 0.47/0.65  thf(t52_pre_topc, axiom,
% 0.47/0.65    (![A:$i]:
% 0.47/0.65     ( ( l1_pre_topc @ A ) =>
% 0.47/0.65       ( ![B:$i]:
% 0.47/0.65         ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) =>
% 0.47/0.65           ( ( ( v4_pre_topc @ B @ A ) => ( ( k2_pre_topc @ A @ B ) = ( B ) ) ) & 
% 0.47/0.65             ( ( ( v2_pre_topc @ A ) & ( ( k2_pre_topc @ A @ B ) = ( B ) ) ) =>
% 0.47/0.65               ( v4_pre_topc @ B @ A ) ) ) ) ) ))).
% 0.47/0.65  thf('42', plain,
% 0.47/0.65      (![X16 : $i, X17 : $i]:
% 0.47/0.65         (~ (m1_subset_1 @ X16 @ (k1_zfmisc_1 @ (u1_struct_0 @ X17)))
% 0.47/0.65          | ~ (v4_pre_topc @ X16 @ X17)
% 0.47/0.65          | ((k2_pre_topc @ X17 @ X16) = (X16))
% 0.47/0.65          | ~ (l1_pre_topc @ X17))),
% 0.47/0.65      inference('cnf', [status(esa)], [t52_pre_topc])).
% 0.47/0.65  thf('43', plain,
% 0.47/0.65      (((~ (l1_pre_topc @ sk_A)
% 0.47/0.65         | ((k2_pre_topc @ sk_A @ (k3_subset_1 @ (u1_struct_0 @ sk_A) @ sk_D))
% 0.47/0.65             = (k3_subset_1 @ (u1_struct_0 @ sk_A) @ sk_D))
% 0.47/0.65         | ~ (v4_pre_topc @ (k3_subset_1 @ (u1_struct_0 @ sk_A) @ sk_D) @ sk_A)))
% 0.47/0.65         <= (((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))))),
% 0.47/0.65      inference('sup-', [status(thm)], ['41', '42'])).
% 0.47/0.65  thf('44', plain, ((l1_pre_topc @ sk_A)),
% 0.47/0.65      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.47/0.65  thf('45', plain,
% 0.47/0.65      (((((k2_pre_topc @ sk_A @ (k3_subset_1 @ (u1_struct_0 @ sk_A) @ sk_D))
% 0.47/0.65           = (k3_subset_1 @ (u1_struct_0 @ sk_A) @ sk_D))
% 0.47/0.65         | ~ (v4_pre_topc @ (k3_subset_1 @ (u1_struct_0 @ sk_A) @ sk_D) @ sk_A)))
% 0.47/0.65         <= (((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))))),
% 0.47/0.65      inference('demod', [status(thm)], ['43', '44'])).
% 0.47/0.65  thf('46', plain,
% 0.47/0.65      ((((k2_pre_topc @ sk_A @ (k3_subset_1 @ (u1_struct_0 @ sk_A) @ sk_D))
% 0.47/0.65          = (k3_subset_1 @ (u1_struct_0 @ sk_A) @ sk_D)))
% 0.47/0.65         <= (((v3_pre_topc @ sk_D @ sk_A)) & 
% 0.47/0.65             ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))))),
% 0.47/0.65      inference('sup-', [status(thm)], ['38', '45'])).
% 0.47/0.65  thf('47', plain,
% 0.47/0.65      (((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A))))
% 0.47/0.65         <= (((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))))),
% 0.47/0.65      inference('split', [status(esa)], ['4'])).
% 0.47/0.65  thf(d1_tops_1, axiom,
% 0.47/0.65    (![A:$i]:
% 0.47/0.65     ( ( l1_pre_topc @ A ) =>
% 0.47/0.65       ( ![B:$i]:
% 0.47/0.65         ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) =>
% 0.47/0.65           ( ( k1_tops_1 @ A @ B ) =
% 0.47/0.65             ( k3_subset_1 @
% 0.47/0.65               ( u1_struct_0 @ A ) @ 
% 0.47/0.65               ( k2_pre_topc @ A @ ( k3_subset_1 @ ( u1_struct_0 @ A ) @ B ) ) ) ) ) ) ))).
% 0.47/0.65  thf('48', plain,
% 0.47/0.65      (![X18 : $i, X19 : $i]:
% 0.47/0.65         (~ (m1_subset_1 @ X18 @ (k1_zfmisc_1 @ (u1_struct_0 @ X19)))
% 0.47/0.65          | ((k1_tops_1 @ X19 @ X18)
% 0.47/0.65              = (k3_subset_1 @ (u1_struct_0 @ X19) @ 
% 0.47/0.65                 (k2_pre_topc @ X19 @ (k3_subset_1 @ (u1_struct_0 @ X19) @ X18))))
% 0.47/0.65          | ~ (l1_pre_topc @ X19))),
% 0.47/0.65      inference('cnf', [status(esa)], [d1_tops_1])).
% 0.47/0.65  thf('49', plain,
% 0.47/0.65      (((~ (l1_pre_topc @ sk_A)
% 0.47/0.65         | ((k1_tops_1 @ sk_A @ sk_D)
% 0.47/0.65             = (k3_subset_1 @ (u1_struct_0 @ sk_A) @ 
% 0.47/0.65                (k2_pre_topc @ sk_A @ 
% 0.47/0.65                 (k3_subset_1 @ (u1_struct_0 @ sk_A) @ sk_D))))))
% 0.47/0.65         <= (((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))))),
% 0.47/0.65      inference('sup-', [status(thm)], ['47', '48'])).
% 0.47/0.65  thf('50', plain, ((l1_pre_topc @ sk_A)),
% 0.47/0.65      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.47/0.65  thf('51', plain,
% 0.47/0.65      ((((k1_tops_1 @ sk_A @ sk_D)
% 0.47/0.65          = (k3_subset_1 @ (u1_struct_0 @ sk_A) @ 
% 0.47/0.65             (k2_pre_topc @ sk_A @ (k3_subset_1 @ (u1_struct_0 @ sk_A) @ sk_D)))))
% 0.47/0.65         <= (((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))))),
% 0.47/0.65      inference('demod', [status(thm)], ['49', '50'])).
% 0.47/0.65  thf('52', plain,
% 0.47/0.65      ((((k1_tops_1 @ sk_A @ sk_D)
% 0.47/0.65          = (k3_subset_1 @ (u1_struct_0 @ sk_A) @ 
% 0.47/0.65             (k3_subset_1 @ (u1_struct_0 @ sk_A) @ sk_D))))
% 0.47/0.65         <= (((v3_pre_topc @ sk_D @ sk_A)) & 
% 0.47/0.65             ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))))),
% 0.47/0.65      inference('sup+', [status(thm)], ['46', '51'])).
% 0.47/0.65  thf('53', plain,
% 0.47/0.65      (((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A))))
% 0.47/0.65         <= (((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))))),
% 0.47/0.65      inference('split', [status(esa)], ['4'])).
% 0.47/0.65  thf(involutiveness_k3_subset_1, axiom,
% 0.47/0.65    (![A:$i,B:$i]:
% 0.47/0.65     ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) ) =>
% 0.47/0.65       ( ( k3_subset_1 @ A @ ( k3_subset_1 @ A @ B ) ) = ( B ) ) ))).
% 0.47/0.65  thf('54', plain,
% 0.47/0.65      (![X14 : $i, X15 : $i]:
% 0.47/0.65         (((k3_subset_1 @ X15 @ (k3_subset_1 @ X15 @ X14)) = (X14))
% 0.47/0.65          | ~ (m1_subset_1 @ X14 @ (k1_zfmisc_1 @ X15)))),
% 0.47/0.65      inference('cnf', [status(esa)], [involutiveness_k3_subset_1])).
% 0.47/0.65  thf('55', plain,
% 0.47/0.65      ((((k3_subset_1 @ (u1_struct_0 @ sk_A) @ 
% 0.47/0.65          (k3_subset_1 @ (u1_struct_0 @ sk_A) @ sk_D)) = (sk_D)))
% 0.47/0.65         <= (((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))))),
% 0.47/0.65      inference('sup-', [status(thm)], ['53', '54'])).
% 0.47/0.65  thf('56', plain,
% 0.47/0.65      ((((k1_tops_1 @ sk_A @ sk_D) = (sk_D)))
% 0.47/0.65         <= (((v3_pre_topc @ sk_D @ sk_A)) & 
% 0.47/0.65             ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))))),
% 0.47/0.65      inference('sup+', [status(thm)], ['52', '55'])).
% 0.47/0.65  thf('57', plain,
% 0.47/0.65      (((r1_tarski @ sk_D @ sk_C)) <= (((r1_tarski @ sk_D @ sk_C)))),
% 0.47/0.65      inference('split', [status(esa)], ['2'])).
% 0.47/0.65  thf('58', plain,
% 0.47/0.65      ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))),
% 0.47/0.65      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.47/0.65  thf('59', plain,
% 0.47/0.65      (((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A))))
% 0.47/0.65         <= (((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))))),
% 0.47/0.65      inference('split', [status(esa)], ['4'])).
% 0.47/0.65  thf(t48_tops_1, axiom,
% 0.47/0.65    (![A:$i]:
% 0.47/0.65     ( ( l1_pre_topc @ A ) =>
% 0.47/0.65       ( ![B:$i]:
% 0.47/0.65         ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) =>
% 0.47/0.65           ( ![C:$i]:
% 0.47/0.65             ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) =>
% 0.47/0.65               ( ( r1_tarski @ B @ C ) =>
% 0.47/0.65                 ( r1_tarski @ ( k1_tops_1 @ A @ B ) @ ( k1_tops_1 @ A @ C ) ) ) ) ) ) ) ))).
% 0.47/0.65  thf('60', plain,
% 0.47/0.65      (![X28 : $i, X29 : $i, X30 : $i]:
% 0.47/0.65         (~ (m1_subset_1 @ X28 @ (k1_zfmisc_1 @ (u1_struct_0 @ X29)))
% 0.47/0.65          | ~ (r1_tarski @ X28 @ X30)
% 0.47/0.65          | (r1_tarski @ (k1_tops_1 @ X29 @ X28) @ (k1_tops_1 @ X29 @ X30))
% 0.47/0.65          | ~ (m1_subset_1 @ X30 @ (k1_zfmisc_1 @ (u1_struct_0 @ X29)))
% 0.47/0.65          | ~ (l1_pre_topc @ X29))),
% 0.47/0.65      inference('cnf', [status(esa)], [t48_tops_1])).
% 0.47/0.65  thf('61', plain,
% 0.47/0.65      ((![X0 : $i]:
% 0.47/0.65          (~ (l1_pre_topc @ sk_A)
% 0.47/0.65           | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))
% 0.47/0.65           | (r1_tarski @ (k1_tops_1 @ sk_A @ sk_D) @ (k1_tops_1 @ sk_A @ X0))
% 0.47/0.65           | ~ (r1_tarski @ sk_D @ X0)))
% 0.47/0.65         <= (((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))))),
% 0.47/0.65      inference('sup-', [status(thm)], ['59', '60'])).
% 0.47/0.65  thf('62', plain, ((l1_pre_topc @ sk_A)),
% 0.47/0.65      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.47/0.65  thf('63', plain,
% 0.47/0.65      ((![X0 : $i]:
% 0.47/0.65          (~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))
% 0.47/0.65           | (r1_tarski @ (k1_tops_1 @ sk_A @ sk_D) @ (k1_tops_1 @ sk_A @ X0))
% 0.47/0.65           | ~ (r1_tarski @ sk_D @ X0)))
% 0.47/0.65         <= (((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))))),
% 0.47/0.65      inference('demod', [status(thm)], ['61', '62'])).
% 0.47/0.65  thf('64', plain,
% 0.47/0.65      (((~ (r1_tarski @ sk_D @ sk_C)
% 0.47/0.65         | (r1_tarski @ (k1_tops_1 @ sk_A @ sk_D) @ (k1_tops_1 @ sk_A @ sk_C))))
% 0.47/0.65         <= (((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))))),
% 0.47/0.65      inference('sup-', [status(thm)], ['58', '63'])).
% 0.47/0.65  thf('65', plain,
% 0.47/0.65      (((r1_tarski @ (k1_tops_1 @ sk_A @ sk_D) @ (k1_tops_1 @ sk_A @ sk_C)))
% 0.47/0.65         <= (((r1_tarski @ sk_D @ sk_C)) & 
% 0.47/0.65             ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))))),
% 0.47/0.65      inference('sup-', [status(thm)], ['57', '64'])).
% 0.47/0.65  thf('66', plain,
% 0.47/0.65      (((r1_tarski @ sk_D @ (k1_tops_1 @ sk_A @ sk_C)))
% 0.47/0.65         <= (((r1_tarski @ sk_D @ sk_C)) & 
% 0.47/0.65             ((v3_pre_topc @ sk_D @ sk_A)) & 
% 0.47/0.65             ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))))),
% 0.47/0.65      inference('sup+', [status(thm)], ['56', '65'])).
% 0.47/0.65  thf('67', plain,
% 0.47/0.65      (((r2_hidden @ sk_B @ sk_D)) <= (((r2_hidden @ sk_B @ sk_D)))),
% 0.47/0.65      inference('split', [status(esa)], ['0'])).
% 0.47/0.65  thf('68', plain,
% 0.47/0.65      (((r2_hidden @ sk_B @ sk_D)) <= (((r2_hidden @ sk_B @ sk_D)))),
% 0.47/0.65      inference('split', [status(esa)], ['0'])).
% 0.47/0.65  thf(t38_zfmisc_1, axiom,
% 0.47/0.65    (![A:$i,B:$i,C:$i]:
% 0.47/0.65     ( ( r1_tarski @ ( k2_tarski @ A @ B ) @ C ) <=>
% 0.47/0.65       ( ( r2_hidden @ A @ C ) & ( r2_hidden @ B @ C ) ) ))).
% 0.47/0.65  thf('69', plain,
% 0.47/0.65      (![X8 : $i, X10 : $i, X11 : $i]:
% 0.47/0.65         ((r1_tarski @ (k2_tarski @ X8 @ X10) @ X11)
% 0.47/0.65          | ~ (r2_hidden @ X10 @ X11)
% 0.47/0.65          | ~ (r2_hidden @ X8 @ X11))),
% 0.47/0.65      inference('cnf', [status(esa)], [t38_zfmisc_1])).
% 0.47/0.65  thf('70', plain,
% 0.47/0.65      ((![X0 : $i]:
% 0.47/0.65          (~ (r2_hidden @ X0 @ sk_D)
% 0.47/0.65           | (r1_tarski @ (k2_tarski @ X0 @ sk_B) @ sk_D)))
% 0.47/0.65         <= (((r2_hidden @ sk_B @ sk_D)))),
% 0.47/0.65      inference('sup-', [status(thm)], ['68', '69'])).
% 0.47/0.65  thf('71', plain,
% 0.47/0.65      (((r1_tarski @ (k2_tarski @ sk_B @ sk_B) @ sk_D))
% 0.47/0.65         <= (((r2_hidden @ sk_B @ sk_D)))),
% 0.47/0.65      inference('sup-', [status(thm)], ['67', '70'])).
% 0.47/0.65  thf(t12_xboole_1, axiom,
% 0.47/0.65    (![A:$i,B:$i]:
% 0.47/0.65     ( ( r1_tarski @ A @ B ) => ( ( k2_xboole_0 @ A @ B ) = ( B ) ) ))).
% 0.47/0.65  thf('72', plain,
% 0.47/0.65      (![X6 : $i, X7 : $i]:
% 0.47/0.65         (((k2_xboole_0 @ X7 @ X6) = (X6)) | ~ (r1_tarski @ X7 @ X6))),
% 0.47/0.65      inference('cnf', [status(esa)], [t12_xboole_1])).
% 0.47/0.65  thf('73', plain,
% 0.47/0.65      ((((k2_xboole_0 @ (k2_tarski @ sk_B @ sk_B) @ sk_D) = (sk_D)))
% 0.47/0.65         <= (((r2_hidden @ sk_B @ sk_D)))),
% 0.47/0.65      inference('sup-', [status(thm)], ['71', '72'])).
% 0.47/0.65  thf(t11_xboole_1, axiom,
% 0.47/0.65    (![A:$i,B:$i,C:$i]:
% 0.47/0.65     ( ( r1_tarski @ ( k2_xboole_0 @ A @ B ) @ C ) => ( r1_tarski @ A @ C ) ))).
% 0.47/0.65  thf('74', plain,
% 0.47/0.65      (![X3 : $i, X4 : $i, X5 : $i]:
% 0.47/0.65         ((r1_tarski @ X3 @ X4) | ~ (r1_tarski @ (k2_xboole_0 @ X3 @ X5) @ X4))),
% 0.47/0.65      inference('cnf', [status(esa)], [t11_xboole_1])).
% 0.47/0.65  thf('75', plain,
% 0.47/0.65      ((![X0 : $i]:
% 0.47/0.65          (~ (r1_tarski @ sk_D @ X0)
% 0.47/0.65           | (r1_tarski @ (k2_tarski @ sk_B @ sk_B) @ X0)))
% 0.47/0.65         <= (((r2_hidden @ sk_B @ sk_D)))),
% 0.47/0.65      inference('sup-', [status(thm)], ['73', '74'])).
% 0.47/0.65  thf('76', plain,
% 0.47/0.65      (((r1_tarski @ (k2_tarski @ sk_B @ sk_B) @ (k1_tops_1 @ sk_A @ sk_C)))
% 0.47/0.65         <= (((r2_hidden @ sk_B @ sk_D)) & 
% 0.47/0.65             ((r1_tarski @ sk_D @ sk_C)) & 
% 0.47/0.65             ((v3_pre_topc @ sk_D @ sk_A)) & 
% 0.47/0.65             ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))))),
% 0.47/0.65      inference('sup-', [status(thm)], ['66', '75'])).
% 0.47/0.65  thf('77', plain,
% 0.47/0.65      (![X8 : $i, X9 : $i, X10 : $i]:
% 0.47/0.65         ((r2_hidden @ X8 @ X9) | ~ (r1_tarski @ (k2_tarski @ X8 @ X10) @ X9))),
% 0.47/0.65      inference('cnf', [status(esa)], [t38_zfmisc_1])).
% 0.47/0.65  thf('78', plain,
% 0.47/0.65      (((r2_hidden @ sk_B @ (k1_tops_1 @ sk_A @ sk_C)))
% 0.47/0.65         <= (((r2_hidden @ sk_B @ sk_D)) & 
% 0.47/0.65             ((r1_tarski @ sk_D @ sk_C)) & 
% 0.47/0.65             ((v3_pre_topc @ sk_D @ sk_A)) & 
% 0.47/0.65             ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))))),
% 0.47/0.65      inference('sup-', [status(thm)], ['76', '77'])).
% 0.47/0.65  thf('79', plain,
% 0.47/0.65      ((~ (r2_hidden @ sk_B @ (k1_tops_1 @ sk_A @ sk_C)))
% 0.47/0.65         <= (~ ((r2_hidden @ sk_B @ (k1_tops_1 @ sk_A @ sk_C))))),
% 0.47/0.65      inference('split', [status(esa)], ['6'])).
% 0.47/0.65  thf('80', plain,
% 0.47/0.65      (~ ((v3_pre_topc @ sk_D @ sk_A)) | 
% 0.47/0.65       ~ ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))) | 
% 0.47/0.65       ~ ((r1_tarski @ sk_D @ sk_C)) | ~ ((r2_hidden @ sk_B @ sk_D)) | 
% 0.47/0.65       ((r2_hidden @ sk_B @ (k1_tops_1 @ sk_A @ sk_C)))),
% 0.47/0.65      inference('sup-', [status(thm)], ['78', '79'])).
% 0.47/0.65  thf('81', plain, ($false),
% 0.47/0.65      inference('sat_resolution*', [status(thm)],
% 0.47/0.65                ['1', '3', '5', '7', '29', '31', '80'])).
% 0.47/0.65  
% 0.47/0.65  % SZS output end Refutation
% 0.47/0.65  
% 0.47/0.66  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
