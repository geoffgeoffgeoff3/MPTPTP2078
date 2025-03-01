%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.Y52KyGkLkS

% Computer   : n012.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 14:13:21 EST 2020

% Result     : Theorem 12.46s
% Output     : Refutation 12.46s
% Verified   : 
% Statistics : Number of formulae       :  138 ( 374 expanded)
%              Number of leaves         :   31 ( 115 expanded)
%              Depth                    :   23
%              Number of atoms          : 1056 (4746 expanded)
%              Number of equality atoms :   25 (  34 expanded)
%              Maximal formula depth    :   18 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k4_xboole_0_type,type,(
    k4_xboole_0: $i > $i > $i )).

thf(v3_tex_2_type,type,(
    v3_tex_2: $i > $i > $o )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(sk_B_type,type,(
    sk_B: $i > $i )).

thf(v1_xboole_0_type,type,(
    v1_xboole_0: $i > $o )).

thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(v2_struct_0_type,type,(
    v2_struct_0: $i > $o )).

thf(sk_B_1_type,type,(
    sk_B_1: $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(k4_mcart_1_type,type,(
    k4_mcart_1: $i > $i > $i > $i > $i )).

thf(v2_pre_topc_type,type,(
    v2_pre_topc: $i > $o )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(sk_C_type,type,(
    sk_C: $i > $i > $i )).

thf(u1_struct_0_type,type,(
    u1_struct_0: $i > $i )).

thf(v2_tex_2_type,type,(
    v2_tex_2: $i > $i > $o )).

thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(l1_pre_topc_type,type,(
    l1_pre_topc: $i > $o )).

thf(v1_zfmisc_1_type,type,(
    v1_zfmisc_1: $i > $o )).

thf(v2_tdlat_3_type,type,(
    v2_tdlat_3: $i > $o )).

thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(t50_tex_2,conjecture,(
    ! [A: $i] :
      ( ( ~ ( v2_struct_0 @ A )
        & ( v2_pre_topc @ A )
        & ( v2_tdlat_3 @ A )
        & ( l1_pre_topc @ A ) )
     => ! [B: $i] :
          ( ( ~ ( v1_xboole_0 @ B )
            & ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) )
         => ( ( v3_tex_2 @ B @ A )
          <=> ( v1_zfmisc_1 @ B ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i] :
        ( ( ~ ( v2_struct_0 @ A )
          & ( v2_pre_topc @ A )
          & ( v2_tdlat_3 @ A )
          & ( l1_pre_topc @ A ) )
       => ! [B: $i] :
            ( ( ~ ( v1_xboole_0 @ B )
              & ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) )
           => ( ( v3_tex_2 @ B @ A )
            <=> ( v1_zfmisc_1 @ B ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t50_tex_2])).

thf('0',plain,
    ( ~ ( v1_zfmisc_1 @ sk_B_1 )
    | ~ ( v3_tex_2 @ sk_B_1 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('1',plain,
    ( ~ ( v1_zfmisc_1 @ sk_B_1 )
    | ~ ( v3_tex_2 @ sk_B_1 @ sk_A ) ),
    inference(split,[status(esa)],['0'])).

thf('2',plain,
    ( ( v1_zfmisc_1 @ sk_B_1 )
    | ( v3_tex_2 @ sk_B_1 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('3',plain,
    ( ( v3_tex_2 @ sk_B_1 @ sk_A )
   <= ( v3_tex_2 @ sk_B_1 @ sk_A ) ),
    inference(split,[status(esa)],['2'])).

thf('4',plain,(
    m1_subset_1 @ sk_B_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(d7_tex_2,axiom,(
    ! [A: $i] :
      ( ( l1_pre_topc @ A )
     => ! [B: $i] :
          ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) )
         => ( ( v3_tex_2 @ B @ A )
          <=> ( ( v2_tex_2 @ B @ A )
              & ! [C: $i] :
                  ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) )
                 => ( ( ( v2_tex_2 @ C @ A )
                      & ( r1_tarski @ B @ C ) )
                   => ( B = C ) ) ) ) ) ) ) )).

thf('5',plain,(
    ! [X21: $i,X22: $i] :
      ( ~ ( m1_subset_1 @ X21 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X22 ) ) )
      | ~ ( v3_tex_2 @ X21 @ X22 )
      | ( v2_tex_2 @ X21 @ X22 )
      | ~ ( l1_pre_topc @ X22 ) ) ),
    inference(cnf,[status(esa)],[d7_tex_2])).

thf('6',plain,
    ( ~ ( l1_pre_topc @ sk_A )
    | ( v2_tex_2 @ sk_B_1 @ sk_A )
    | ~ ( v3_tex_2 @ sk_B_1 @ sk_A ) ),
    inference('sup-',[status(thm)],['4','5'])).

thf('7',plain,(
    l1_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('8',plain,
    ( ( v2_tex_2 @ sk_B_1 @ sk_A )
    | ~ ( v3_tex_2 @ sk_B_1 @ sk_A ) ),
    inference(demod,[status(thm)],['6','7'])).

thf('9',plain,
    ( ( v2_tex_2 @ sk_B_1 @ sk_A )
   <= ( v3_tex_2 @ sk_B_1 @ sk_A ) ),
    inference('sup-',[status(thm)],['3','8'])).

thf('10',plain,(
    m1_subset_1 @ sk_B_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t44_tex_2,axiom,(
    ! [A: $i] :
      ( ( ~ ( v2_struct_0 @ A )
        & ( v2_pre_topc @ A )
        & ( v2_tdlat_3 @ A )
        & ( l1_pre_topc @ A ) )
     => ! [B: $i] :
          ( ( ~ ( v1_xboole_0 @ B )
            & ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) )
         => ( ( v2_tex_2 @ B @ A )
          <=> ( v1_zfmisc_1 @ B ) ) ) ) )).

thf('11',plain,(
    ! [X26: $i,X27: $i] :
      ( ( v1_xboole_0 @ X26 )
      | ~ ( m1_subset_1 @ X26 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X27 ) ) )
      | ~ ( v2_tex_2 @ X26 @ X27 )
      | ( v1_zfmisc_1 @ X26 )
      | ~ ( l1_pre_topc @ X27 )
      | ~ ( v2_tdlat_3 @ X27 )
      | ~ ( v2_pre_topc @ X27 )
      | ( v2_struct_0 @ X27 ) ) ),
    inference(cnf,[status(esa)],[t44_tex_2])).

thf('12',plain,
    ( ( v2_struct_0 @ sk_A )
    | ~ ( v2_pre_topc @ sk_A )
    | ~ ( v2_tdlat_3 @ sk_A )
    | ~ ( l1_pre_topc @ sk_A )
    | ( v1_zfmisc_1 @ sk_B_1 )
    | ~ ( v2_tex_2 @ sk_B_1 @ sk_A )
    | ( v1_xboole_0 @ sk_B_1 ) ),
    inference('sup-',[status(thm)],['10','11'])).

thf('13',plain,(
    v2_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('14',plain,(
    v2_tdlat_3 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('15',plain,(
    l1_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('16',plain,
    ( ( v2_struct_0 @ sk_A )
    | ( v1_zfmisc_1 @ sk_B_1 )
    | ~ ( v2_tex_2 @ sk_B_1 @ sk_A )
    | ( v1_xboole_0 @ sk_B_1 ) ),
    inference(demod,[status(thm)],['12','13','14','15'])).

thf('17',plain,
    ( ( ( v1_xboole_0 @ sk_B_1 )
      | ( v1_zfmisc_1 @ sk_B_1 )
      | ( v2_struct_0 @ sk_A ) )
   <= ( v3_tex_2 @ sk_B_1 @ sk_A ) ),
    inference('sup-',[status(thm)],['9','16'])).

thf('18',plain,(
    ~ ( v1_xboole_0 @ sk_B_1 ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('19',plain,
    ( ( ( v2_struct_0 @ sk_A )
      | ( v1_zfmisc_1 @ sk_B_1 ) )
   <= ( v3_tex_2 @ sk_B_1 @ sk_A ) ),
    inference(clc,[status(thm)],['17','18'])).

thf('20',plain,(
    ~ ( v2_struct_0 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('21',plain,
    ( ( v1_zfmisc_1 @ sk_B_1 )
   <= ( v3_tex_2 @ sk_B_1 @ sk_A ) ),
    inference(clc,[status(thm)],['19','20'])).

thf('22',plain,
    ( ~ ( v1_zfmisc_1 @ sk_B_1 )
   <= ~ ( v1_zfmisc_1 @ sk_B_1 ) ),
    inference(split,[status(esa)],['0'])).

thf('23',plain,
    ( ( v1_zfmisc_1 @ sk_B_1 )
    | ~ ( v3_tex_2 @ sk_B_1 @ sk_A ) ),
    inference('sup-',[status(thm)],['21','22'])).

thf('24',plain,
    ( ( v1_zfmisc_1 @ sk_B_1 )
    | ( v3_tex_2 @ sk_B_1 @ sk_A ) ),
    inference(split,[status(esa)],['2'])).

thf('25',plain,
    ( ( v1_zfmisc_1 @ sk_B_1 )
   <= ( v1_zfmisc_1 @ sk_B_1 ) ),
    inference(split,[status(esa)],['2'])).

thf('26',plain,(
    m1_subset_1 @ sk_B_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('27',plain,(
    ! [X26: $i,X27: $i] :
      ( ( v1_xboole_0 @ X26 )
      | ~ ( m1_subset_1 @ X26 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X27 ) ) )
      | ~ ( v1_zfmisc_1 @ X26 )
      | ( v2_tex_2 @ X26 @ X27 )
      | ~ ( l1_pre_topc @ X27 )
      | ~ ( v2_tdlat_3 @ X27 )
      | ~ ( v2_pre_topc @ X27 )
      | ( v2_struct_0 @ X27 ) ) ),
    inference(cnf,[status(esa)],[t44_tex_2])).

thf('28',plain,
    ( ( v2_struct_0 @ sk_A )
    | ~ ( v2_pre_topc @ sk_A )
    | ~ ( v2_tdlat_3 @ sk_A )
    | ~ ( l1_pre_topc @ sk_A )
    | ( v2_tex_2 @ sk_B_1 @ sk_A )
    | ~ ( v1_zfmisc_1 @ sk_B_1 )
    | ( v1_xboole_0 @ sk_B_1 ) ),
    inference('sup-',[status(thm)],['26','27'])).

thf('29',plain,(
    v2_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('30',plain,(
    v2_tdlat_3 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('31',plain,(
    l1_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('32',plain,
    ( ( v2_struct_0 @ sk_A )
    | ( v2_tex_2 @ sk_B_1 @ sk_A )
    | ~ ( v1_zfmisc_1 @ sk_B_1 )
    | ( v1_xboole_0 @ sk_B_1 ) ),
    inference(demod,[status(thm)],['28','29','30','31'])).

thf('33',plain,
    ( ( ( v1_xboole_0 @ sk_B_1 )
      | ( v2_tex_2 @ sk_B_1 @ sk_A )
      | ( v2_struct_0 @ sk_A ) )
   <= ( v1_zfmisc_1 @ sk_B_1 ) ),
    inference('sup-',[status(thm)],['25','32'])).

thf('34',plain,(
    ~ ( v1_xboole_0 @ sk_B_1 ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('35',plain,
    ( ( ( v2_struct_0 @ sk_A )
      | ( v2_tex_2 @ sk_B_1 @ sk_A ) )
   <= ( v1_zfmisc_1 @ sk_B_1 ) ),
    inference(clc,[status(thm)],['33','34'])).

thf('36',plain,(
    ~ ( v2_struct_0 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('37',plain,
    ( ( v2_tex_2 @ sk_B_1 @ sk_A )
   <= ( v1_zfmisc_1 @ sk_B_1 ) ),
    inference(clc,[status(thm)],['35','36'])).

thf('38',plain,(
    m1_subset_1 @ sk_B_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('39',plain,(
    ! [X21: $i,X22: $i] :
      ( ~ ( m1_subset_1 @ X21 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X22 ) ) )
      | ~ ( v2_tex_2 @ X21 @ X22 )
      | ( v2_tex_2 @ ( sk_C @ X21 @ X22 ) @ X22 )
      | ( v3_tex_2 @ X21 @ X22 )
      | ~ ( l1_pre_topc @ X22 ) ) ),
    inference(cnf,[status(esa)],[d7_tex_2])).

thf('40',plain,
    ( ~ ( l1_pre_topc @ sk_A )
    | ( v3_tex_2 @ sk_B_1 @ sk_A )
    | ( v2_tex_2 @ ( sk_C @ sk_B_1 @ sk_A ) @ sk_A )
    | ~ ( v2_tex_2 @ sk_B_1 @ sk_A ) ),
    inference('sup-',[status(thm)],['38','39'])).

thf('41',plain,(
    l1_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('42',plain,
    ( ( v3_tex_2 @ sk_B_1 @ sk_A )
    | ( v2_tex_2 @ ( sk_C @ sk_B_1 @ sk_A ) @ sk_A )
    | ~ ( v2_tex_2 @ sk_B_1 @ sk_A ) ),
    inference(demod,[status(thm)],['40','41'])).

thf('43',plain,
    ( ( ( v2_tex_2 @ ( sk_C @ sk_B_1 @ sk_A ) @ sk_A )
      | ( v3_tex_2 @ sk_B_1 @ sk_A ) )
   <= ( v1_zfmisc_1 @ sk_B_1 ) ),
    inference('sup-',[status(thm)],['37','42'])).

thf('44',plain,
    ( ( v2_tex_2 @ sk_B_1 @ sk_A )
   <= ( v1_zfmisc_1 @ sk_B_1 ) ),
    inference(clc,[status(thm)],['35','36'])).

thf('45',plain,(
    m1_subset_1 @ sk_B_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('46',plain,(
    ! [X21: $i,X22: $i] :
      ( ~ ( m1_subset_1 @ X21 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X22 ) ) )
      | ~ ( v2_tex_2 @ X21 @ X22 )
      | ( m1_subset_1 @ ( sk_C @ X21 @ X22 ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X22 ) ) )
      | ( v3_tex_2 @ X21 @ X22 )
      | ~ ( l1_pre_topc @ X22 ) ) ),
    inference(cnf,[status(esa)],[d7_tex_2])).

thf('47',plain,
    ( ~ ( l1_pre_topc @ sk_A )
    | ( v3_tex_2 @ sk_B_1 @ sk_A )
    | ( m1_subset_1 @ ( sk_C @ sk_B_1 @ sk_A ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) )
    | ~ ( v2_tex_2 @ sk_B_1 @ sk_A ) ),
    inference('sup-',[status(thm)],['45','46'])).

thf('48',plain,(
    l1_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('49',plain,
    ( ( v3_tex_2 @ sk_B_1 @ sk_A )
    | ( m1_subset_1 @ ( sk_C @ sk_B_1 @ sk_A ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) )
    | ~ ( v2_tex_2 @ sk_B_1 @ sk_A ) ),
    inference(demod,[status(thm)],['47','48'])).

thf('50',plain,
    ( ( ( m1_subset_1 @ ( sk_C @ sk_B_1 @ sk_A ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) )
      | ( v3_tex_2 @ sk_B_1 @ sk_A ) )
   <= ( v1_zfmisc_1 @ sk_B_1 ) ),
    inference('sup-',[status(thm)],['44','49'])).

thf('51',plain,(
    ! [X26: $i,X27: $i] :
      ( ( v1_xboole_0 @ X26 )
      | ~ ( m1_subset_1 @ X26 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X27 ) ) )
      | ~ ( v2_tex_2 @ X26 @ X27 )
      | ( v1_zfmisc_1 @ X26 )
      | ~ ( l1_pre_topc @ X27 )
      | ~ ( v2_tdlat_3 @ X27 )
      | ~ ( v2_pre_topc @ X27 )
      | ( v2_struct_0 @ X27 ) ) ),
    inference(cnf,[status(esa)],[t44_tex_2])).

thf('52',plain,
    ( ( ( v3_tex_2 @ sk_B_1 @ sk_A )
      | ( v2_struct_0 @ sk_A )
      | ~ ( v2_pre_topc @ sk_A )
      | ~ ( v2_tdlat_3 @ sk_A )
      | ~ ( l1_pre_topc @ sk_A )
      | ( v1_zfmisc_1 @ ( sk_C @ sk_B_1 @ sk_A ) )
      | ~ ( v2_tex_2 @ ( sk_C @ sk_B_1 @ sk_A ) @ sk_A )
      | ( v1_xboole_0 @ ( sk_C @ sk_B_1 @ sk_A ) ) )
   <= ( v1_zfmisc_1 @ sk_B_1 ) ),
    inference('sup-',[status(thm)],['50','51'])).

thf('53',plain,(
    v2_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('54',plain,(
    v2_tdlat_3 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('55',plain,(
    l1_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('56',plain,
    ( ( ( v3_tex_2 @ sk_B_1 @ sk_A )
      | ( v2_struct_0 @ sk_A )
      | ( v1_zfmisc_1 @ ( sk_C @ sk_B_1 @ sk_A ) )
      | ~ ( v2_tex_2 @ ( sk_C @ sk_B_1 @ sk_A ) @ sk_A )
      | ( v1_xboole_0 @ ( sk_C @ sk_B_1 @ sk_A ) ) )
   <= ( v1_zfmisc_1 @ sk_B_1 ) ),
    inference(demod,[status(thm)],['52','53','54','55'])).

thf('57',plain,
    ( ( ( v3_tex_2 @ sk_B_1 @ sk_A )
      | ( v1_xboole_0 @ ( sk_C @ sk_B_1 @ sk_A ) )
      | ( v1_zfmisc_1 @ ( sk_C @ sk_B_1 @ sk_A ) )
      | ( v2_struct_0 @ sk_A )
      | ( v3_tex_2 @ sk_B_1 @ sk_A ) )
   <= ( v1_zfmisc_1 @ sk_B_1 ) ),
    inference('sup-',[status(thm)],['43','56'])).

thf('58',plain,
    ( ( ( v2_struct_0 @ sk_A )
      | ( v1_zfmisc_1 @ ( sk_C @ sk_B_1 @ sk_A ) )
      | ( v1_xboole_0 @ ( sk_C @ sk_B_1 @ sk_A ) )
      | ( v3_tex_2 @ sk_B_1 @ sk_A ) )
   <= ( v1_zfmisc_1 @ sk_B_1 ) ),
    inference(simplify,[status(thm)],['57'])).

thf(cc1_zfmisc_1,axiom,(
    ! [A: $i] :
      ( ( v1_xboole_0 @ A )
     => ( v1_zfmisc_1 @ A ) ) )).

thf('59',plain,(
    ! [X8: $i] :
      ( ( v1_zfmisc_1 @ X8 )
      | ~ ( v1_xboole_0 @ X8 ) ) ),
    inference(cnf,[status(esa)],[cc1_zfmisc_1])).

thf('60',plain,
    ( ( ( v3_tex_2 @ sk_B_1 @ sk_A )
      | ( v1_zfmisc_1 @ ( sk_C @ sk_B_1 @ sk_A ) )
      | ( v2_struct_0 @ sk_A )
      | ( v1_zfmisc_1 @ ( sk_C @ sk_B_1 @ sk_A ) ) )
   <= ( v1_zfmisc_1 @ sk_B_1 ) ),
    inference('sup-',[status(thm)],['58','59'])).

thf('61',plain,
    ( ( ( v2_struct_0 @ sk_A )
      | ( v1_zfmisc_1 @ ( sk_C @ sk_B_1 @ sk_A ) )
      | ( v3_tex_2 @ sk_B_1 @ sk_A ) )
   <= ( v1_zfmisc_1 @ sk_B_1 ) ),
    inference(simplify,[status(thm)],['60'])).

thf('62',plain,(
    ~ ( v2_struct_0 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('63',plain,
    ( ( ( v3_tex_2 @ sk_B_1 @ sk_A )
      | ( v1_zfmisc_1 @ ( sk_C @ sk_B_1 @ sk_A ) ) )
   <= ( v1_zfmisc_1 @ sk_B_1 ) ),
    inference(clc,[status(thm)],['61','62'])).

thf('64',plain,
    ( ( v2_tex_2 @ sk_B_1 @ sk_A )
   <= ( v1_zfmisc_1 @ sk_B_1 ) ),
    inference(clc,[status(thm)],['35','36'])).

thf('65',plain,(
    m1_subset_1 @ sk_B_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('66',plain,(
    ! [X21: $i,X22: $i] :
      ( ~ ( m1_subset_1 @ X21 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X22 ) ) )
      | ~ ( v2_tex_2 @ X21 @ X22 )
      | ( r1_tarski @ X21 @ ( sk_C @ X21 @ X22 ) )
      | ( v3_tex_2 @ X21 @ X22 )
      | ~ ( l1_pre_topc @ X22 ) ) ),
    inference(cnf,[status(esa)],[d7_tex_2])).

thf('67',plain,
    ( ~ ( l1_pre_topc @ sk_A )
    | ( v3_tex_2 @ sk_B_1 @ sk_A )
    | ( r1_tarski @ sk_B_1 @ ( sk_C @ sk_B_1 @ sk_A ) )
    | ~ ( v2_tex_2 @ sk_B_1 @ sk_A ) ),
    inference('sup-',[status(thm)],['65','66'])).

thf('68',plain,(
    l1_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('69',plain,
    ( ( v3_tex_2 @ sk_B_1 @ sk_A )
    | ( r1_tarski @ sk_B_1 @ ( sk_C @ sk_B_1 @ sk_A ) )
    | ~ ( v2_tex_2 @ sk_B_1 @ sk_A ) ),
    inference(demod,[status(thm)],['67','68'])).

thf('70',plain,
    ( ( ( r1_tarski @ sk_B_1 @ ( sk_C @ sk_B_1 @ sk_A ) )
      | ( v3_tex_2 @ sk_B_1 @ sk_A ) )
   <= ( v1_zfmisc_1 @ sk_B_1 ) ),
    inference('sup-',[status(thm)],['64','69'])).

thf(t1_tex_2,axiom,(
    ! [A: $i] :
      ( ~ ( v1_xboole_0 @ A )
     => ! [B: $i] :
          ( ( ~ ( v1_xboole_0 @ B )
            & ( v1_zfmisc_1 @ B ) )
         => ( ( r1_tarski @ A @ B )
           => ( A = B ) ) ) ) )).

thf('71',plain,(
    ! [X24: $i,X25: $i] :
      ( ( v1_xboole_0 @ X24 )
      | ~ ( v1_zfmisc_1 @ X24 )
      | ( X25 = X24 )
      | ~ ( r1_tarski @ X25 @ X24 )
      | ( v1_xboole_0 @ X25 ) ) ),
    inference(cnf,[status(esa)],[t1_tex_2])).

thf('72',plain,
    ( ( ( v3_tex_2 @ sk_B_1 @ sk_A )
      | ( v1_xboole_0 @ sk_B_1 )
      | ( sk_B_1
        = ( sk_C @ sk_B_1 @ sk_A ) )
      | ~ ( v1_zfmisc_1 @ ( sk_C @ sk_B_1 @ sk_A ) )
      | ( v1_xboole_0 @ ( sk_C @ sk_B_1 @ sk_A ) ) )
   <= ( v1_zfmisc_1 @ sk_B_1 ) ),
    inference('sup-',[status(thm)],['70','71'])).

thf('73',plain,
    ( ( ( v3_tex_2 @ sk_B_1 @ sk_A )
      | ( v1_xboole_0 @ ( sk_C @ sk_B_1 @ sk_A ) )
      | ( sk_B_1
        = ( sk_C @ sk_B_1 @ sk_A ) )
      | ( v1_xboole_0 @ sk_B_1 )
      | ( v3_tex_2 @ sk_B_1 @ sk_A ) )
   <= ( v1_zfmisc_1 @ sk_B_1 ) ),
    inference('sup-',[status(thm)],['63','72'])).

thf('74',plain,
    ( ( ( v1_xboole_0 @ sk_B_1 )
      | ( sk_B_1
        = ( sk_C @ sk_B_1 @ sk_A ) )
      | ( v1_xboole_0 @ ( sk_C @ sk_B_1 @ sk_A ) )
      | ( v3_tex_2 @ sk_B_1 @ sk_A ) )
   <= ( v1_zfmisc_1 @ sk_B_1 ) ),
    inference(simplify,[status(thm)],['73'])).

thf('75',plain,
    ( ( ( r1_tarski @ sk_B_1 @ ( sk_C @ sk_B_1 @ sk_A ) )
      | ( v3_tex_2 @ sk_B_1 @ sk_A ) )
   <= ( v1_zfmisc_1 @ sk_B_1 ) ),
    inference('sup-',[status(thm)],['64','69'])).

thf(t34_mcart_1,axiom,(
    ! [A: $i] :
      ~ ( ( A != k1_xboole_0 )
        & ! [B: $i] :
            ~ ( ( r2_hidden @ B @ A )
              & ! [C: $i,D: $i,E: $i,F: $i] :
                  ~ ( ( ( r2_hidden @ C @ A )
                      | ( r2_hidden @ D @ A ) )
                    & ( B
                      = ( k4_mcart_1 @ C @ D @ E @ F ) ) ) ) ) )).

thf('76',plain,(
    ! [X15: $i] :
      ( ( X15 = k1_xboole_0 )
      | ( r2_hidden @ ( sk_B @ X15 ) @ X15 ) ) ),
    inference(cnf,[status(esa)],[t34_mcart_1])).

thf(t36_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( r1_tarski @ ( k4_xboole_0 @ A @ B ) @ A ) )).

thf('77',plain,(
    ! [X6: $i,X7: $i] :
      ( r1_tarski @ ( k4_xboole_0 @ X6 @ X7 ) @ X6 ) ),
    inference(cnf,[status(esa)],[t36_xboole_1])).

thf(t3_subset,axiom,(
    ! [A: $i,B: $i] :
      ( ( m1_subset_1 @ A @ ( k1_zfmisc_1 @ B ) )
    <=> ( r1_tarski @ A @ B ) ) )).

thf('78',plain,(
    ! [X9: $i,X11: $i] :
      ( ( m1_subset_1 @ X9 @ ( k1_zfmisc_1 @ X11 ) )
      | ~ ( r1_tarski @ X9 @ X11 ) ) ),
    inference(cnf,[status(esa)],[t3_subset])).

thf('79',plain,(
    ! [X0: $i,X1: $i] :
      ( m1_subset_1 @ ( k4_xboole_0 @ X0 @ X1 ) @ ( k1_zfmisc_1 @ X0 ) ) ),
    inference('sup-',[status(thm)],['77','78'])).

thf(t5_subset,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ~ ( ( r2_hidden @ A @ B )
        & ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ C ) )
        & ( v1_xboole_0 @ C ) ) )).

thf('80',plain,(
    ! [X12: $i,X13: $i,X14: $i] :
      ( ~ ( r2_hidden @ X12 @ X13 )
      | ~ ( v1_xboole_0 @ X14 )
      | ~ ( m1_subset_1 @ X13 @ ( k1_zfmisc_1 @ X14 ) ) ) ),
    inference(cnf,[status(esa)],[t5_subset])).

thf('81',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( v1_xboole_0 @ X0 )
      | ~ ( r2_hidden @ X2 @ ( k4_xboole_0 @ X0 @ X1 ) ) ) ),
    inference('sup-',[status(thm)],['79','80'])).

thf('82',plain,(
    ! [X0: $i,X1: $i] :
      ( ( ( k4_xboole_0 @ X1 @ X0 )
        = k1_xboole_0 )
      | ~ ( v1_xboole_0 @ X1 ) ) ),
    inference('sup-',[status(thm)],['76','81'])).

thf(l32_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( ( k4_xboole_0 @ A @ B )
        = k1_xboole_0 )
    <=> ( r1_tarski @ A @ B ) ) )).

thf('83',plain,(
    ! [X3: $i,X4: $i] :
      ( ( r1_tarski @ X3 @ X4 )
      | ( ( k4_xboole_0 @ X3 @ X4 )
       != k1_xboole_0 ) ) ),
    inference(cnf,[status(esa)],[l32_xboole_1])).

thf('84',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k1_xboole_0 != k1_xboole_0 )
      | ~ ( v1_xboole_0 @ X1 )
      | ( r1_tarski @ X1 @ X0 ) ) ),
    inference('sup-',[status(thm)],['82','83'])).

thf('85',plain,(
    ! [X0: $i,X1: $i] :
      ( ( r1_tarski @ X1 @ X0 )
      | ~ ( v1_xboole_0 @ X1 ) ) ),
    inference(simplify,[status(thm)],['84'])).

thf(d10_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ( A = B )
    <=> ( ( r1_tarski @ A @ B )
        & ( r1_tarski @ B @ A ) ) ) )).

thf('86',plain,(
    ! [X0: $i,X2: $i] :
      ( ( X0 = X2 )
      | ~ ( r1_tarski @ X2 @ X0 )
      | ~ ( r1_tarski @ X0 @ X2 ) ) ),
    inference(cnf,[status(esa)],[d10_xboole_0])).

thf('87',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( v1_xboole_0 @ X1 )
      | ~ ( r1_tarski @ X0 @ X1 )
      | ( X0 = X1 ) ) ),
    inference('sup-',[status(thm)],['85','86'])).

thf('88',plain,
    ( ( ( v3_tex_2 @ sk_B_1 @ sk_A )
      | ( sk_B_1
        = ( sk_C @ sk_B_1 @ sk_A ) )
      | ~ ( v1_xboole_0 @ ( sk_C @ sk_B_1 @ sk_A ) ) )
   <= ( v1_zfmisc_1 @ sk_B_1 ) ),
    inference('sup-',[status(thm)],['75','87'])).

thf('89',plain,
    ( ( v2_tex_2 @ sk_B_1 @ sk_A )
   <= ( v1_zfmisc_1 @ sk_B_1 ) ),
    inference(clc,[status(thm)],['35','36'])).

thf('90',plain,(
    m1_subset_1 @ sk_B_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('91',plain,(
    ! [X21: $i,X22: $i] :
      ( ~ ( m1_subset_1 @ X21 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X22 ) ) )
      | ~ ( v2_tex_2 @ X21 @ X22 )
      | ( X21
       != ( sk_C @ X21 @ X22 ) )
      | ( v3_tex_2 @ X21 @ X22 )
      | ~ ( l1_pre_topc @ X22 ) ) ),
    inference(cnf,[status(esa)],[d7_tex_2])).

thf('92',plain,
    ( ~ ( l1_pre_topc @ sk_A )
    | ( v3_tex_2 @ sk_B_1 @ sk_A )
    | ( sk_B_1
     != ( sk_C @ sk_B_1 @ sk_A ) )
    | ~ ( v2_tex_2 @ sk_B_1 @ sk_A ) ),
    inference('sup-',[status(thm)],['90','91'])).

thf('93',plain,(
    l1_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('94',plain,
    ( ( v3_tex_2 @ sk_B_1 @ sk_A )
    | ( sk_B_1
     != ( sk_C @ sk_B_1 @ sk_A ) )
    | ~ ( v2_tex_2 @ sk_B_1 @ sk_A ) ),
    inference(demod,[status(thm)],['92','93'])).

thf('95',plain,
    ( ( ( sk_B_1
       != ( sk_C @ sk_B_1 @ sk_A ) )
      | ( v3_tex_2 @ sk_B_1 @ sk_A ) )
   <= ( v1_zfmisc_1 @ sk_B_1 ) ),
    inference('sup-',[status(thm)],['89','94'])).

thf('96',plain,
    ( ( ~ ( v1_xboole_0 @ ( sk_C @ sk_B_1 @ sk_A ) )
      | ( v3_tex_2 @ sk_B_1 @ sk_A ) )
   <= ( v1_zfmisc_1 @ sk_B_1 ) ),
    inference(clc,[status(thm)],['88','95'])).

thf('97',plain,
    ( ( ( v3_tex_2 @ sk_B_1 @ sk_A )
      | ( sk_B_1
        = ( sk_C @ sk_B_1 @ sk_A ) )
      | ( v1_xboole_0 @ sk_B_1 )
      | ( v3_tex_2 @ sk_B_1 @ sk_A ) )
   <= ( v1_zfmisc_1 @ sk_B_1 ) ),
    inference('sup-',[status(thm)],['74','96'])).

thf('98',plain,
    ( ( ( v1_xboole_0 @ sk_B_1 )
      | ( sk_B_1
        = ( sk_C @ sk_B_1 @ sk_A ) )
      | ( v3_tex_2 @ sk_B_1 @ sk_A ) )
   <= ( v1_zfmisc_1 @ sk_B_1 ) ),
    inference(simplify,[status(thm)],['97'])).

thf('99',plain,(
    ~ ( v1_xboole_0 @ sk_B_1 ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('100',plain,
    ( ( ( v3_tex_2 @ sk_B_1 @ sk_A )
      | ( sk_B_1
        = ( sk_C @ sk_B_1 @ sk_A ) ) )
   <= ( v1_zfmisc_1 @ sk_B_1 ) ),
    inference(clc,[status(thm)],['98','99'])).

thf('101',plain,
    ( ( ( sk_B_1
       != ( sk_C @ sk_B_1 @ sk_A ) )
      | ( v3_tex_2 @ sk_B_1 @ sk_A ) )
   <= ( v1_zfmisc_1 @ sk_B_1 ) ),
    inference('sup-',[status(thm)],['89','94'])).

thf('102',plain,
    ( ( v3_tex_2 @ sk_B_1 @ sk_A )
   <= ( v1_zfmisc_1 @ sk_B_1 ) ),
    inference(clc,[status(thm)],['100','101'])).

thf('103',plain,
    ( ~ ( v3_tex_2 @ sk_B_1 @ sk_A )
   <= ~ ( v3_tex_2 @ sk_B_1 @ sk_A ) ),
    inference(split,[status(esa)],['0'])).

thf('104',plain,
    ( ~ ( v1_zfmisc_1 @ sk_B_1 )
    | ( v3_tex_2 @ sk_B_1 @ sk_A ) ),
    inference('sup-',[status(thm)],['102','103'])).

thf('105',plain,(
    $false ),
    inference('sat_resolution*',[status(thm)],['1','23','24','104'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.02/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.02/0.12  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.Y52KyGkLkS
% 0.12/0.32  % Computer   : n012.cluster.edu
% 0.12/0.32  % Model      : x86_64 x86_64
% 0.12/0.32  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.32  % Memory     : 8042.1875MB
% 0.12/0.32  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.32  % CPULimit   : 60
% 0.12/0.32  % DateTime   : Tue Dec  1 17:55:22 EST 2020
% 0.12/0.32  % CPUTime    : 
% 0.12/0.32  % Running portfolio for 600 s
% 0.12/0.32  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.12/0.33  % Number of cores: 8
% 0.12/0.33  % Python version: Python 3.6.8
% 0.12/0.33  % Running in FO mode
% 12.46/12.64  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 12.46/12.64  % Solved by: fo/fo7.sh
% 12.46/12.64  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 12.46/12.64  % done 14276 iterations in 12.204s
% 12.46/12.64  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 12.46/12.64  % SZS output start Refutation
% 12.46/12.64  thf(k4_xboole_0_type, type, k4_xboole_0: $i > $i > $i).
% 12.46/12.64  thf(v3_tex_2_type, type, v3_tex_2: $i > $i > $o).
% 12.46/12.64  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 12.46/12.64  thf(sk_B_type, type, sk_B: $i > $i).
% 12.46/12.64  thf(v1_xboole_0_type, type, v1_xboole_0: $i > $o).
% 12.46/12.64  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 12.46/12.64  thf(v2_struct_0_type, type, v2_struct_0: $i > $o).
% 12.46/12.64  thf(sk_B_1_type, type, sk_B_1: $i).
% 12.46/12.64  thf(sk_A_type, type, sk_A: $i).
% 12.46/12.64  thf(k4_mcart_1_type, type, k4_mcart_1: $i > $i > $i > $i > $i).
% 12.46/12.64  thf(v2_pre_topc_type, type, v2_pre_topc: $i > $o).
% 12.46/12.64  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 12.46/12.64  thf(sk_C_type, type, sk_C: $i > $i > $i).
% 12.46/12.64  thf(u1_struct_0_type, type, u1_struct_0: $i > $i).
% 12.46/12.64  thf(v2_tex_2_type, type, v2_tex_2: $i > $i > $o).
% 12.46/12.64  thf(k1_zfmisc_1_type, type, k1_zfmisc_1: $i > $i).
% 12.46/12.64  thf(l1_pre_topc_type, type, l1_pre_topc: $i > $o).
% 12.46/12.64  thf(v1_zfmisc_1_type, type, v1_zfmisc_1: $i > $o).
% 12.46/12.64  thf(v2_tdlat_3_type, type, v2_tdlat_3: $i > $o).
% 12.46/12.64  thf(m1_subset_1_type, type, m1_subset_1: $i > $i > $o).
% 12.46/12.64  thf(t50_tex_2, conjecture,
% 12.46/12.64    (![A:$i]:
% 12.46/12.64     ( ( ( ~( v2_struct_0 @ A ) ) & ( v2_pre_topc @ A ) & ( v2_tdlat_3 @ A ) & 
% 12.46/12.64         ( l1_pre_topc @ A ) ) =>
% 12.46/12.64       ( ![B:$i]:
% 12.46/12.64         ( ( ( ~( v1_xboole_0 @ B ) ) & 
% 12.46/12.64             ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) ) =>
% 12.46/12.64           ( ( v3_tex_2 @ B @ A ) <=> ( v1_zfmisc_1 @ B ) ) ) ) ))).
% 12.46/12.64  thf(zf_stmt_0, negated_conjecture,
% 12.46/12.64    (~( ![A:$i]:
% 12.46/12.64        ( ( ( ~( v2_struct_0 @ A ) ) & ( v2_pre_topc @ A ) & 
% 12.46/12.64            ( v2_tdlat_3 @ A ) & ( l1_pre_topc @ A ) ) =>
% 12.46/12.64          ( ![B:$i]:
% 12.46/12.64            ( ( ( ~( v1_xboole_0 @ B ) ) & 
% 12.46/12.64                ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) ) =>
% 12.46/12.64              ( ( v3_tex_2 @ B @ A ) <=> ( v1_zfmisc_1 @ B ) ) ) ) ) )),
% 12.46/12.64    inference('cnf.neg', [status(esa)], [t50_tex_2])).
% 12.46/12.64  thf('0', plain, ((~ (v1_zfmisc_1 @ sk_B_1) | ~ (v3_tex_2 @ sk_B_1 @ sk_A))),
% 12.46/12.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 12.46/12.64  thf('1', plain,
% 12.46/12.64      (~ ((v1_zfmisc_1 @ sk_B_1)) | ~ ((v3_tex_2 @ sk_B_1 @ sk_A))),
% 12.46/12.64      inference('split', [status(esa)], ['0'])).
% 12.46/12.64  thf('2', plain, (((v1_zfmisc_1 @ sk_B_1) | (v3_tex_2 @ sk_B_1 @ sk_A))),
% 12.46/12.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 12.46/12.64  thf('3', plain,
% 12.46/12.64      (((v3_tex_2 @ sk_B_1 @ sk_A)) <= (((v3_tex_2 @ sk_B_1 @ sk_A)))),
% 12.46/12.64      inference('split', [status(esa)], ['2'])).
% 12.46/12.64  thf('4', plain,
% 12.46/12.64      ((m1_subset_1 @ sk_B_1 @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))),
% 12.46/12.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 12.46/12.64  thf(d7_tex_2, axiom,
% 12.46/12.64    (![A:$i]:
% 12.46/12.64     ( ( l1_pre_topc @ A ) =>
% 12.46/12.64       ( ![B:$i]:
% 12.46/12.64         ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) =>
% 12.46/12.64           ( ( v3_tex_2 @ B @ A ) <=>
% 12.46/12.64             ( ( v2_tex_2 @ B @ A ) & 
% 12.46/12.64               ( ![C:$i]:
% 12.46/12.64                 ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) =>
% 12.46/12.64                   ( ( ( v2_tex_2 @ C @ A ) & ( r1_tarski @ B @ C ) ) =>
% 12.46/12.64                     ( ( B ) = ( C ) ) ) ) ) ) ) ) ) ))).
% 12.46/12.64  thf('5', plain,
% 12.46/12.64      (![X21 : $i, X22 : $i]:
% 12.46/12.64         (~ (m1_subset_1 @ X21 @ (k1_zfmisc_1 @ (u1_struct_0 @ X22)))
% 12.46/12.64          | ~ (v3_tex_2 @ X21 @ X22)
% 12.46/12.64          | (v2_tex_2 @ X21 @ X22)
% 12.46/12.64          | ~ (l1_pre_topc @ X22))),
% 12.46/12.64      inference('cnf', [status(esa)], [d7_tex_2])).
% 12.46/12.64  thf('6', plain,
% 12.46/12.64      ((~ (l1_pre_topc @ sk_A)
% 12.46/12.64        | (v2_tex_2 @ sk_B_1 @ sk_A)
% 12.46/12.64        | ~ (v3_tex_2 @ sk_B_1 @ sk_A))),
% 12.46/12.64      inference('sup-', [status(thm)], ['4', '5'])).
% 12.46/12.64  thf('7', plain, ((l1_pre_topc @ sk_A)),
% 12.46/12.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 12.46/12.64  thf('8', plain,
% 12.46/12.64      (((v2_tex_2 @ sk_B_1 @ sk_A) | ~ (v3_tex_2 @ sk_B_1 @ sk_A))),
% 12.46/12.64      inference('demod', [status(thm)], ['6', '7'])).
% 12.46/12.64  thf('9', plain,
% 12.46/12.64      (((v2_tex_2 @ sk_B_1 @ sk_A)) <= (((v3_tex_2 @ sk_B_1 @ sk_A)))),
% 12.46/12.64      inference('sup-', [status(thm)], ['3', '8'])).
% 12.46/12.64  thf('10', plain,
% 12.46/12.64      ((m1_subset_1 @ sk_B_1 @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))),
% 12.46/12.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 12.46/12.64  thf(t44_tex_2, axiom,
% 12.46/12.64    (![A:$i]:
% 12.46/12.64     ( ( ( ~( v2_struct_0 @ A ) ) & ( v2_pre_topc @ A ) & ( v2_tdlat_3 @ A ) & 
% 12.46/12.64         ( l1_pre_topc @ A ) ) =>
% 12.46/12.64       ( ![B:$i]:
% 12.46/12.64         ( ( ( ~( v1_xboole_0 @ B ) ) & 
% 12.46/12.64             ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) ) =>
% 12.46/12.64           ( ( v2_tex_2 @ B @ A ) <=> ( v1_zfmisc_1 @ B ) ) ) ) ))).
% 12.46/12.64  thf('11', plain,
% 12.46/12.64      (![X26 : $i, X27 : $i]:
% 12.46/12.64         ((v1_xboole_0 @ X26)
% 12.46/12.64          | ~ (m1_subset_1 @ X26 @ (k1_zfmisc_1 @ (u1_struct_0 @ X27)))
% 12.46/12.64          | ~ (v2_tex_2 @ X26 @ X27)
% 12.46/12.64          | (v1_zfmisc_1 @ X26)
% 12.46/12.64          | ~ (l1_pre_topc @ X27)
% 12.46/12.64          | ~ (v2_tdlat_3 @ X27)
% 12.46/12.64          | ~ (v2_pre_topc @ X27)
% 12.46/12.64          | (v2_struct_0 @ X27))),
% 12.46/12.64      inference('cnf', [status(esa)], [t44_tex_2])).
% 12.46/12.64  thf('12', plain,
% 12.46/12.64      (((v2_struct_0 @ sk_A)
% 12.46/12.64        | ~ (v2_pre_topc @ sk_A)
% 12.46/12.64        | ~ (v2_tdlat_3 @ sk_A)
% 12.46/12.64        | ~ (l1_pre_topc @ sk_A)
% 12.46/12.64        | (v1_zfmisc_1 @ sk_B_1)
% 12.46/12.64        | ~ (v2_tex_2 @ sk_B_1 @ sk_A)
% 12.46/12.64        | (v1_xboole_0 @ sk_B_1))),
% 12.46/12.64      inference('sup-', [status(thm)], ['10', '11'])).
% 12.46/12.64  thf('13', plain, ((v2_pre_topc @ sk_A)),
% 12.46/12.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 12.46/12.64  thf('14', plain, ((v2_tdlat_3 @ sk_A)),
% 12.46/12.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 12.46/12.64  thf('15', plain, ((l1_pre_topc @ sk_A)),
% 12.46/12.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 12.46/12.64  thf('16', plain,
% 12.46/12.64      (((v2_struct_0 @ sk_A)
% 12.46/12.64        | (v1_zfmisc_1 @ sk_B_1)
% 12.46/12.64        | ~ (v2_tex_2 @ sk_B_1 @ sk_A)
% 12.46/12.64        | (v1_xboole_0 @ sk_B_1))),
% 12.46/12.64      inference('demod', [status(thm)], ['12', '13', '14', '15'])).
% 12.46/12.64  thf('17', plain,
% 12.46/12.64      ((((v1_xboole_0 @ sk_B_1) | (v1_zfmisc_1 @ sk_B_1) | (v2_struct_0 @ sk_A)))
% 12.46/12.64         <= (((v3_tex_2 @ sk_B_1 @ sk_A)))),
% 12.46/12.64      inference('sup-', [status(thm)], ['9', '16'])).
% 12.46/12.64  thf('18', plain, (~ (v1_xboole_0 @ sk_B_1)),
% 12.46/12.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 12.46/12.64  thf('19', plain,
% 12.46/12.64      ((((v2_struct_0 @ sk_A) | (v1_zfmisc_1 @ sk_B_1)))
% 12.46/12.64         <= (((v3_tex_2 @ sk_B_1 @ sk_A)))),
% 12.46/12.64      inference('clc', [status(thm)], ['17', '18'])).
% 12.46/12.64  thf('20', plain, (~ (v2_struct_0 @ sk_A)),
% 12.46/12.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 12.46/12.64  thf('21', plain,
% 12.46/12.64      (((v1_zfmisc_1 @ sk_B_1)) <= (((v3_tex_2 @ sk_B_1 @ sk_A)))),
% 12.46/12.64      inference('clc', [status(thm)], ['19', '20'])).
% 12.46/12.64  thf('22', plain,
% 12.46/12.64      ((~ (v1_zfmisc_1 @ sk_B_1)) <= (~ ((v1_zfmisc_1 @ sk_B_1)))),
% 12.46/12.64      inference('split', [status(esa)], ['0'])).
% 12.46/12.64  thf('23', plain, (((v1_zfmisc_1 @ sk_B_1)) | ~ ((v3_tex_2 @ sk_B_1 @ sk_A))),
% 12.46/12.64      inference('sup-', [status(thm)], ['21', '22'])).
% 12.46/12.64  thf('24', plain, (((v1_zfmisc_1 @ sk_B_1)) | ((v3_tex_2 @ sk_B_1 @ sk_A))),
% 12.46/12.64      inference('split', [status(esa)], ['2'])).
% 12.46/12.64  thf('25', plain, (((v1_zfmisc_1 @ sk_B_1)) <= (((v1_zfmisc_1 @ sk_B_1)))),
% 12.46/12.64      inference('split', [status(esa)], ['2'])).
% 12.46/12.64  thf('26', plain,
% 12.46/12.64      ((m1_subset_1 @ sk_B_1 @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))),
% 12.46/12.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 12.46/12.64  thf('27', plain,
% 12.46/12.64      (![X26 : $i, X27 : $i]:
% 12.46/12.64         ((v1_xboole_0 @ X26)
% 12.46/12.64          | ~ (m1_subset_1 @ X26 @ (k1_zfmisc_1 @ (u1_struct_0 @ X27)))
% 12.46/12.64          | ~ (v1_zfmisc_1 @ X26)
% 12.46/12.64          | (v2_tex_2 @ X26 @ X27)
% 12.46/12.64          | ~ (l1_pre_topc @ X27)
% 12.46/12.64          | ~ (v2_tdlat_3 @ X27)
% 12.46/12.64          | ~ (v2_pre_topc @ X27)
% 12.46/12.64          | (v2_struct_0 @ X27))),
% 12.46/12.64      inference('cnf', [status(esa)], [t44_tex_2])).
% 12.46/12.64  thf('28', plain,
% 12.46/12.64      (((v2_struct_0 @ sk_A)
% 12.46/12.64        | ~ (v2_pre_topc @ sk_A)
% 12.46/12.64        | ~ (v2_tdlat_3 @ sk_A)
% 12.46/12.64        | ~ (l1_pre_topc @ sk_A)
% 12.46/12.64        | (v2_tex_2 @ sk_B_1 @ sk_A)
% 12.46/12.64        | ~ (v1_zfmisc_1 @ sk_B_1)
% 12.46/12.64        | (v1_xboole_0 @ sk_B_1))),
% 12.46/12.64      inference('sup-', [status(thm)], ['26', '27'])).
% 12.46/12.64  thf('29', plain, ((v2_pre_topc @ sk_A)),
% 12.46/12.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 12.46/12.64  thf('30', plain, ((v2_tdlat_3 @ sk_A)),
% 12.46/12.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 12.46/12.64  thf('31', plain, ((l1_pre_topc @ sk_A)),
% 12.46/12.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 12.46/12.64  thf('32', plain,
% 12.46/12.64      (((v2_struct_0 @ sk_A)
% 12.46/12.64        | (v2_tex_2 @ sk_B_1 @ sk_A)
% 12.46/12.64        | ~ (v1_zfmisc_1 @ sk_B_1)
% 12.46/12.64        | (v1_xboole_0 @ sk_B_1))),
% 12.46/12.64      inference('demod', [status(thm)], ['28', '29', '30', '31'])).
% 12.46/12.64  thf('33', plain,
% 12.46/12.64      ((((v1_xboole_0 @ sk_B_1)
% 12.46/12.64         | (v2_tex_2 @ sk_B_1 @ sk_A)
% 12.46/12.64         | (v2_struct_0 @ sk_A))) <= (((v1_zfmisc_1 @ sk_B_1)))),
% 12.46/12.64      inference('sup-', [status(thm)], ['25', '32'])).
% 12.46/12.64  thf('34', plain, (~ (v1_xboole_0 @ sk_B_1)),
% 12.46/12.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 12.46/12.64  thf('35', plain,
% 12.46/12.64      ((((v2_struct_0 @ sk_A) | (v2_tex_2 @ sk_B_1 @ sk_A)))
% 12.46/12.64         <= (((v1_zfmisc_1 @ sk_B_1)))),
% 12.46/12.64      inference('clc', [status(thm)], ['33', '34'])).
% 12.46/12.64  thf('36', plain, (~ (v2_struct_0 @ sk_A)),
% 12.46/12.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 12.46/12.64  thf('37', plain,
% 12.46/12.64      (((v2_tex_2 @ sk_B_1 @ sk_A)) <= (((v1_zfmisc_1 @ sk_B_1)))),
% 12.46/12.64      inference('clc', [status(thm)], ['35', '36'])).
% 12.46/12.64  thf('38', plain,
% 12.46/12.64      ((m1_subset_1 @ sk_B_1 @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))),
% 12.46/12.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 12.46/12.64  thf('39', plain,
% 12.46/12.64      (![X21 : $i, X22 : $i]:
% 12.46/12.64         (~ (m1_subset_1 @ X21 @ (k1_zfmisc_1 @ (u1_struct_0 @ X22)))
% 12.46/12.64          | ~ (v2_tex_2 @ X21 @ X22)
% 12.46/12.64          | (v2_tex_2 @ (sk_C @ X21 @ X22) @ X22)
% 12.46/12.64          | (v3_tex_2 @ X21 @ X22)
% 12.46/12.64          | ~ (l1_pre_topc @ X22))),
% 12.46/12.64      inference('cnf', [status(esa)], [d7_tex_2])).
% 12.46/12.64  thf('40', plain,
% 12.46/12.64      ((~ (l1_pre_topc @ sk_A)
% 12.46/12.64        | (v3_tex_2 @ sk_B_1 @ sk_A)
% 12.46/12.64        | (v2_tex_2 @ (sk_C @ sk_B_1 @ sk_A) @ sk_A)
% 12.46/12.64        | ~ (v2_tex_2 @ sk_B_1 @ sk_A))),
% 12.46/12.64      inference('sup-', [status(thm)], ['38', '39'])).
% 12.46/12.64  thf('41', plain, ((l1_pre_topc @ sk_A)),
% 12.46/12.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 12.46/12.64  thf('42', plain,
% 12.46/12.64      (((v3_tex_2 @ sk_B_1 @ sk_A)
% 12.46/12.64        | (v2_tex_2 @ (sk_C @ sk_B_1 @ sk_A) @ sk_A)
% 12.46/12.64        | ~ (v2_tex_2 @ sk_B_1 @ sk_A))),
% 12.46/12.64      inference('demod', [status(thm)], ['40', '41'])).
% 12.46/12.64  thf('43', plain,
% 12.46/12.64      ((((v2_tex_2 @ (sk_C @ sk_B_1 @ sk_A) @ sk_A)
% 12.46/12.64         | (v3_tex_2 @ sk_B_1 @ sk_A))) <= (((v1_zfmisc_1 @ sk_B_1)))),
% 12.46/12.64      inference('sup-', [status(thm)], ['37', '42'])).
% 12.46/12.64  thf('44', plain,
% 12.46/12.64      (((v2_tex_2 @ sk_B_1 @ sk_A)) <= (((v1_zfmisc_1 @ sk_B_1)))),
% 12.46/12.64      inference('clc', [status(thm)], ['35', '36'])).
% 12.46/12.64  thf('45', plain,
% 12.46/12.64      ((m1_subset_1 @ sk_B_1 @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))),
% 12.46/12.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 12.46/12.64  thf('46', plain,
% 12.46/12.64      (![X21 : $i, X22 : $i]:
% 12.46/12.64         (~ (m1_subset_1 @ X21 @ (k1_zfmisc_1 @ (u1_struct_0 @ X22)))
% 12.46/12.64          | ~ (v2_tex_2 @ X21 @ X22)
% 12.46/12.64          | (m1_subset_1 @ (sk_C @ X21 @ X22) @ 
% 12.46/12.64             (k1_zfmisc_1 @ (u1_struct_0 @ X22)))
% 12.46/12.64          | (v3_tex_2 @ X21 @ X22)
% 12.46/12.64          | ~ (l1_pre_topc @ X22))),
% 12.46/12.64      inference('cnf', [status(esa)], [d7_tex_2])).
% 12.46/12.64  thf('47', plain,
% 12.46/12.64      ((~ (l1_pre_topc @ sk_A)
% 12.46/12.64        | (v3_tex_2 @ sk_B_1 @ sk_A)
% 12.46/12.64        | (m1_subset_1 @ (sk_C @ sk_B_1 @ sk_A) @ 
% 12.46/12.64           (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))
% 12.46/12.64        | ~ (v2_tex_2 @ sk_B_1 @ sk_A))),
% 12.46/12.64      inference('sup-', [status(thm)], ['45', '46'])).
% 12.46/12.64  thf('48', plain, ((l1_pre_topc @ sk_A)),
% 12.46/12.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 12.46/12.64  thf('49', plain,
% 12.46/12.64      (((v3_tex_2 @ sk_B_1 @ sk_A)
% 12.46/12.64        | (m1_subset_1 @ (sk_C @ sk_B_1 @ sk_A) @ 
% 12.46/12.64           (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))
% 12.46/12.64        | ~ (v2_tex_2 @ sk_B_1 @ sk_A))),
% 12.46/12.64      inference('demod', [status(thm)], ['47', '48'])).
% 12.46/12.64  thf('50', plain,
% 12.46/12.64      ((((m1_subset_1 @ (sk_C @ sk_B_1 @ sk_A) @ 
% 12.46/12.64          (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))
% 12.46/12.64         | (v3_tex_2 @ sk_B_1 @ sk_A))) <= (((v1_zfmisc_1 @ sk_B_1)))),
% 12.46/12.64      inference('sup-', [status(thm)], ['44', '49'])).
% 12.46/12.64  thf('51', plain,
% 12.46/12.64      (![X26 : $i, X27 : $i]:
% 12.46/12.64         ((v1_xboole_0 @ X26)
% 12.46/12.64          | ~ (m1_subset_1 @ X26 @ (k1_zfmisc_1 @ (u1_struct_0 @ X27)))
% 12.46/12.64          | ~ (v2_tex_2 @ X26 @ X27)
% 12.46/12.64          | (v1_zfmisc_1 @ X26)
% 12.46/12.64          | ~ (l1_pre_topc @ X27)
% 12.46/12.64          | ~ (v2_tdlat_3 @ X27)
% 12.46/12.64          | ~ (v2_pre_topc @ X27)
% 12.46/12.64          | (v2_struct_0 @ X27))),
% 12.46/12.64      inference('cnf', [status(esa)], [t44_tex_2])).
% 12.46/12.64  thf('52', plain,
% 12.46/12.64      ((((v3_tex_2 @ sk_B_1 @ sk_A)
% 12.46/12.64         | (v2_struct_0 @ sk_A)
% 12.46/12.64         | ~ (v2_pre_topc @ sk_A)
% 12.46/12.64         | ~ (v2_tdlat_3 @ sk_A)
% 12.46/12.64         | ~ (l1_pre_topc @ sk_A)
% 12.46/12.64         | (v1_zfmisc_1 @ (sk_C @ sk_B_1 @ sk_A))
% 12.46/12.64         | ~ (v2_tex_2 @ (sk_C @ sk_B_1 @ sk_A) @ sk_A)
% 12.46/12.64         | (v1_xboole_0 @ (sk_C @ sk_B_1 @ sk_A))))
% 12.46/12.64         <= (((v1_zfmisc_1 @ sk_B_1)))),
% 12.46/12.64      inference('sup-', [status(thm)], ['50', '51'])).
% 12.46/12.64  thf('53', plain, ((v2_pre_topc @ sk_A)),
% 12.46/12.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 12.46/12.64  thf('54', plain, ((v2_tdlat_3 @ sk_A)),
% 12.46/12.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 12.46/12.64  thf('55', plain, ((l1_pre_topc @ sk_A)),
% 12.46/12.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 12.46/12.64  thf('56', plain,
% 12.46/12.64      ((((v3_tex_2 @ sk_B_1 @ sk_A)
% 12.46/12.64         | (v2_struct_0 @ sk_A)
% 12.46/12.64         | (v1_zfmisc_1 @ (sk_C @ sk_B_1 @ sk_A))
% 12.46/12.64         | ~ (v2_tex_2 @ (sk_C @ sk_B_1 @ sk_A) @ sk_A)
% 12.46/12.64         | (v1_xboole_0 @ (sk_C @ sk_B_1 @ sk_A))))
% 12.46/12.64         <= (((v1_zfmisc_1 @ sk_B_1)))),
% 12.46/12.64      inference('demod', [status(thm)], ['52', '53', '54', '55'])).
% 12.46/12.64  thf('57', plain,
% 12.46/12.64      ((((v3_tex_2 @ sk_B_1 @ sk_A)
% 12.46/12.64         | (v1_xboole_0 @ (sk_C @ sk_B_1 @ sk_A))
% 12.46/12.64         | (v1_zfmisc_1 @ (sk_C @ sk_B_1 @ sk_A))
% 12.46/12.64         | (v2_struct_0 @ sk_A)
% 12.46/12.64         | (v3_tex_2 @ sk_B_1 @ sk_A))) <= (((v1_zfmisc_1 @ sk_B_1)))),
% 12.46/12.64      inference('sup-', [status(thm)], ['43', '56'])).
% 12.46/12.64  thf('58', plain,
% 12.46/12.64      ((((v2_struct_0 @ sk_A)
% 12.46/12.64         | (v1_zfmisc_1 @ (sk_C @ sk_B_1 @ sk_A))
% 12.46/12.64         | (v1_xboole_0 @ (sk_C @ sk_B_1 @ sk_A))
% 12.46/12.64         | (v3_tex_2 @ sk_B_1 @ sk_A))) <= (((v1_zfmisc_1 @ sk_B_1)))),
% 12.46/12.64      inference('simplify', [status(thm)], ['57'])).
% 12.46/12.64  thf(cc1_zfmisc_1, axiom,
% 12.46/12.64    (![A:$i]: ( ( v1_xboole_0 @ A ) => ( v1_zfmisc_1 @ A ) ))).
% 12.46/12.64  thf('59', plain, (![X8 : $i]: ((v1_zfmisc_1 @ X8) | ~ (v1_xboole_0 @ X8))),
% 12.46/12.64      inference('cnf', [status(esa)], [cc1_zfmisc_1])).
% 12.46/12.64  thf('60', plain,
% 12.46/12.64      ((((v3_tex_2 @ sk_B_1 @ sk_A)
% 12.46/12.64         | (v1_zfmisc_1 @ (sk_C @ sk_B_1 @ sk_A))
% 12.46/12.64         | (v2_struct_0 @ sk_A)
% 12.46/12.64         | (v1_zfmisc_1 @ (sk_C @ sk_B_1 @ sk_A))))
% 12.46/12.64         <= (((v1_zfmisc_1 @ sk_B_1)))),
% 12.46/12.64      inference('sup-', [status(thm)], ['58', '59'])).
% 12.46/12.64  thf('61', plain,
% 12.46/12.64      ((((v2_struct_0 @ sk_A)
% 12.46/12.64         | (v1_zfmisc_1 @ (sk_C @ sk_B_1 @ sk_A))
% 12.46/12.64         | (v3_tex_2 @ sk_B_1 @ sk_A))) <= (((v1_zfmisc_1 @ sk_B_1)))),
% 12.46/12.64      inference('simplify', [status(thm)], ['60'])).
% 12.46/12.64  thf('62', plain, (~ (v2_struct_0 @ sk_A)),
% 12.46/12.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 12.46/12.64  thf('63', plain,
% 12.46/12.64      ((((v3_tex_2 @ sk_B_1 @ sk_A) | (v1_zfmisc_1 @ (sk_C @ sk_B_1 @ sk_A))))
% 12.46/12.64         <= (((v1_zfmisc_1 @ sk_B_1)))),
% 12.46/12.64      inference('clc', [status(thm)], ['61', '62'])).
% 12.46/12.64  thf('64', plain,
% 12.46/12.64      (((v2_tex_2 @ sk_B_1 @ sk_A)) <= (((v1_zfmisc_1 @ sk_B_1)))),
% 12.46/12.64      inference('clc', [status(thm)], ['35', '36'])).
% 12.46/12.64  thf('65', plain,
% 12.46/12.64      ((m1_subset_1 @ sk_B_1 @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))),
% 12.46/12.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 12.46/12.64  thf('66', plain,
% 12.46/12.64      (![X21 : $i, X22 : $i]:
% 12.46/12.64         (~ (m1_subset_1 @ X21 @ (k1_zfmisc_1 @ (u1_struct_0 @ X22)))
% 12.46/12.64          | ~ (v2_tex_2 @ X21 @ X22)
% 12.46/12.64          | (r1_tarski @ X21 @ (sk_C @ X21 @ X22))
% 12.46/12.64          | (v3_tex_2 @ X21 @ X22)
% 12.46/12.64          | ~ (l1_pre_topc @ X22))),
% 12.46/12.64      inference('cnf', [status(esa)], [d7_tex_2])).
% 12.46/12.64  thf('67', plain,
% 12.46/12.64      ((~ (l1_pre_topc @ sk_A)
% 12.46/12.64        | (v3_tex_2 @ sk_B_1 @ sk_A)
% 12.46/12.64        | (r1_tarski @ sk_B_1 @ (sk_C @ sk_B_1 @ sk_A))
% 12.46/12.64        | ~ (v2_tex_2 @ sk_B_1 @ sk_A))),
% 12.46/12.64      inference('sup-', [status(thm)], ['65', '66'])).
% 12.46/12.64  thf('68', plain, ((l1_pre_topc @ sk_A)),
% 12.46/12.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 12.46/12.64  thf('69', plain,
% 12.46/12.64      (((v3_tex_2 @ sk_B_1 @ sk_A)
% 12.46/12.64        | (r1_tarski @ sk_B_1 @ (sk_C @ sk_B_1 @ sk_A))
% 12.46/12.64        | ~ (v2_tex_2 @ sk_B_1 @ sk_A))),
% 12.46/12.64      inference('demod', [status(thm)], ['67', '68'])).
% 12.46/12.64  thf('70', plain,
% 12.46/12.64      ((((r1_tarski @ sk_B_1 @ (sk_C @ sk_B_1 @ sk_A))
% 12.46/12.64         | (v3_tex_2 @ sk_B_1 @ sk_A))) <= (((v1_zfmisc_1 @ sk_B_1)))),
% 12.46/12.64      inference('sup-', [status(thm)], ['64', '69'])).
% 12.46/12.64  thf(t1_tex_2, axiom,
% 12.46/12.64    (![A:$i]:
% 12.46/12.64     ( ( ~( v1_xboole_0 @ A ) ) =>
% 12.46/12.64       ( ![B:$i]:
% 12.46/12.64         ( ( ( ~( v1_xboole_0 @ B ) ) & ( v1_zfmisc_1 @ B ) ) =>
% 12.46/12.64           ( ( r1_tarski @ A @ B ) => ( ( A ) = ( B ) ) ) ) ) ))).
% 12.46/12.64  thf('71', plain,
% 12.46/12.64      (![X24 : $i, X25 : $i]:
% 12.46/12.64         ((v1_xboole_0 @ X24)
% 12.46/12.64          | ~ (v1_zfmisc_1 @ X24)
% 12.46/12.64          | ((X25) = (X24))
% 12.46/12.64          | ~ (r1_tarski @ X25 @ X24)
% 12.46/12.64          | (v1_xboole_0 @ X25))),
% 12.46/12.64      inference('cnf', [status(esa)], [t1_tex_2])).
% 12.46/12.64  thf('72', plain,
% 12.46/12.64      ((((v3_tex_2 @ sk_B_1 @ sk_A)
% 12.46/12.64         | (v1_xboole_0 @ sk_B_1)
% 12.46/12.64         | ((sk_B_1) = (sk_C @ sk_B_1 @ sk_A))
% 12.46/12.64         | ~ (v1_zfmisc_1 @ (sk_C @ sk_B_1 @ sk_A))
% 12.46/12.64         | (v1_xboole_0 @ (sk_C @ sk_B_1 @ sk_A))))
% 12.46/12.64         <= (((v1_zfmisc_1 @ sk_B_1)))),
% 12.46/12.64      inference('sup-', [status(thm)], ['70', '71'])).
% 12.46/12.64  thf('73', plain,
% 12.46/12.64      ((((v3_tex_2 @ sk_B_1 @ sk_A)
% 12.46/12.64         | (v1_xboole_0 @ (sk_C @ sk_B_1 @ sk_A))
% 12.46/12.64         | ((sk_B_1) = (sk_C @ sk_B_1 @ sk_A))
% 12.46/12.64         | (v1_xboole_0 @ sk_B_1)
% 12.46/12.64         | (v3_tex_2 @ sk_B_1 @ sk_A))) <= (((v1_zfmisc_1 @ sk_B_1)))),
% 12.46/12.64      inference('sup-', [status(thm)], ['63', '72'])).
% 12.46/12.64  thf('74', plain,
% 12.46/12.64      ((((v1_xboole_0 @ sk_B_1)
% 12.46/12.64         | ((sk_B_1) = (sk_C @ sk_B_1 @ sk_A))
% 12.46/12.64         | (v1_xboole_0 @ (sk_C @ sk_B_1 @ sk_A))
% 12.46/12.64         | (v3_tex_2 @ sk_B_1 @ sk_A))) <= (((v1_zfmisc_1 @ sk_B_1)))),
% 12.46/12.64      inference('simplify', [status(thm)], ['73'])).
% 12.46/12.64  thf('75', plain,
% 12.46/12.64      ((((r1_tarski @ sk_B_1 @ (sk_C @ sk_B_1 @ sk_A))
% 12.46/12.64         | (v3_tex_2 @ sk_B_1 @ sk_A))) <= (((v1_zfmisc_1 @ sk_B_1)))),
% 12.46/12.64      inference('sup-', [status(thm)], ['64', '69'])).
% 12.46/12.64  thf(t34_mcart_1, axiom,
% 12.46/12.64    (![A:$i]:
% 12.46/12.64     ( ~( ( ( A ) != ( k1_xboole_0 ) ) & 
% 12.46/12.64          ( ![B:$i]:
% 12.46/12.64            ( ~( ( r2_hidden @ B @ A ) & 
% 12.46/12.64                 ( ![C:$i,D:$i,E:$i,F:$i]:
% 12.46/12.64                   ( ~( ( ( r2_hidden @ C @ A ) | ( r2_hidden @ D @ A ) ) & 
% 12.46/12.64                        ( ( B ) = ( k4_mcart_1 @ C @ D @ E @ F ) ) ) ) ) ) ) ) ) ))).
% 12.46/12.64  thf('76', plain,
% 12.46/12.64      (![X15 : $i]:
% 12.46/12.64         (((X15) = (k1_xboole_0)) | (r2_hidden @ (sk_B @ X15) @ X15))),
% 12.46/12.64      inference('cnf', [status(esa)], [t34_mcart_1])).
% 12.46/12.64  thf(t36_xboole_1, axiom,
% 12.46/12.64    (![A:$i,B:$i]: ( r1_tarski @ ( k4_xboole_0 @ A @ B ) @ A ))).
% 12.46/12.64  thf('77', plain,
% 12.46/12.64      (![X6 : $i, X7 : $i]: (r1_tarski @ (k4_xboole_0 @ X6 @ X7) @ X6)),
% 12.46/12.64      inference('cnf', [status(esa)], [t36_xboole_1])).
% 12.46/12.64  thf(t3_subset, axiom,
% 12.46/12.64    (![A:$i,B:$i]:
% 12.46/12.64     ( ( m1_subset_1 @ A @ ( k1_zfmisc_1 @ B ) ) <=> ( r1_tarski @ A @ B ) ))).
% 12.46/12.64  thf('78', plain,
% 12.46/12.64      (![X9 : $i, X11 : $i]:
% 12.46/12.64         ((m1_subset_1 @ X9 @ (k1_zfmisc_1 @ X11)) | ~ (r1_tarski @ X9 @ X11))),
% 12.46/12.64      inference('cnf', [status(esa)], [t3_subset])).
% 12.46/12.64  thf('79', plain,
% 12.46/12.64      (![X0 : $i, X1 : $i]:
% 12.46/12.64         (m1_subset_1 @ (k4_xboole_0 @ X0 @ X1) @ (k1_zfmisc_1 @ X0))),
% 12.46/12.64      inference('sup-', [status(thm)], ['77', '78'])).
% 12.46/12.64  thf(t5_subset, axiom,
% 12.46/12.64    (![A:$i,B:$i,C:$i]:
% 12.46/12.64     ( ~( ( r2_hidden @ A @ B ) & ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ C ) ) & 
% 12.46/12.64          ( v1_xboole_0 @ C ) ) ))).
% 12.46/12.64  thf('80', plain,
% 12.46/12.64      (![X12 : $i, X13 : $i, X14 : $i]:
% 12.46/12.64         (~ (r2_hidden @ X12 @ X13)
% 12.46/12.64          | ~ (v1_xboole_0 @ X14)
% 12.46/12.64          | ~ (m1_subset_1 @ X13 @ (k1_zfmisc_1 @ X14)))),
% 12.46/12.64      inference('cnf', [status(esa)], [t5_subset])).
% 12.46/12.64  thf('81', plain,
% 12.46/12.64      (![X0 : $i, X1 : $i, X2 : $i]:
% 12.46/12.64         (~ (v1_xboole_0 @ X0) | ~ (r2_hidden @ X2 @ (k4_xboole_0 @ X0 @ X1)))),
% 12.46/12.64      inference('sup-', [status(thm)], ['79', '80'])).
% 12.46/12.64  thf('82', plain,
% 12.46/12.64      (![X0 : $i, X1 : $i]:
% 12.46/12.64         (((k4_xboole_0 @ X1 @ X0) = (k1_xboole_0)) | ~ (v1_xboole_0 @ X1))),
% 12.46/12.64      inference('sup-', [status(thm)], ['76', '81'])).
% 12.46/12.64  thf(l32_xboole_1, axiom,
% 12.46/12.64    (![A:$i,B:$i]:
% 12.46/12.64     ( ( ( k4_xboole_0 @ A @ B ) = ( k1_xboole_0 ) ) <=> ( r1_tarski @ A @ B ) ))).
% 12.46/12.64  thf('83', plain,
% 12.46/12.64      (![X3 : $i, X4 : $i]:
% 12.46/12.64         ((r1_tarski @ X3 @ X4) | ((k4_xboole_0 @ X3 @ X4) != (k1_xboole_0)))),
% 12.46/12.64      inference('cnf', [status(esa)], [l32_xboole_1])).
% 12.46/12.64  thf('84', plain,
% 12.46/12.64      (![X0 : $i, X1 : $i]:
% 12.46/12.64         (((k1_xboole_0) != (k1_xboole_0))
% 12.46/12.64          | ~ (v1_xboole_0 @ X1)
% 12.46/12.64          | (r1_tarski @ X1 @ X0))),
% 12.46/12.64      inference('sup-', [status(thm)], ['82', '83'])).
% 12.46/12.64  thf('85', plain,
% 12.46/12.64      (![X0 : $i, X1 : $i]: ((r1_tarski @ X1 @ X0) | ~ (v1_xboole_0 @ X1))),
% 12.46/12.64      inference('simplify', [status(thm)], ['84'])).
% 12.46/12.64  thf(d10_xboole_0, axiom,
% 12.46/12.64    (![A:$i,B:$i]:
% 12.46/12.64     ( ( ( A ) = ( B ) ) <=> ( ( r1_tarski @ A @ B ) & ( r1_tarski @ B @ A ) ) ))).
% 12.46/12.64  thf('86', plain,
% 12.46/12.64      (![X0 : $i, X2 : $i]:
% 12.46/12.64         (((X0) = (X2)) | ~ (r1_tarski @ X2 @ X0) | ~ (r1_tarski @ X0 @ X2))),
% 12.46/12.64      inference('cnf', [status(esa)], [d10_xboole_0])).
% 12.46/12.64  thf('87', plain,
% 12.46/12.64      (![X0 : $i, X1 : $i]:
% 12.46/12.64         (~ (v1_xboole_0 @ X1) | ~ (r1_tarski @ X0 @ X1) | ((X0) = (X1)))),
% 12.46/12.64      inference('sup-', [status(thm)], ['85', '86'])).
% 12.46/12.64  thf('88', plain,
% 12.46/12.64      ((((v3_tex_2 @ sk_B_1 @ sk_A)
% 12.46/12.64         | ((sk_B_1) = (sk_C @ sk_B_1 @ sk_A))
% 12.46/12.64         | ~ (v1_xboole_0 @ (sk_C @ sk_B_1 @ sk_A))))
% 12.46/12.64         <= (((v1_zfmisc_1 @ sk_B_1)))),
% 12.46/12.64      inference('sup-', [status(thm)], ['75', '87'])).
% 12.46/12.64  thf('89', plain,
% 12.46/12.64      (((v2_tex_2 @ sk_B_1 @ sk_A)) <= (((v1_zfmisc_1 @ sk_B_1)))),
% 12.46/12.64      inference('clc', [status(thm)], ['35', '36'])).
% 12.46/12.64  thf('90', plain,
% 12.46/12.64      ((m1_subset_1 @ sk_B_1 @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))),
% 12.46/12.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 12.46/12.64  thf('91', plain,
% 12.46/12.64      (![X21 : $i, X22 : $i]:
% 12.46/12.64         (~ (m1_subset_1 @ X21 @ (k1_zfmisc_1 @ (u1_struct_0 @ X22)))
% 12.46/12.64          | ~ (v2_tex_2 @ X21 @ X22)
% 12.46/12.64          | ((X21) != (sk_C @ X21 @ X22))
% 12.46/12.64          | (v3_tex_2 @ X21 @ X22)
% 12.46/12.64          | ~ (l1_pre_topc @ X22))),
% 12.46/12.64      inference('cnf', [status(esa)], [d7_tex_2])).
% 12.46/12.64  thf('92', plain,
% 12.46/12.64      ((~ (l1_pre_topc @ sk_A)
% 12.46/12.64        | (v3_tex_2 @ sk_B_1 @ sk_A)
% 12.46/12.64        | ((sk_B_1) != (sk_C @ sk_B_1 @ sk_A))
% 12.46/12.64        | ~ (v2_tex_2 @ sk_B_1 @ sk_A))),
% 12.46/12.64      inference('sup-', [status(thm)], ['90', '91'])).
% 12.46/12.64  thf('93', plain, ((l1_pre_topc @ sk_A)),
% 12.46/12.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 12.46/12.64  thf('94', plain,
% 12.46/12.64      (((v3_tex_2 @ sk_B_1 @ sk_A)
% 12.46/12.64        | ((sk_B_1) != (sk_C @ sk_B_1 @ sk_A))
% 12.46/12.64        | ~ (v2_tex_2 @ sk_B_1 @ sk_A))),
% 12.46/12.64      inference('demod', [status(thm)], ['92', '93'])).
% 12.46/12.64  thf('95', plain,
% 12.46/12.64      (((((sk_B_1) != (sk_C @ sk_B_1 @ sk_A)) | (v3_tex_2 @ sk_B_1 @ sk_A)))
% 12.46/12.64         <= (((v1_zfmisc_1 @ sk_B_1)))),
% 12.46/12.64      inference('sup-', [status(thm)], ['89', '94'])).
% 12.46/12.64  thf('96', plain,
% 12.46/12.64      (((~ (v1_xboole_0 @ (sk_C @ sk_B_1 @ sk_A)) | (v3_tex_2 @ sk_B_1 @ sk_A)))
% 12.46/12.64         <= (((v1_zfmisc_1 @ sk_B_1)))),
% 12.46/12.64      inference('clc', [status(thm)], ['88', '95'])).
% 12.46/12.64  thf('97', plain,
% 12.46/12.64      ((((v3_tex_2 @ sk_B_1 @ sk_A)
% 12.46/12.64         | ((sk_B_1) = (sk_C @ sk_B_1 @ sk_A))
% 12.46/12.64         | (v1_xboole_0 @ sk_B_1)
% 12.46/12.64         | (v3_tex_2 @ sk_B_1 @ sk_A))) <= (((v1_zfmisc_1 @ sk_B_1)))),
% 12.46/12.64      inference('sup-', [status(thm)], ['74', '96'])).
% 12.46/12.64  thf('98', plain,
% 12.46/12.64      ((((v1_xboole_0 @ sk_B_1)
% 12.46/12.64         | ((sk_B_1) = (sk_C @ sk_B_1 @ sk_A))
% 12.46/12.64         | (v3_tex_2 @ sk_B_1 @ sk_A))) <= (((v1_zfmisc_1 @ sk_B_1)))),
% 12.46/12.64      inference('simplify', [status(thm)], ['97'])).
% 12.46/12.64  thf('99', plain, (~ (v1_xboole_0 @ sk_B_1)),
% 12.46/12.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 12.46/12.64  thf('100', plain,
% 12.46/12.64      ((((v3_tex_2 @ sk_B_1 @ sk_A) | ((sk_B_1) = (sk_C @ sk_B_1 @ sk_A))))
% 12.46/12.64         <= (((v1_zfmisc_1 @ sk_B_1)))),
% 12.46/12.64      inference('clc', [status(thm)], ['98', '99'])).
% 12.46/12.64  thf('101', plain,
% 12.46/12.64      (((((sk_B_1) != (sk_C @ sk_B_1 @ sk_A)) | (v3_tex_2 @ sk_B_1 @ sk_A)))
% 12.46/12.64         <= (((v1_zfmisc_1 @ sk_B_1)))),
% 12.46/12.64      inference('sup-', [status(thm)], ['89', '94'])).
% 12.46/12.64  thf('102', plain,
% 12.46/12.64      (((v3_tex_2 @ sk_B_1 @ sk_A)) <= (((v1_zfmisc_1 @ sk_B_1)))),
% 12.46/12.64      inference('clc', [status(thm)], ['100', '101'])).
% 12.46/12.64  thf('103', plain,
% 12.46/12.64      ((~ (v3_tex_2 @ sk_B_1 @ sk_A)) <= (~ ((v3_tex_2 @ sk_B_1 @ sk_A)))),
% 12.46/12.64      inference('split', [status(esa)], ['0'])).
% 12.46/12.64  thf('104', plain,
% 12.46/12.64      (~ ((v1_zfmisc_1 @ sk_B_1)) | ((v3_tex_2 @ sk_B_1 @ sk_A))),
% 12.46/12.64      inference('sup-', [status(thm)], ['102', '103'])).
% 12.46/12.64  thf('105', plain, ($false),
% 12.46/12.64      inference('sat_resolution*', [status(thm)], ['1', '23', '24', '104'])).
% 12.46/12.64  
% 12.46/12.64  % SZS output end Refutation
% 12.46/12.64  
% 12.46/12.65  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
