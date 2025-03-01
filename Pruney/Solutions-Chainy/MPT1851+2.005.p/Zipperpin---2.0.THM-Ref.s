%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.tTIoluTrAu

% Computer   : n005.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 14:12:00 EST 2020

% Result     : Theorem 0.24s
% Output     : Refutation 0.24s
% Verified   : 
% Statistics : Number of formulae       :  142 ( 972 expanded)
%              Number of leaves         :   25 ( 284 expanded)
%              Depth                    :   19
%              Number of atoms          : 1088 (10879 expanded)
%              Number of equality atoms :   26 ( 353 expanded)
%              Maximal formula depth    :   14 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(m1_pre_topc_type,type,(
    m1_pre_topc: $i > $i > $o )).

thf(v2_tdlat_3_type,type,(
    v2_tdlat_3: $i > $o )).

thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(l1_pre_topc_type,type,(
    l1_pre_topc: $i > $o )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(v1_tops_2_type,type,(
    v1_tops_2: $i > $i > $o )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(k2_tarski_type,type,(
    k2_tarski: $i > $i > $i )).

thf(u1_pre_topc_type,type,(
    u1_pre_topc: $i > $i )).

thf(g1_pre_topc_type,type,(
    g1_pre_topc: $i > $i > $i )).

thf(u1_struct_0_type,type,(
    u1_struct_0: $i > $i )).

thf(t18_tex_2,conjecture,(
    ! [A: $i] :
      ( ( l1_pre_topc @ A )
     => ! [B: $i] :
          ( ( l1_pre_topc @ B )
         => ( ( ( ( g1_pre_topc @ ( u1_struct_0 @ A ) @ ( u1_pre_topc @ A ) )
                = ( g1_pre_topc @ ( u1_struct_0 @ B ) @ ( u1_pre_topc @ B ) ) )
              & ( v2_tdlat_3 @ A ) )
           => ( v2_tdlat_3 @ B ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i] :
        ( ( l1_pre_topc @ A )
       => ! [B: $i] :
            ( ( l1_pre_topc @ B )
           => ( ( ( ( g1_pre_topc @ ( u1_struct_0 @ A ) @ ( u1_pre_topc @ A ) )
                  = ( g1_pre_topc @ ( u1_struct_0 @ B ) @ ( u1_pre_topc @ B ) ) )
                & ( v2_tdlat_3 @ A ) )
             => ( v2_tdlat_3 @ B ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t18_tex_2])).

thf('0',plain,
    ( ( g1_pre_topc @ ( u1_struct_0 @ sk_A ) @ ( u1_pre_topc @ sk_A ) )
    = ( g1_pre_topc @ ( u1_struct_0 @ sk_B ) @ ( u1_pre_topc @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t2_tsep_1,axiom,(
    ! [A: $i] :
      ( ( l1_pre_topc @ A )
     => ( m1_pre_topc @ A @ A ) ) )).

thf('1',plain,(
    ! [X20: $i] :
      ( ( m1_pre_topc @ X20 @ X20 )
      | ~ ( l1_pre_topc @ X20 ) ) ),
    inference(cnf,[status(esa)],[t2_tsep_1])).

thf(t65_pre_topc,axiom,(
    ! [A: $i] :
      ( ( l1_pre_topc @ A )
     => ! [B: $i] :
          ( ( l1_pre_topc @ B )
         => ( ( m1_pre_topc @ A @ B )
          <=> ( m1_pre_topc @ A @ ( g1_pre_topc @ ( u1_struct_0 @ B ) @ ( u1_pre_topc @ B ) ) ) ) ) ) )).

thf('2',plain,(
    ! [X8: $i,X9: $i] :
      ( ~ ( l1_pre_topc @ X8 )
      | ~ ( m1_pre_topc @ X9 @ X8 )
      | ( m1_pre_topc @ X9 @ ( g1_pre_topc @ ( u1_struct_0 @ X8 ) @ ( u1_pre_topc @ X8 ) ) )
      | ~ ( l1_pre_topc @ X9 ) ) ),
    inference(cnf,[status(esa)],[t65_pre_topc])).

thf('3',plain,(
    ! [X0: $i] :
      ( ~ ( l1_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ( m1_pre_topc @ X0 @ ( g1_pre_topc @ ( u1_struct_0 @ X0 ) @ ( u1_pre_topc @ X0 ) ) )
      | ~ ( l1_pre_topc @ X0 ) ) ),
    inference('sup-',[status(thm)],['1','2'])).

thf('4',plain,(
    ! [X0: $i] :
      ( ( m1_pre_topc @ X0 @ ( g1_pre_topc @ ( u1_struct_0 @ X0 ) @ ( u1_pre_topc @ X0 ) ) )
      | ~ ( l1_pre_topc @ X0 ) ) ),
    inference(simplify,[status(thm)],['3'])).

thf('5',plain,
    ( ( m1_pre_topc @ sk_B @ ( g1_pre_topc @ ( u1_struct_0 @ sk_A ) @ ( u1_pre_topc @ sk_A ) ) )
    | ~ ( l1_pre_topc @ sk_B ) ),
    inference('sup+',[status(thm)],['0','4'])).

thf('6',plain,(
    l1_pre_topc @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('7',plain,(
    m1_pre_topc @ sk_B @ ( g1_pre_topc @ ( u1_struct_0 @ sk_A ) @ ( u1_pre_topc @ sk_A ) ) ),
    inference(demod,[status(thm)],['5','6'])).

thf('8',plain,
    ( ( g1_pre_topc @ ( u1_struct_0 @ sk_A ) @ ( u1_pre_topc @ sk_A ) )
    = ( g1_pre_topc @ ( u1_struct_0 @ sk_B ) @ ( u1_pre_topc @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t59_pre_topc,axiom,(
    ! [A: $i] :
      ( ( l1_pre_topc @ A )
     => ! [B: $i] :
          ( ( m1_pre_topc @ B @ ( g1_pre_topc @ ( u1_struct_0 @ A ) @ ( u1_pre_topc @ A ) ) )
         => ( m1_pre_topc @ B @ A ) ) ) )).

thf('9',plain,(
    ! [X6: $i,X7: $i] :
      ( ~ ( m1_pre_topc @ X6 @ ( g1_pre_topc @ ( u1_struct_0 @ X7 ) @ ( u1_pre_topc @ X7 ) ) )
      | ( m1_pre_topc @ X6 @ X7 )
      | ~ ( l1_pre_topc @ X7 ) ) ),
    inference(cnf,[status(esa)],[t59_pre_topc])).

thf('10',plain,(
    ! [X0: $i] :
      ( ~ ( m1_pre_topc @ X0 @ ( g1_pre_topc @ ( u1_struct_0 @ sk_A ) @ ( u1_pre_topc @ sk_A ) ) )
      | ~ ( l1_pre_topc @ sk_B )
      | ( m1_pre_topc @ X0 @ sk_B ) ) ),
    inference('sup-',[status(thm)],['8','9'])).

thf('11',plain,(
    l1_pre_topc @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('12',plain,(
    ! [X0: $i] :
      ( ~ ( m1_pre_topc @ X0 @ ( g1_pre_topc @ ( u1_struct_0 @ sk_A ) @ ( u1_pre_topc @ sk_A ) ) )
      | ( m1_pre_topc @ X0 @ sk_B ) ) ),
    inference(demod,[status(thm)],['10','11'])).

thf('13',plain,(
    m1_pre_topc @ sk_B @ sk_B ),
    inference('sup-',[status(thm)],['7','12'])).

thf(dt_u1_pre_topc,axiom,(
    ! [A: $i] :
      ( ( l1_pre_topc @ A )
     => ( m1_subset_1 @ ( u1_pre_topc @ A ) @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) ) ) )).

thf('14',plain,(
    ! [X5: $i] :
      ( ( m1_subset_1 @ ( u1_pre_topc @ X5 ) @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X5 ) ) ) )
      | ~ ( l1_pre_topc @ X5 ) ) ),
    inference(cnf,[status(esa)],[dt_u1_pre_topc])).

thf(t31_tops_2,axiom,(
    ! [A: $i] :
      ( ( l1_pre_topc @ A )
     => ! [B: $i] :
          ( ( m1_pre_topc @ B @ A )
         => ! [C: $i] :
              ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ B ) ) ) )
             => ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) ) ) ) ) )).

thf('15',plain,(
    ! [X10: $i,X11: $i,X12: $i] :
      ( ~ ( m1_pre_topc @ X10 @ X11 )
      | ( m1_subset_1 @ X12 @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X11 ) ) ) )
      | ~ ( m1_subset_1 @ X12 @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X10 ) ) ) )
      | ~ ( l1_pre_topc @ X11 ) ) ),
    inference(cnf,[status(esa)],[t31_tops_2])).

thf('16',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( l1_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X1 )
      | ( m1_subset_1 @ ( u1_pre_topc @ X0 ) @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X1 ) ) ) )
      | ~ ( m1_pre_topc @ X0 @ X1 ) ) ),
    inference('sup-',[status(thm)],['14','15'])).

thf('17',plain,
    ( ( m1_subset_1 @ ( u1_pre_topc @ sk_B ) @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_B ) ) ) )
    | ~ ( l1_pre_topc @ sk_B )
    | ~ ( l1_pre_topc @ sk_B ) ),
    inference('sup-',[status(thm)],['13','16'])).

thf('18',plain,(
    l1_pre_topc @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('19',plain,(
    l1_pre_topc @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('20',plain,(
    m1_subset_1 @ ( u1_pre_topc @ sk_B ) @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_B ) ) ) ),
    inference(demod,[status(thm)],['17','18','19'])).

thf('21',plain,(
    ! [X0: $i] :
      ( ( m1_pre_topc @ X0 @ ( g1_pre_topc @ ( u1_struct_0 @ X0 ) @ ( u1_pre_topc @ X0 ) ) )
      | ~ ( l1_pre_topc @ X0 ) ) ),
    inference(simplify,[status(thm)],['3'])).

thf('22',plain,(
    ! [X0: $i] :
      ( ~ ( m1_pre_topc @ X0 @ ( g1_pre_topc @ ( u1_struct_0 @ sk_A ) @ ( u1_pre_topc @ sk_A ) ) )
      | ( m1_pre_topc @ X0 @ sk_B ) ) ),
    inference(demod,[status(thm)],['10','11'])).

thf('23',plain,
    ( ~ ( l1_pre_topc @ sk_A )
    | ( m1_pre_topc @ sk_A @ sk_B ) ),
    inference('sup-',[status(thm)],['21','22'])).

thf('24',plain,(
    l1_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('25',plain,(
    m1_pre_topc @ sk_A @ sk_B ),
    inference(demod,[status(thm)],['23','24'])).

thf(t35_borsuk_1,axiom,(
    ! [A: $i] :
      ( ( l1_pre_topc @ A )
     => ! [B: $i] :
          ( ( m1_pre_topc @ B @ A )
         => ( r1_tarski @ ( u1_struct_0 @ B ) @ ( u1_struct_0 @ A ) ) ) ) )).

thf('26',plain,(
    ! [X21: $i,X22: $i] :
      ( ~ ( m1_pre_topc @ X21 @ X22 )
      | ( r1_tarski @ ( u1_struct_0 @ X21 ) @ ( u1_struct_0 @ X22 ) )
      | ~ ( l1_pre_topc @ X22 ) ) ),
    inference(cnf,[status(esa)],[t35_borsuk_1])).

thf('27',plain,
    ( ~ ( l1_pre_topc @ sk_B )
    | ( r1_tarski @ ( u1_struct_0 @ sk_A ) @ ( u1_struct_0 @ sk_B ) ) ),
    inference('sup-',[status(thm)],['25','26'])).

thf('28',plain,(
    l1_pre_topc @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('29',plain,(
    r1_tarski @ ( u1_struct_0 @ sk_A ) @ ( u1_struct_0 @ sk_B ) ),
    inference(demod,[status(thm)],['27','28'])).

thf(d10_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ( A = B )
    <=> ( ( r1_tarski @ A @ B )
        & ( r1_tarski @ B @ A ) ) ) )).

thf('30',plain,(
    ! [X0: $i,X2: $i] :
      ( ( X0 = X2 )
      | ~ ( r1_tarski @ X2 @ X0 )
      | ~ ( r1_tarski @ X0 @ X2 ) ) ),
    inference(cnf,[status(esa)],[d10_xboole_0])).

thf('31',plain,
    ( ~ ( r1_tarski @ ( u1_struct_0 @ sk_B ) @ ( u1_struct_0 @ sk_A ) )
    | ( ( u1_struct_0 @ sk_B )
      = ( u1_struct_0 @ sk_A ) ) ),
    inference('sup-',[status(thm)],['29','30'])).

thf('32',plain,(
    m1_pre_topc @ sk_B @ ( g1_pre_topc @ ( u1_struct_0 @ sk_A ) @ ( u1_pre_topc @ sk_A ) ) ),
    inference(demod,[status(thm)],['5','6'])).

thf('33',plain,(
    ! [X6: $i,X7: $i] :
      ( ~ ( m1_pre_topc @ X6 @ ( g1_pre_topc @ ( u1_struct_0 @ X7 ) @ ( u1_pre_topc @ X7 ) ) )
      | ( m1_pre_topc @ X6 @ X7 )
      | ~ ( l1_pre_topc @ X7 ) ) ),
    inference(cnf,[status(esa)],[t59_pre_topc])).

thf('34',plain,
    ( ~ ( l1_pre_topc @ sk_A )
    | ( m1_pre_topc @ sk_B @ sk_A ) ),
    inference('sup-',[status(thm)],['32','33'])).

thf('35',plain,(
    l1_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('36',plain,(
    m1_pre_topc @ sk_B @ sk_A ),
    inference(demod,[status(thm)],['34','35'])).

thf('37',plain,(
    ! [X21: $i,X22: $i] :
      ( ~ ( m1_pre_topc @ X21 @ X22 )
      | ( r1_tarski @ ( u1_struct_0 @ X21 ) @ ( u1_struct_0 @ X22 ) )
      | ~ ( l1_pre_topc @ X22 ) ) ),
    inference(cnf,[status(esa)],[t35_borsuk_1])).

thf('38',plain,
    ( ~ ( l1_pre_topc @ sk_A )
    | ( r1_tarski @ ( u1_struct_0 @ sk_B ) @ ( u1_struct_0 @ sk_A ) ) ),
    inference('sup-',[status(thm)],['36','37'])).

thf('39',plain,(
    l1_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('40',plain,(
    r1_tarski @ ( u1_struct_0 @ sk_B ) @ ( u1_struct_0 @ sk_A ) ),
    inference(demod,[status(thm)],['38','39'])).

thf('41',plain,
    ( ( u1_struct_0 @ sk_B )
    = ( u1_struct_0 @ sk_A ) ),
    inference(demod,[status(thm)],['31','40'])).

thf('42',plain,(
    m1_subset_1 @ ( u1_pre_topc @ sk_B ) @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ) ),
    inference(demod,[status(thm)],['20','41'])).

thf(t78_tops_2,axiom,(
    ! [A: $i] :
      ( ( l1_pre_topc @ A )
     => ! [B: $i] :
          ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) )
         => ( ( v1_tops_2 @ B @ A )
          <=> ( r1_tarski @ B @ ( u1_pre_topc @ A ) ) ) ) ) )).

thf('43',plain,(
    ! [X17: $i,X18: $i] :
      ( ~ ( m1_subset_1 @ X17 @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X18 ) ) ) )
      | ~ ( v1_tops_2 @ X17 @ X18 )
      | ( r1_tarski @ X17 @ ( u1_pre_topc @ X18 ) )
      | ~ ( l1_pre_topc @ X18 ) ) ),
    inference(cnf,[status(esa)],[t78_tops_2])).

thf('44',plain,
    ( ~ ( l1_pre_topc @ sk_A )
    | ( r1_tarski @ ( u1_pre_topc @ sk_B ) @ ( u1_pre_topc @ sk_A ) )
    | ~ ( v1_tops_2 @ ( u1_pre_topc @ sk_B ) @ sk_A ) ),
    inference('sup-',[status(thm)],['42','43'])).

thf('45',plain,(
    l1_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('46',plain,
    ( ( r1_tarski @ ( u1_pre_topc @ sk_B ) @ ( u1_pre_topc @ sk_A ) )
    | ~ ( v1_tops_2 @ ( u1_pre_topc @ sk_B ) @ sk_A ) ),
    inference(demod,[status(thm)],['44','45'])).

thf('47',plain,(
    ! [X5: $i] :
      ( ( m1_subset_1 @ ( u1_pre_topc @ X5 ) @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X5 ) ) ) )
      | ~ ( l1_pre_topc @ X5 ) ) ),
    inference(cnf,[status(esa)],[dt_u1_pre_topc])).

thf('48',plain,(
    m1_subset_1 @ ( u1_pre_topc @ sk_B ) @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ) ),
    inference(demod,[status(thm)],['20','41'])).

thf(t35_tops_2,axiom,(
    ! [A: $i] :
      ( ( l1_pre_topc @ A )
     => ! [B: $i] :
          ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) )
         => ! [C: $i] :
              ( ( m1_pre_topc @ C @ A )
             => ( ( v1_tops_2 @ B @ A )
               => ! [D: $i] :
                    ( ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ C ) ) ) )
                   => ( ( D = B )
                     => ( v1_tops_2 @ D @ C ) ) ) ) ) ) ) )).

thf('49',plain,(
    ! [X13: $i,X14: $i,X15: $i,X16: $i] :
      ( ~ ( m1_subset_1 @ X13 @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X14 ) ) ) )
      | ~ ( v1_tops_2 @ X13 @ X14 )
      | ~ ( m1_subset_1 @ X15 @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X16 ) ) ) )
      | ( v1_tops_2 @ X15 @ X16 )
      | ( X15 != X13 )
      | ~ ( m1_pre_topc @ X16 @ X14 )
      | ~ ( l1_pre_topc @ X14 ) ) ),
    inference(cnf,[status(esa)],[t35_tops_2])).

thf('50',plain,(
    ! [X13: $i,X14: $i,X16: $i] :
      ( ~ ( l1_pre_topc @ X14 )
      | ~ ( m1_pre_topc @ X16 @ X14 )
      | ( v1_tops_2 @ X13 @ X16 )
      | ~ ( m1_subset_1 @ X13 @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X16 ) ) ) )
      | ~ ( v1_tops_2 @ X13 @ X14 )
      | ~ ( m1_subset_1 @ X13 @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X14 ) ) ) ) ) ),
    inference(simplify,[status(thm)],['49'])).

thf('51',plain,(
    ! [X0: $i] :
      ( ~ ( m1_subset_1 @ ( u1_pre_topc @ sk_B ) @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X0 ) ) ) )
      | ~ ( v1_tops_2 @ ( u1_pre_topc @ sk_B ) @ X0 )
      | ( v1_tops_2 @ ( u1_pre_topc @ sk_B ) @ sk_A )
      | ~ ( m1_pre_topc @ sk_A @ X0 )
      | ~ ( l1_pre_topc @ X0 ) ) ),
    inference('sup-',[status(thm)],['48','50'])).

thf('52',plain,
    ( ~ ( l1_pre_topc @ sk_B )
    | ~ ( l1_pre_topc @ sk_B )
    | ~ ( m1_pre_topc @ sk_A @ sk_B )
    | ( v1_tops_2 @ ( u1_pre_topc @ sk_B ) @ sk_A )
    | ~ ( v1_tops_2 @ ( u1_pre_topc @ sk_B ) @ sk_B ) ),
    inference('sup-',[status(thm)],['47','51'])).

thf('53',plain,(
    l1_pre_topc @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('54',plain,(
    l1_pre_topc @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('55',plain,(
    m1_pre_topc @ sk_A @ sk_B ),
    inference(demod,[status(thm)],['23','24'])).

thf('56',plain,(
    m1_subset_1 @ ( u1_pre_topc @ sk_B ) @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ) ),
    inference(demod,[status(thm)],['20','41'])).

thf('57',plain,
    ( ( u1_struct_0 @ sk_B )
    = ( u1_struct_0 @ sk_A ) ),
    inference(demod,[status(thm)],['31','40'])).

thf('58',plain,(
    ! [X17: $i,X18: $i] :
      ( ~ ( m1_subset_1 @ X17 @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X18 ) ) ) )
      | ~ ( r1_tarski @ X17 @ ( u1_pre_topc @ X18 ) )
      | ( v1_tops_2 @ X17 @ X18 )
      | ~ ( l1_pre_topc @ X18 ) ) ),
    inference(cnf,[status(esa)],[t78_tops_2])).

thf('59',plain,(
    ! [X0: $i] :
      ( ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ) )
      | ~ ( l1_pre_topc @ sk_B )
      | ( v1_tops_2 @ X0 @ sk_B )
      | ~ ( r1_tarski @ X0 @ ( u1_pre_topc @ sk_B ) ) ) ),
    inference('sup-',[status(thm)],['57','58'])).

thf('60',plain,(
    l1_pre_topc @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('61',plain,(
    ! [X0: $i] :
      ( ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ) )
      | ( v1_tops_2 @ X0 @ sk_B )
      | ~ ( r1_tarski @ X0 @ ( u1_pre_topc @ sk_B ) ) ) ),
    inference(demod,[status(thm)],['59','60'])).

thf('62',plain,
    ( ~ ( r1_tarski @ ( u1_pre_topc @ sk_B ) @ ( u1_pre_topc @ sk_B ) )
    | ( v1_tops_2 @ ( u1_pre_topc @ sk_B ) @ sk_B ) ),
    inference('sup-',[status(thm)],['56','61'])).

thf('63',plain,(
    ! [X0: $i,X1: $i] :
      ( ( r1_tarski @ X0 @ X1 )
      | ( X0 != X1 ) ) ),
    inference(cnf,[status(esa)],[d10_xboole_0])).

thf('64',plain,(
    ! [X1: $i] :
      ( r1_tarski @ X1 @ X1 ) ),
    inference(simplify,[status(thm)],['63'])).

thf('65',plain,(
    v1_tops_2 @ ( u1_pre_topc @ sk_B ) @ sk_B ),
    inference(demod,[status(thm)],['62','64'])).

thf('66',plain,(
    v1_tops_2 @ ( u1_pre_topc @ sk_B ) @ sk_A ),
    inference(demod,[status(thm)],['52','53','54','55','65'])).

thf('67',plain,(
    r1_tarski @ ( u1_pre_topc @ sk_B ) @ ( u1_pre_topc @ sk_A ) ),
    inference(demod,[status(thm)],['46','66'])).

thf('68',plain,(
    ! [X0: $i,X2: $i] :
      ( ( X0 = X2 )
      | ~ ( r1_tarski @ X2 @ X0 )
      | ~ ( r1_tarski @ X0 @ X2 ) ) ),
    inference(cnf,[status(esa)],[d10_xboole_0])).

thf('69',plain,
    ( ~ ( r1_tarski @ ( u1_pre_topc @ sk_A ) @ ( u1_pre_topc @ sk_B ) )
    | ( ( u1_pre_topc @ sk_A )
      = ( u1_pre_topc @ sk_B ) ) ),
    inference('sup-',[status(thm)],['67','68'])).

thf(d2_tdlat_3,axiom,(
    ! [A: $i] :
      ( ( l1_pre_topc @ A )
     => ( ( v2_tdlat_3 @ A )
      <=> ( ( u1_pre_topc @ A )
          = ( k2_tarski @ k1_xboole_0 @ ( u1_struct_0 @ A ) ) ) ) ) )).

thf('70',plain,(
    ! [X23: $i] :
      ( ~ ( v2_tdlat_3 @ X23 )
      | ( ( u1_pre_topc @ X23 )
        = ( k2_tarski @ k1_xboole_0 @ ( u1_struct_0 @ X23 ) ) )
      | ~ ( l1_pre_topc @ X23 ) ) ),
    inference(cnf,[status(esa)],[d2_tdlat_3])).

thf('71',plain,
    ( ( u1_struct_0 @ sk_B )
    = ( u1_struct_0 @ sk_A ) ),
    inference(demod,[status(thm)],['31','40'])).

thf('72',plain,(
    ! [X23: $i] :
      ( ( ( u1_pre_topc @ X23 )
       != ( k2_tarski @ k1_xboole_0 @ ( u1_struct_0 @ X23 ) ) )
      | ( v2_tdlat_3 @ X23 )
      | ~ ( l1_pre_topc @ X23 ) ) ),
    inference(cnf,[status(esa)],[d2_tdlat_3])).

thf('73',plain,
    ( ( ( u1_pre_topc @ sk_B )
     != ( k2_tarski @ k1_xboole_0 @ ( u1_struct_0 @ sk_A ) ) )
    | ~ ( l1_pre_topc @ sk_B )
    | ( v2_tdlat_3 @ sk_B ) ),
    inference('sup-',[status(thm)],['71','72'])).

thf('74',plain,(
    l1_pre_topc @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('75',plain,
    ( ( ( u1_pre_topc @ sk_B )
     != ( k2_tarski @ k1_xboole_0 @ ( u1_struct_0 @ sk_A ) ) )
    | ( v2_tdlat_3 @ sk_B ) ),
    inference(demod,[status(thm)],['73','74'])).

thf('76',plain,(
    ~ ( v2_tdlat_3 @ sk_B ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('77',plain,(
    ( u1_pre_topc @ sk_B )
 != ( k2_tarski @ k1_xboole_0 @ ( u1_struct_0 @ sk_A ) ) ),
    inference(clc,[status(thm)],['75','76'])).

thf('78',plain,
    ( ( ( u1_pre_topc @ sk_B )
     != ( u1_pre_topc @ sk_A ) )
    | ~ ( l1_pre_topc @ sk_A )
    | ~ ( v2_tdlat_3 @ sk_A ) ),
    inference('sup-',[status(thm)],['70','77'])).

thf('79',plain,(
    l1_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('80',plain,(
    v2_tdlat_3 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('81',plain,(
    ( u1_pre_topc @ sk_B )
 != ( u1_pre_topc @ sk_A ) ),
    inference(demod,[status(thm)],['78','79','80'])).

thf('82',plain,(
    ~ ( r1_tarski @ ( u1_pre_topc @ sk_A ) @ ( u1_pre_topc @ sk_B ) ) ),
    inference('simplify_reflect-',[status(thm)],['69','81'])).

thf('83',plain,(
    m1_pre_topc @ sk_A @ sk_B ),
    inference(demod,[status(thm)],['23','24'])).

thf('84',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( l1_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X1 )
      | ( m1_subset_1 @ ( u1_pre_topc @ X0 ) @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X1 ) ) ) )
      | ~ ( m1_pre_topc @ X0 @ X1 ) ) ),
    inference('sup-',[status(thm)],['14','15'])).

thf('85',plain,
    ( ( m1_subset_1 @ ( u1_pre_topc @ sk_A ) @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_B ) ) ) )
    | ~ ( l1_pre_topc @ sk_B )
    | ~ ( l1_pre_topc @ sk_A ) ),
    inference('sup-',[status(thm)],['83','84'])).

thf('86',plain,(
    l1_pre_topc @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('87',plain,(
    l1_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('88',plain,(
    m1_subset_1 @ ( u1_pre_topc @ sk_A ) @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_B ) ) ) ),
    inference(demod,[status(thm)],['85','86','87'])).

thf('89',plain,
    ( ( u1_struct_0 @ sk_B )
    = ( u1_struct_0 @ sk_A ) ),
    inference(demod,[status(thm)],['31','40'])).

thf('90',plain,(
    m1_subset_1 @ ( u1_pre_topc @ sk_A ) @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ) ),
    inference(demod,[status(thm)],['88','89'])).

thf('91',plain,
    ( ( u1_struct_0 @ sk_B )
    = ( u1_struct_0 @ sk_A ) ),
    inference(demod,[status(thm)],['31','40'])).

thf('92',plain,(
    ! [X17: $i,X18: $i] :
      ( ~ ( m1_subset_1 @ X17 @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X18 ) ) ) )
      | ~ ( v1_tops_2 @ X17 @ X18 )
      | ( r1_tarski @ X17 @ ( u1_pre_topc @ X18 ) )
      | ~ ( l1_pre_topc @ X18 ) ) ),
    inference(cnf,[status(esa)],[t78_tops_2])).

thf('93',plain,(
    ! [X0: $i] :
      ( ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ) )
      | ~ ( l1_pre_topc @ sk_B )
      | ( r1_tarski @ X0 @ ( u1_pre_topc @ sk_B ) )
      | ~ ( v1_tops_2 @ X0 @ sk_B ) ) ),
    inference('sup-',[status(thm)],['91','92'])).

thf('94',plain,(
    l1_pre_topc @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('95',plain,(
    ! [X0: $i] :
      ( ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ) )
      | ( r1_tarski @ X0 @ ( u1_pre_topc @ sk_B ) )
      | ~ ( v1_tops_2 @ X0 @ sk_B ) ) ),
    inference(demod,[status(thm)],['93','94'])).

thf('96',plain,
    ( ~ ( v1_tops_2 @ ( u1_pre_topc @ sk_A ) @ sk_B )
    | ( r1_tarski @ ( u1_pre_topc @ sk_A ) @ ( u1_pre_topc @ sk_B ) ) ),
    inference('sup-',[status(thm)],['90','95'])).

thf('97',plain,(
    ! [X5: $i] :
      ( ( m1_subset_1 @ ( u1_pre_topc @ X5 ) @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X5 ) ) ) )
      | ~ ( l1_pre_topc @ X5 ) ) ),
    inference(cnf,[status(esa)],[dt_u1_pre_topc])).

thf('98',plain,(
    m1_subset_1 @ ( u1_pre_topc @ sk_A ) @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ) ),
    inference(demod,[status(thm)],['88','89'])).

thf('99',plain,
    ( ( u1_struct_0 @ sk_B )
    = ( u1_struct_0 @ sk_A ) ),
    inference(demod,[status(thm)],['31','40'])).

thf('100',plain,(
    ! [X13: $i,X14: $i,X16: $i] :
      ( ~ ( l1_pre_topc @ X14 )
      | ~ ( m1_pre_topc @ X16 @ X14 )
      | ( v1_tops_2 @ X13 @ X16 )
      | ~ ( m1_subset_1 @ X13 @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X16 ) ) ) )
      | ~ ( v1_tops_2 @ X13 @ X14 )
      | ~ ( m1_subset_1 @ X13 @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X14 ) ) ) ) ) ),
    inference(simplify,[status(thm)],['49'])).

thf('101',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ) )
      | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X1 ) ) ) )
      | ~ ( v1_tops_2 @ X0 @ X1 )
      | ( v1_tops_2 @ X0 @ sk_B )
      | ~ ( m1_pre_topc @ sk_B @ X1 )
      | ~ ( l1_pre_topc @ X1 ) ) ),
    inference('sup-',[status(thm)],['99','100'])).

thf('102',plain,(
    ! [X0: $i] :
      ( ~ ( l1_pre_topc @ X0 )
      | ~ ( m1_pre_topc @ sk_B @ X0 )
      | ( v1_tops_2 @ ( u1_pre_topc @ sk_A ) @ sk_B )
      | ~ ( v1_tops_2 @ ( u1_pre_topc @ sk_A ) @ X0 )
      | ~ ( m1_subset_1 @ ( u1_pre_topc @ sk_A ) @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X0 ) ) ) ) ) ),
    inference('sup-',[status(thm)],['98','101'])).

thf('103',plain,
    ( ~ ( l1_pre_topc @ sk_A )
    | ~ ( v1_tops_2 @ ( u1_pre_topc @ sk_A ) @ sk_A )
    | ( v1_tops_2 @ ( u1_pre_topc @ sk_A ) @ sk_B )
    | ~ ( m1_pre_topc @ sk_B @ sk_A )
    | ~ ( l1_pre_topc @ sk_A ) ),
    inference('sup-',[status(thm)],['97','102'])).

thf('104',plain,(
    l1_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('105',plain,(
    m1_subset_1 @ ( u1_pre_topc @ sk_A ) @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) ) ),
    inference(demod,[status(thm)],['88','89'])).

thf('106',plain,(
    ! [X17: $i,X18: $i] :
      ( ~ ( m1_subset_1 @ X17 @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X18 ) ) ) )
      | ~ ( r1_tarski @ X17 @ ( u1_pre_topc @ X18 ) )
      | ( v1_tops_2 @ X17 @ X18 )
      | ~ ( l1_pre_topc @ X18 ) ) ),
    inference(cnf,[status(esa)],[t78_tops_2])).

thf('107',plain,
    ( ~ ( l1_pre_topc @ sk_A )
    | ( v1_tops_2 @ ( u1_pre_topc @ sk_A ) @ sk_A )
    | ~ ( r1_tarski @ ( u1_pre_topc @ sk_A ) @ ( u1_pre_topc @ sk_A ) ) ),
    inference('sup-',[status(thm)],['105','106'])).

thf('108',plain,(
    l1_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('109',plain,(
    ! [X1: $i] :
      ( r1_tarski @ X1 @ X1 ) ),
    inference(simplify,[status(thm)],['63'])).

thf('110',plain,(
    v1_tops_2 @ ( u1_pre_topc @ sk_A ) @ sk_A ),
    inference(demod,[status(thm)],['107','108','109'])).

thf('111',plain,(
    m1_pre_topc @ sk_B @ sk_A ),
    inference(demod,[status(thm)],['34','35'])).

thf('112',plain,(
    l1_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('113',plain,(
    v1_tops_2 @ ( u1_pre_topc @ sk_A ) @ sk_B ),
    inference(demod,[status(thm)],['103','104','110','111','112'])).

thf('114',plain,(
    r1_tarski @ ( u1_pre_topc @ sk_A ) @ ( u1_pre_topc @ sk_B ) ),
    inference(demod,[status(thm)],['96','113'])).

thf('115',plain,(
    $false ),
    inference(demod,[status(thm)],['82','114'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.14  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.15  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.tTIoluTrAu
% 0.15/0.37  % Computer   : n005.cluster.edu
% 0.15/0.37  % Model      : x86_64 x86_64
% 0.15/0.37  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.15/0.37  % Memory     : 8042.1875MB
% 0.15/0.37  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.15/0.38  % CPULimit   : 60
% 0.15/0.38  % DateTime   : Tue Dec  1 15:10:18 EST 2020
% 0.15/0.38  % CPUTime    : 
% 0.15/0.38  % Running portfolio for 600 s
% 0.15/0.38  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.15/0.38  % Number of cores: 8
% 0.15/0.38  % Python version: Python 3.6.8
% 0.15/0.38  % Running in FO mode
% 0.24/0.47  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.24/0.47  % Solved by: fo/fo7.sh
% 0.24/0.47  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.24/0.47  % done 107 iterations in 0.030s
% 0.24/0.47  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.24/0.47  % SZS output start Refutation
% 0.24/0.47  thf(m1_pre_topc_type, type, m1_pre_topc: $i > $i > $o).
% 0.24/0.47  thf(v2_tdlat_3_type, type, v2_tdlat_3: $i > $o).
% 0.24/0.47  thf(k1_zfmisc_1_type, type, k1_zfmisc_1: $i > $i).
% 0.24/0.47  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.24/0.47  thf(m1_subset_1_type, type, m1_subset_1: $i > $i > $o).
% 0.24/0.47  thf(l1_pre_topc_type, type, l1_pre_topc: $i > $o).
% 0.24/0.47  thf(sk_B_type, type, sk_B: $i).
% 0.24/0.47  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 0.24/0.47  thf(v1_tops_2_type, type, v1_tops_2: $i > $i > $o).
% 0.24/0.47  thf(sk_A_type, type, sk_A: $i).
% 0.24/0.47  thf(k2_tarski_type, type, k2_tarski: $i > $i > $i).
% 0.24/0.47  thf(u1_pre_topc_type, type, u1_pre_topc: $i > $i).
% 0.24/0.47  thf(g1_pre_topc_type, type, g1_pre_topc: $i > $i > $i).
% 0.24/0.47  thf(u1_struct_0_type, type, u1_struct_0: $i > $i).
% 0.24/0.47  thf(t18_tex_2, conjecture,
% 0.24/0.47    (![A:$i]:
% 0.24/0.47     ( ( l1_pre_topc @ A ) =>
% 0.24/0.47       ( ![B:$i]:
% 0.24/0.47         ( ( l1_pre_topc @ B ) =>
% 0.24/0.47           ( ( ( ( g1_pre_topc @ ( u1_struct_0 @ A ) @ ( u1_pre_topc @ A ) ) =
% 0.24/0.47                 ( g1_pre_topc @ ( u1_struct_0 @ B ) @ ( u1_pre_topc @ B ) ) ) & 
% 0.24/0.47               ( v2_tdlat_3 @ A ) ) =>
% 0.24/0.47             ( v2_tdlat_3 @ B ) ) ) ) ))).
% 0.24/0.47  thf(zf_stmt_0, negated_conjecture,
% 0.24/0.47    (~( ![A:$i]:
% 0.24/0.47        ( ( l1_pre_topc @ A ) =>
% 0.24/0.47          ( ![B:$i]:
% 0.24/0.47            ( ( l1_pre_topc @ B ) =>
% 0.24/0.47              ( ( ( ( g1_pre_topc @ ( u1_struct_0 @ A ) @ ( u1_pre_topc @ A ) ) =
% 0.24/0.47                    ( g1_pre_topc @ ( u1_struct_0 @ B ) @ ( u1_pre_topc @ B ) ) ) & 
% 0.24/0.47                  ( v2_tdlat_3 @ A ) ) =>
% 0.24/0.47                ( v2_tdlat_3 @ B ) ) ) ) ) )),
% 0.24/0.47    inference('cnf.neg', [status(esa)], [t18_tex_2])).
% 0.24/0.47  thf('0', plain,
% 0.24/0.47      (((g1_pre_topc @ (u1_struct_0 @ sk_A) @ (u1_pre_topc @ sk_A))
% 0.24/0.47         = (g1_pre_topc @ (u1_struct_0 @ sk_B) @ (u1_pre_topc @ sk_B)))),
% 0.24/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.24/0.47  thf(t2_tsep_1, axiom,
% 0.24/0.47    (![A:$i]: ( ( l1_pre_topc @ A ) => ( m1_pre_topc @ A @ A ) ))).
% 0.24/0.47  thf('1', plain,
% 0.24/0.47      (![X20 : $i]: ((m1_pre_topc @ X20 @ X20) | ~ (l1_pre_topc @ X20))),
% 0.24/0.47      inference('cnf', [status(esa)], [t2_tsep_1])).
% 0.24/0.47  thf(t65_pre_topc, axiom,
% 0.24/0.47    (![A:$i]:
% 0.24/0.47     ( ( l1_pre_topc @ A ) =>
% 0.24/0.47       ( ![B:$i]:
% 0.24/0.47         ( ( l1_pre_topc @ B ) =>
% 0.24/0.47           ( ( m1_pre_topc @ A @ B ) <=>
% 0.24/0.47             ( m1_pre_topc @
% 0.24/0.47               A @ ( g1_pre_topc @ ( u1_struct_0 @ B ) @ ( u1_pre_topc @ B ) ) ) ) ) ) ))).
% 0.24/0.47  thf('2', plain,
% 0.24/0.47      (![X8 : $i, X9 : $i]:
% 0.24/0.47         (~ (l1_pre_topc @ X8)
% 0.24/0.47          | ~ (m1_pre_topc @ X9 @ X8)
% 0.24/0.47          | (m1_pre_topc @ X9 @ 
% 0.24/0.47             (g1_pre_topc @ (u1_struct_0 @ X8) @ (u1_pre_topc @ X8)))
% 0.24/0.47          | ~ (l1_pre_topc @ X9))),
% 0.24/0.47      inference('cnf', [status(esa)], [t65_pre_topc])).
% 0.24/0.47  thf('3', plain,
% 0.24/0.47      (![X0 : $i]:
% 0.24/0.47         (~ (l1_pre_topc @ X0)
% 0.24/0.47          | ~ (l1_pre_topc @ X0)
% 0.24/0.47          | (m1_pre_topc @ X0 @ 
% 0.24/0.47             (g1_pre_topc @ (u1_struct_0 @ X0) @ (u1_pre_topc @ X0)))
% 0.24/0.47          | ~ (l1_pre_topc @ X0))),
% 0.24/0.47      inference('sup-', [status(thm)], ['1', '2'])).
% 0.24/0.47  thf('4', plain,
% 0.24/0.47      (![X0 : $i]:
% 0.24/0.47         ((m1_pre_topc @ X0 @ 
% 0.24/0.47           (g1_pre_topc @ (u1_struct_0 @ X0) @ (u1_pre_topc @ X0)))
% 0.24/0.47          | ~ (l1_pre_topc @ X0))),
% 0.24/0.47      inference('simplify', [status(thm)], ['3'])).
% 0.24/0.47  thf('5', plain,
% 0.24/0.47      (((m1_pre_topc @ sk_B @ 
% 0.24/0.47         (g1_pre_topc @ (u1_struct_0 @ sk_A) @ (u1_pre_topc @ sk_A)))
% 0.24/0.47        | ~ (l1_pre_topc @ sk_B))),
% 0.24/0.47      inference('sup+', [status(thm)], ['0', '4'])).
% 0.24/0.47  thf('6', plain, ((l1_pre_topc @ sk_B)),
% 0.24/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.24/0.47  thf('7', plain,
% 0.24/0.47      ((m1_pre_topc @ sk_B @ 
% 0.24/0.47        (g1_pre_topc @ (u1_struct_0 @ sk_A) @ (u1_pre_topc @ sk_A)))),
% 0.24/0.47      inference('demod', [status(thm)], ['5', '6'])).
% 0.24/0.47  thf('8', plain,
% 0.24/0.47      (((g1_pre_topc @ (u1_struct_0 @ sk_A) @ (u1_pre_topc @ sk_A))
% 0.24/0.47         = (g1_pre_topc @ (u1_struct_0 @ sk_B) @ (u1_pre_topc @ sk_B)))),
% 0.24/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.24/0.47  thf(t59_pre_topc, axiom,
% 0.24/0.47    (![A:$i]:
% 0.24/0.47     ( ( l1_pre_topc @ A ) =>
% 0.24/0.47       ( ![B:$i]:
% 0.24/0.47         ( ( m1_pre_topc @
% 0.24/0.47             B @ ( g1_pre_topc @ ( u1_struct_0 @ A ) @ ( u1_pre_topc @ A ) ) ) =>
% 0.24/0.47           ( m1_pre_topc @ B @ A ) ) ) ))).
% 0.24/0.47  thf('9', plain,
% 0.24/0.47      (![X6 : $i, X7 : $i]:
% 0.24/0.47         (~ (m1_pre_topc @ X6 @ 
% 0.24/0.47             (g1_pre_topc @ (u1_struct_0 @ X7) @ (u1_pre_topc @ X7)))
% 0.24/0.47          | (m1_pre_topc @ X6 @ X7)
% 0.24/0.47          | ~ (l1_pre_topc @ X7))),
% 0.24/0.47      inference('cnf', [status(esa)], [t59_pre_topc])).
% 0.24/0.47  thf('10', plain,
% 0.24/0.47      (![X0 : $i]:
% 0.24/0.47         (~ (m1_pre_topc @ X0 @ 
% 0.24/0.47             (g1_pre_topc @ (u1_struct_0 @ sk_A) @ (u1_pre_topc @ sk_A)))
% 0.24/0.47          | ~ (l1_pre_topc @ sk_B)
% 0.24/0.47          | (m1_pre_topc @ X0 @ sk_B))),
% 0.24/0.47      inference('sup-', [status(thm)], ['8', '9'])).
% 0.24/0.47  thf('11', plain, ((l1_pre_topc @ sk_B)),
% 0.24/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.24/0.47  thf('12', plain,
% 0.24/0.47      (![X0 : $i]:
% 0.24/0.47         (~ (m1_pre_topc @ X0 @ 
% 0.24/0.47             (g1_pre_topc @ (u1_struct_0 @ sk_A) @ (u1_pre_topc @ sk_A)))
% 0.24/0.47          | (m1_pre_topc @ X0 @ sk_B))),
% 0.24/0.47      inference('demod', [status(thm)], ['10', '11'])).
% 0.24/0.47  thf('13', plain, ((m1_pre_topc @ sk_B @ sk_B)),
% 0.24/0.47      inference('sup-', [status(thm)], ['7', '12'])).
% 0.24/0.47  thf(dt_u1_pre_topc, axiom,
% 0.24/0.47    (![A:$i]:
% 0.24/0.47     ( ( l1_pre_topc @ A ) =>
% 0.24/0.47       ( m1_subset_1 @
% 0.24/0.47         ( u1_pre_topc @ A ) @ 
% 0.24/0.47         ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) ) ))).
% 0.24/0.47  thf('14', plain,
% 0.24/0.47      (![X5 : $i]:
% 0.24/0.47         ((m1_subset_1 @ (u1_pre_topc @ X5) @ 
% 0.24/0.47           (k1_zfmisc_1 @ (k1_zfmisc_1 @ (u1_struct_0 @ X5))))
% 0.24/0.47          | ~ (l1_pre_topc @ X5))),
% 0.24/0.47      inference('cnf', [status(esa)], [dt_u1_pre_topc])).
% 0.24/0.47  thf(t31_tops_2, axiom,
% 0.24/0.47    (![A:$i]:
% 0.24/0.47     ( ( l1_pre_topc @ A ) =>
% 0.24/0.47       ( ![B:$i]:
% 0.24/0.47         ( ( m1_pre_topc @ B @ A ) =>
% 0.24/0.47           ( ![C:$i]:
% 0.24/0.47             ( ( m1_subset_1 @
% 0.24/0.47                 C @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ B ) ) ) ) =>
% 0.24/0.47               ( m1_subset_1 @
% 0.24/0.47                 C @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) ) ) ) ) ) ))).
% 0.24/0.47  thf('15', plain,
% 0.24/0.47      (![X10 : $i, X11 : $i, X12 : $i]:
% 0.24/0.47         (~ (m1_pre_topc @ X10 @ X11)
% 0.24/0.47          | (m1_subset_1 @ X12 @ 
% 0.24/0.47             (k1_zfmisc_1 @ (k1_zfmisc_1 @ (u1_struct_0 @ X11))))
% 0.24/0.47          | ~ (m1_subset_1 @ X12 @ 
% 0.24/0.47               (k1_zfmisc_1 @ (k1_zfmisc_1 @ (u1_struct_0 @ X10))))
% 0.24/0.47          | ~ (l1_pre_topc @ X11))),
% 0.24/0.47      inference('cnf', [status(esa)], [t31_tops_2])).
% 0.24/0.47  thf('16', plain,
% 0.24/0.47      (![X0 : $i, X1 : $i]:
% 0.24/0.47         (~ (l1_pre_topc @ X0)
% 0.24/0.47          | ~ (l1_pre_topc @ X1)
% 0.24/0.47          | (m1_subset_1 @ (u1_pre_topc @ X0) @ 
% 0.24/0.47             (k1_zfmisc_1 @ (k1_zfmisc_1 @ (u1_struct_0 @ X1))))
% 0.24/0.47          | ~ (m1_pre_topc @ X0 @ X1))),
% 0.24/0.47      inference('sup-', [status(thm)], ['14', '15'])).
% 0.24/0.47  thf('17', plain,
% 0.24/0.47      (((m1_subset_1 @ (u1_pre_topc @ sk_B) @ 
% 0.24/0.47         (k1_zfmisc_1 @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_B))))
% 0.24/0.47        | ~ (l1_pre_topc @ sk_B)
% 0.24/0.47        | ~ (l1_pre_topc @ sk_B))),
% 0.24/0.47      inference('sup-', [status(thm)], ['13', '16'])).
% 0.24/0.47  thf('18', plain, ((l1_pre_topc @ sk_B)),
% 0.24/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.24/0.47  thf('19', plain, ((l1_pre_topc @ sk_B)),
% 0.24/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.24/0.47  thf('20', plain,
% 0.24/0.47      ((m1_subset_1 @ (u1_pre_topc @ sk_B) @ 
% 0.24/0.47        (k1_zfmisc_1 @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_B))))),
% 0.24/0.47      inference('demod', [status(thm)], ['17', '18', '19'])).
% 0.24/0.47  thf('21', plain,
% 0.24/0.47      (![X0 : $i]:
% 0.24/0.47         ((m1_pre_topc @ X0 @ 
% 0.24/0.47           (g1_pre_topc @ (u1_struct_0 @ X0) @ (u1_pre_topc @ X0)))
% 0.24/0.47          | ~ (l1_pre_topc @ X0))),
% 0.24/0.47      inference('simplify', [status(thm)], ['3'])).
% 0.24/0.47  thf('22', plain,
% 0.24/0.47      (![X0 : $i]:
% 0.24/0.47         (~ (m1_pre_topc @ X0 @ 
% 0.24/0.47             (g1_pre_topc @ (u1_struct_0 @ sk_A) @ (u1_pre_topc @ sk_A)))
% 0.24/0.47          | (m1_pre_topc @ X0 @ sk_B))),
% 0.24/0.47      inference('demod', [status(thm)], ['10', '11'])).
% 0.24/0.47  thf('23', plain, ((~ (l1_pre_topc @ sk_A) | (m1_pre_topc @ sk_A @ sk_B))),
% 0.24/0.47      inference('sup-', [status(thm)], ['21', '22'])).
% 0.24/0.47  thf('24', plain, ((l1_pre_topc @ sk_A)),
% 0.24/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.24/0.47  thf('25', plain, ((m1_pre_topc @ sk_A @ sk_B)),
% 0.24/0.47      inference('demod', [status(thm)], ['23', '24'])).
% 0.24/0.47  thf(t35_borsuk_1, axiom,
% 0.24/0.47    (![A:$i]:
% 0.24/0.47     ( ( l1_pre_topc @ A ) =>
% 0.24/0.47       ( ![B:$i]:
% 0.24/0.47         ( ( m1_pre_topc @ B @ A ) =>
% 0.24/0.47           ( r1_tarski @ ( u1_struct_0 @ B ) @ ( u1_struct_0 @ A ) ) ) ) ))).
% 0.24/0.47  thf('26', plain,
% 0.24/0.47      (![X21 : $i, X22 : $i]:
% 0.24/0.47         (~ (m1_pre_topc @ X21 @ X22)
% 0.24/0.47          | (r1_tarski @ (u1_struct_0 @ X21) @ (u1_struct_0 @ X22))
% 0.24/0.47          | ~ (l1_pre_topc @ X22))),
% 0.24/0.47      inference('cnf', [status(esa)], [t35_borsuk_1])).
% 0.24/0.47  thf('27', plain,
% 0.24/0.47      ((~ (l1_pre_topc @ sk_B)
% 0.24/0.47        | (r1_tarski @ (u1_struct_0 @ sk_A) @ (u1_struct_0 @ sk_B)))),
% 0.24/0.47      inference('sup-', [status(thm)], ['25', '26'])).
% 0.24/0.47  thf('28', plain, ((l1_pre_topc @ sk_B)),
% 0.24/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.24/0.47  thf('29', plain, ((r1_tarski @ (u1_struct_0 @ sk_A) @ (u1_struct_0 @ sk_B))),
% 0.24/0.47      inference('demod', [status(thm)], ['27', '28'])).
% 0.24/0.47  thf(d10_xboole_0, axiom,
% 0.24/0.47    (![A:$i,B:$i]:
% 0.24/0.47     ( ( ( A ) = ( B ) ) <=> ( ( r1_tarski @ A @ B ) & ( r1_tarski @ B @ A ) ) ))).
% 0.24/0.47  thf('30', plain,
% 0.24/0.47      (![X0 : $i, X2 : $i]:
% 0.24/0.47         (((X0) = (X2)) | ~ (r1_tarski @ X2 @ X0) | ~ (r1_tarski @ X0 @ X2))),
% 0.24/0.47      inference('cnf', [status(esa)], [d10_xboole_0])).
% 0.24/0.47  thf('31', plain,
% 0.24/0.47      ((~ (r1_tarski @ (u1_struct_0 @ sk_B) @ (u1_struct_0 @ sk_A))
% 0.24/0.47        | ((u1_struct_0 @ sk_B) = (u1_struct_0 @ sk_A)))),
% 0.24/0.47      inference('sup-', [status(thm)], ['29', '30'])).
% 0.24/0.47  thf('32', plain,
% 0.24/0.47      ((m1_pre_topc @ sk_B @ 
% 0.24/0.47        (g1_pre_topc @ (u1_struct_0 @ sk_A) @ (u1_pre_topc @ sk_A)))),
% 0.24/0.47      inference('demod', [status(thm)], ['5', '6'])).
% 0.24/0.47  thf('33', plain,
% 0.24/0.47      (![X6 : $i, X7 : $i]:
% 0.24/0.47         (~ (m1_pre_topc @ X6 @ 
% 0.24/0.47             (g1_pre_topc @ (u1_struct_0 @ X7) @ (u1_pre_topc @ X7)))
% 0.24/0.47          | (m1_pre_topc @ X6 @ X7)
% 0.24/0.47          | ~ (l1_pre_topc @ X7))),
% 0.24/0.47      inference('cnf', [status(esa)], [t59_pre_topc])).
% 0.24/0.47  thf('34', plain, ((~ (l1_pre_topc @ sk_A) | (m1_pre_topc @ sk_B @ sk_A))),
% 0.24/0.47      inference('sup-', [status(thm)], ['32', '33'])).
% 0.24/0.47  thf('35', plain, ((l1_pre_topc @ sk_A)),
% 0.24/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.24/0.47  thf('36', plain, ((m1_pre_topc @ sk_B @ sk_A)),
% 0.24/0.47      inference('demod', [status(thm)], ['34', '35'])).
% 0.24/0.47  thf('37', plain,
% 0.24/0.47      (![X21 : $i, X22 : $i]:
% 0.24/0.47         (~ (m1_pre_topc @ X21 @ X22)
% 0.24/0.47          | (r1_tarski @ (u1_struct_0 @ X21) @ (u1_struct_0 @ X22))
% 0.24/0.47          | ~ (l1_pre_topc @ X22))),
% 0.24/0.47      inference('cnf', [status(esa)], [t35_borsuk_1])).
% 0.24/0.47  thf('38', plain,
% 0.24/0.47      ((~ (l1_pre_topc @ sk_A)
% 0.24/0.47        | (r1_tarski @ (u1_struct_0 @ sk_B) @ (u1_struct_0 @ sk_A)))),
% 0.24/0.47      inference('sup-', [status(thm)], ['36', '37'])).
% 0.24/0.47  thf('39', plain, ((l1_pre_topc @ sk_A)),
% 0.24/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.24/0.47  thf('40', plain, ((r1_tarski @ (u1_struct_0 @ sk_B) @ (u1_struct_0 @ sk_A))),
% 0.24/0.47      inference('demod', [status(thm)], ['38', '39'])).
% 0.24/0.47  thf('41', plain, (((u1_struct_0 @ sk_B) = (u1_struct_0 @ sk_A))),
% 0.24/0.47      inference('demod', [status(thm)], ['31', '40'])).
% 0.24/0.47  thf('42', plain,
% 0.24/0.47      ((m1_subset_1 @ (u1_pre_topc @ sk_B) @ 
% 0.24/0.47        (k1_zfmisc_1 @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A))))),
% 0.24/0.47      inference('demod', [status(thm)], ['20', '41'])).
% 0.24/0.47  thf(t78_tops_2, axiom,
% 0.24/0.47    (![A:$i]:
% 0.24/0.47     ( ( l1_pre_topc @ A ) =>
% 0.24/0.47       ( ![B:$i]:
% 0.24/0.47         ( ( m1_subset_1 @
% 0.24/0.47             B @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) ) =>
% 0.24/0.47           ( ( v1_tops_2 @ B @ A ) <=> ( r1_tarski @ B @ ( u1_pre_topc @ A ) ) ) ) ) ))).
% 0.24/0.47  thf('43', plain,
% 0.24/0.47      (![X17 : $i, X18 : $i]:
% 0.24/0.47         (~ (m1_subset_1 @ X17 @ 
% 0.24/0.47             (k1_zfmisc_1 @ (k1_zfmisc_1 @ (u1_struct_0 @ X18))))
% 0.24/0.47          | ~ (v1_tops_2 @ X17 @ X18)
% 0.24/0.47          | (r1_tarski @ X17 @ (u1_pre_topc @ X18))
% 0.24/0.47          | ~ (l1_pre_topc @ X18))),
% 0.24/0.47      inference('cnf', [status(esa)], [t78_tops_2])).
% 0.24/0.47  thf('44', plain,
% 0.24/0.47      ((~ (l1_pre_topc @ sk_A)
% 0.24/0.47        | (r1_tarski @ (u1_pre_topc @ sk_B) @ (u1_pre_topc @ sk_A))
% 0.24/0.47        | ~ (v1_tops_2 @ (u1_pre_topc @ sk_B) @ sk_A))),
% 0.24/0.47      inference('sup-', [status(thm)], ['42', '43'])).
% 0.24/0.47  thf('45', plain, ((l1_pre_topc @ sk_A)),
% 0.24/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.24/0.47  thf('46', plain,
% 0.24/0.47      (((r1_tarski @ (u1_pre_topc @ sk_B) @ (u1_pre_topc @ sk_A))
% 0.24/0.47        | ~ (v1_tops_2 @ (u1_pre_topc @ sk_B) @ sk_A))),
% 0.24/0.47      inference('demod', [status(thm)], ['44', '45'])).
% 0.24/0.47  thf('47', plain,
% 0.24/0.47      (![X5 : $i]:
% 0.24/0.47         ((m1_subset_1 @ (u1_pre_topc @ X5) @ 
% 0.24/0.47           (k1_zfmisc_1 @ (k1_zfmisc_1 @ (u1_struct_0 @ X5))))
% 0.24/0.47          | ~ (l1_pre_topc @ X5))),
% 0.24/0.47      inference('cnf', [status(esa)], [dt_u1_pre_topc])).
% 0.24/0.47  thf('48', plain,
% 0.24/0.47      ((m1_subset_1 @ (u1_pre_topc @ sk_B) @ 
% 0.24/0.47        (k1_zfmisc_1 @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A))))),
% 0.24/0.47      inference('demod', [status(thm)], ['20', '41'])).
% 0.24/0.47  thf(t35_tops_2, axiom,
% 0.24/0.47    (![A:$i]:
% 0.24/0.47     ( ( l1_pre_topc @ A ) =>
% 0.24/0.47       ( ![B:$i]:
% 0.24/0.47         ( ( m1_subset_1 @
% 0.24/0.47             B @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) ) =>
% 0.24/0.47           ( ![C:$i]:
% 0.24/0.47             ( ( m1_pre_topc @ C @ A ) =>
% 0.24/0.47               ( ( v1_tops_2 @ B @ A ) =>
% 0.24/0.47                 ( ![D:$i]:
% 0.24/0.47                   ( ( m1_subset_1 @
% 0.24/0.47                       D @ 
% 0.24/0.47                       ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ C ) ) ) ) =>
% 0.24/0.47                     ( ( ( D ) = ( B ) ) => ( v1_tops_2 @ D @ C ) ) ) ) ) ) ) ) ) ))).
% 0.24/0.47  thf('49', plain,
% 0.24/0.47      (![X13 : $i, X14 : $i, X15 : $i, X16 : $i]:
% 0.24/0.47         (~ (m1_subset_1 @ X13 @ 
% 0.24/0.47             (k1_zfmisc_1 @ (k1_zfmisc_1 @ (u1_struct_0 @ X14))))
% 0.24/0.47          | ~ (v1_tops_2 @ X13 @ X14)
% 0.24/0.47          | ~ (m1_subset_1 @ X15 @ 
% 0.24/0.47               (k1_zfmisc_1 @ (k1_zfmisc_1 @ (u1_struct_0 @ X16))))
% 0.24/0.47          | (v1_tops_2 @ X15 @ X16)
% 0.24/0.47          | ((X15) != (X13))
% 0.24/0.47          | ~ (m1_pre_topc @ X16 @ X14)
% 0.24/0.48          | ~ (l1_pre_topc @ X14))),
% 0.24/0.48      inference('cnf', [status(esa)], [t35_tops_2])).
% 0.24/0.48  thf('50', plain,
% 0.24/0.48      (![X13 : $i, X14 : $i, X16 : $i]:
% 0.24/0.48         (~ (l1_pre_topc @ X14)
% 0.24/0.48          | ~ (m1_pre_topc @ X16 @ X14)
% 0.24/0.48          | (v1_tops_2 @ X13 @ X16)
% 0.24/0.48          | ~ (m1_subset_1 @ X13 @ 
% 0.24/0.48               (k1_zfmisc_1 @ (k1_zfmisc_1 @ (u1_struct_0 @ X16))))
% 0.24/0.48          | ~ (v1_tops_2 @ X13 @ X14)
% 0.24/0.48          | ~ (m1_subset_1 @ X13 @ 
% 0.24/0.48               (k1_zfmisc_1 @ (k1_zfmisc_1 @ (u1_struct_0 @ X14)))))),
% 0.24/0.48      inference('simplify', [status(thm)], ['49'])).
% 0.24/0.48  thf('51', plain,
% 0.24/0.48      (![X0 : $i]:
% 0.24/0.48         (~ (m1_subset_1 @ (u1_pre_topc @ sk_B) @ 
% 0.24/0.48             (k1_zfmisc_1 @ (k1_zfmisc_1 @ (u1_struct_0 @ X0))))
% 0.24/0.48          | ~ (v1_tops_2 @ (u1_pre_topc @ sk_B) @ X0)
% 0.24/0.48          | (v1_tops_2 @ (u1_pre_topc @ sk_B) @ sk_A)
% 0.24/0.48          | ~ (m1_pre_topc @ sk_A @ X0)
% 0.24/0.48          | ~ (l1_pre_topc @ X0))),
% 0.24/0.48      inference('sup-', [status(thm)], ['48', '50'])).
% 0.24/0.48  thf('52', plain,
% 0.24/0.48      ((~ (l1_pre_topc @ sk_B)
% 0.24/0.48        | ~ (l1_pre_topc @ sk_B)
% 0.24/0.48        | ~ (m1_pre_topc @ sk_A @ sk_B)
% 0.24/0.48        | (v1_tops_2 @ (u1_pre_topc @ sk_B) @ sk_A)
% 0.24/0.48        | ~ (v1_tops_2 @ (u1_pre_topc @ sk_B) @ sk_B))),
% 0.24/0.48      inference('sup-', [status(thm)], ['47', '51'])).
% 0.24/0.48  thf('53', plain, ((l1_pre_topc @ sk_B)),
% 0.24/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.24/0.48  thf('54', plain, ((l1_pre_topc @ sk_B)),
% 0.24/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.24/0.48  thf('55', plain, ((m1_pre_topc @ sk_A @ sk_B)),
% 0.24/0.48      inference('demod', [status(thm)], ['23', '24'])).
% 0.24/0.48  thf('56', plain,
% 0.24/0.48      ((m1_subset_1 @ (u1_pre_topc @ sk_B) @ 
% 0.24/0.48        (k1_zfmisc_1 @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A))))),
% 0.24/0.48      inference('demod', [status(thm)], ['20', '41'])).
% 0.24/0.48  thf('57', plain, (((u1_struct_0 @ sk_B) = (u1_struct_0 @ sk_A))),
% 0.24/0.48      inference('demod', [status(thm)], ['31', '40'])).
% 0.24/0.48  thf('58', plain,
% 0.24/0.48      (![X17 : $i, X18 : $i]:
% 0.24/0.48         (~ (m1_subset_1 @ X17 @ 
% 0.24/0.48             (k1_zfmisc_1 @ (k1_zfmisc_1 @ (u1_struct_0 @ X18))))
% 0.24/0.48          | ~ (r1_tarski @ X17 @ (u1_pre_topc @ X18))
% 0.24/0.48          | (v1_tops_2 @ X17 @ X18)
% 0.24/0.48          | ~ (l1_pre_topc @ X18))),
% 0.24/0.48      inference('cnf', [status(esa)], [t78_tops_2])).
% 0.24/0.48  thf('59', plain,
% 0.24/0.48      (![X0 : $i]:
% 0.24/0.48         (~ (m1_subset_1 @ X0 @ 
% 0.24/0.48             (k1_zfmisc_1 @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A))))
% 0.24/0.48          | ~ (l1_pre_topc @ sk_B)
% 0.24/0.48          | (v1_tops_2 @ X0 @ sk_B)
% 0.24/0.48          | ~ (r1_tarski @ X0 @ (u1_pre_topc @ sk_B)))),
% 0.24/0.48      inference('sup-', [status(thm)], ['57', '58'])).
% 0.24/0.48  thf('60', plain, ((l1_pre_topc @ sk_B)),
% 0.24/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.24/0.48  thf('61', plain,
% 0.24/0.48      (![X0 : $i]:
% 0.24/0.48         (~ (m1_subset_1 @ X0 @ 
% 0.24/0.48             (k1_zfmisc_1 @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A))))
% 0.24/0.48          | (v1_tops_2 @ X0 @ sk_B)
% 0.24/0.48          | ~ (r1_tarski @ X0 @ (u1_pre_topc @ sk_B)))),
% 0.24/0.48      inference('demod', [status(thm)], ['59', '60'])).
% 0.24/0.48  thf('62', plain,
% 0.24/0.48      ((~ (r1_tarski @ (u1_pre_topc @ sk_B) @ (u1_pre_topc @ sk_B))
% 0.24/0.48        | (v1_tops_2 @ (u1_pre_topc @ sk_B) @ sk_B))),
% 0.24/0.48      inference('sup-', [status(thm)], ['56', '61'])).
% 0.24/0.48  thf('63', plain,
% 0.24/0.48      (![X0 : $i, X1 : $i]: ((r1_tarski @ X0 @ X1) | ((X0) != (X1)))),
% 0.24/0.48      inference('cnf', [status(esa)], [d10_xboole_0])).
% 0.24/0.48  thf('64', plain, (![X1 : $i]: (r1_tarski @ X1 @ X1)),
% 0.24/0.48      inference('simplify', [status(thm)], ['63'])).
% 0.24/0.48  thf('65', plain, ((v1_tops_2 @ (u1_pre_topc @ sk_B) @ sk_B)),
% 0.24/0.48      inference('demod', [status(thm)], ['62', '64'])).
% 0.24/0.48  thf('66', plain, ((v1_tops_2 @ (u1_pre_topc @ sk_B) @ sk_A)),
% 0.24/0.48      inference('demod', [status(thm)], ['52', '53', '54', '55', '65'])).
% 0.24/0.48  thf('67', plain, ((r1_tarski @ (u1_pre_topc @ sk_B) @ (u1_pre_topc @ sk_A))),
% 0.24/0.48      inference('demod', [status(thm)], ['46', '66'])).
% 0.24/0.48  thf('68', plain,
% 0.24/0.48      (![X0 : $i, X2 : $i]:
% 0.24/0.48         (((X0) = (X2)) | ~ (r1_tarski @ X2 @ X0) | ~ (r1_tarski @ X0 @ X2))),
% 0.24/0.48      inference('cnf', [status(esa)], [d10_xboole_0])).
% 0.24/0.48  thf('69', plain,
% 0.24/0.48      ((~ (r1_tarski @ (u1_pre_topc @ sk_A) @ (u1_pre_topc @ sk_B))
% 0.24/0.48        | ((u1_pre_topc @ sk_A) = (u1_pre_topc @ sk_B)))),
% 0.24/0.48      inference('sup-', [status(thm)], ['67', '68'])).
% 0.24/0.48  thf(d2_tdlat_3, axiom,
% 0.24/0.48    (![A:$i]:
% 0.24/0.48     ( ( l1_pre_topc @ A ) =>
% 0.24/0.48       ( ( v2_tdlat_3 @ A ) <=>
% 0.24/0.48         ( ( u1_pre_topc @ A ) =
% 0.24/0.48           ( k2_tarski @ k1_xboole_0 @ ( u1_struct_0 @ A ) ) ) ) ))).
% 0.24/0.48  thf('70', plain,
% 0.24/0.48      (![X23 : $i]:
% 0.24/0.48         (~ (v2_tdlat_3 @ X23)
% 0.24/0.48          | ((u1_pre_topc @ X23)
% 0.24/0.48              = (k2_tarski @ k1_xboole_0 @ (u1_struct_0 @ X23)))
% 0.24/0.48          | ~ (l1_pre_topc @ X23))),
% 0.24/0.48      inference('cnf', [status(esa)], [d2_tdlat_3])).
% 0.24/0.48  thf('71', plain, (((u1_struct_0 @ sk_B) = (u1_struct_0 @ sk_A))),
% 0.24/0.48      inference('demod', [status(thm)], ['31', '40'])).
% 0.24/0.48  thf('72', plain,
% 0.24/0.48      (![X23 : $i]:
% 0.24/0.48         (((u1_pre_topc @ X23)
% 0.24/0.48            != (k2_tarski @ k1_xboole_0 @ (u1_struct_0 @ X23)))
% 0.24/0.48          | (v2_tdlat_3 @ X23)
% 0.24/0.48          | ~ (l1_pre_topc @ X23))),
% 0.24/0.48      inference('cnf', [status(esa)], [d2_tdlat_3])).
% 0.24/0.48  thf('73', plain,
% 0.24/0.48      ((((u1_pre_topc @ sk_B)
% 0.24/0.48          != (k2_tarski @ k1_xboole_0 @ (u1_struct_0 @ sk_A)))
% 0.24/0.48        | ~ (l1_pre_topc @ sk_B)
% 0.24/0.48        | (v2_tdlat_3 @ sk_B))),
% 0.24/0.48      inference('sup-', [status(thm)], ['71', '72'])).
% 0.24/0.48  thf('74', plain, ((l1_pre_topc @ sk_B)),
% 0.24/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.24/0.48  thf('75', plain,
% 0.24/0.48      ((((u1_pre_topc @ sk_B)
% 0.24/0.48          != (k2_tarski @ k1_xboole_0 @ (u1_struct_0 @ sk_A)))
% 0.24/0.48        | (v2_tdlat_3 @ sk_B))),
% 0.24/0.48      inference('demod', [status(thm)], ['73', '74'])).
% 0.24/0.48  thf('76', plain, (~ (v2_tdlat_3 @ sk_B)),
% 0.24/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.24/0.48  thf('77', plain,
% 0.24/0.48      (((u1_pre_topc @ sk_B)
% 0.24/0.48         != (k2_tarski @ k1_xboole_0 @ (u1_struct_0 @ sk_A)))),
% 0.24/0.48      inference('clc', [status(thm)], ['75', '76'])).
% 0.24/0.48  thf('78', plain,
% 0.24/0.48      ((((u1_pre_topc @ sk_B) != (u1_pre_topc @ sk_A))
% 0.24/0.48        | ~ (l1_pre_topc @ sk_A)
% 0.24/0.48        | ~ (v2_tdlat_3 @ sk_A))),
% 0.24/0.48      inference('sup-', [status(thm)], ['70', '77'])).
% 0.24/0.48  thf('79', plain, ((l1_pre_topc @ sk_A)),
% 0.24/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.24/0.48  thf('80', plain, ((v2_tdlat_3 @ sk_A)),
% 0.24/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.24/0.48  thf('81', plain, (((u1_pre_topc @ sk_B) != (u1_pre_topc @ sk_A))),
% 0.24/0.48      inference('demod', [status(thm)], ['78', '79', '80'])).
% 0.24/0.48  thf('82', plain,
% 0.24/0.48      (~ (r1_tarski @ (u1_pre_topc @ sk_A) @ (u1_pre_topc @ sk_B))),
% 0.24/0.48      inference('simplify_reflect-', [status(thm)], ['69', '81'])).
% 0.24/0.48  thf('83', plain, ((m1_pre_topc @ sk_A @ sk_B)),
% 0.24/0.48      inference('demod', [status(thm)], ['23', '24'])).
% 0.24/0.48  thf('84', plain,
% 0.24/0.48      (![X0 : $i, X1 : $i]:
% 0.24/0.48         (~ (l1_pre_topc @ X0)
% 0.24/0.48          | ~ (l1_pre_topc @ X1)
% 0.24/0.48          | (m1_subset_1 @ (u1_pre_topc @ X0) @ 
% 0.24/0.48             (k1_zfmisc_1 @ (k1_zfmisc_1 @ (u1_struct_0 @ X1))))
% 0.24/0.48          | ~ (m1_pre_topc @ X0 @ X1))),
% 0.24/0.48      inference('sup-', [status(thm)], ['14', '15'])).
% 0.24/0.48  thf('85', plain,
% 0.24/0.48      (((m1_subset_1 @ (u1_pre_topc @ sk_A) @ 
% 0.24/0.48         (k1_zfmisc_1 @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_B))))
% 0.24/0.48        | ~ (l1_pre_topc @ sk_B)
% 0.24/0.48        | ~ (l1_pre_topc @ sk_A))),
% 0.24/0.48      inference('sup-', [status(thm)], ['83', '84'])).
% 0.24/0.48  thf('86', plain, ((l1_pre_topc @ sk_B)),
% 0.24/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.24/0.48  thf('87', plain, ((l1_pre_topc @ sk_A)),
% 0.24/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.24/0.48  thf('88', plain,
% 0.24/0.48      ((m1_subset_1 @ (u1_pre_topc @ sk_A) @ 
% 0.24/0.48        (k1_zfmisc_1 @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_B))))),
% 0.24/0.48      inference('demod', [status(thm)], ['85', '86', '87'])).
% 0.24/0.48  thf('89', plain, (((u1_struct_0 @ sk_B) = (u1_struct_0 @ sk_A))),
% 0.24/0.48      inference('demod', [status(thm)], ['31', '40'])).
% 0.24/0.48  thf('90', plain,
% 0.24/0.48      ((m1_subset_1 @ (u1_pre_topc @ sk_A) @ 
% 0.24/0.48        (k1_zfmisc_1 @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A))))),
% 0.24/0.48      inference('demod', [status(thm)], ['88', '89'])).
% 0.24/0.48  thf('91', plain, (((u1_struct_0 @ sk_B) = (u1_struct_0 @ sk_A))),
% 0.24/0.48      inference('demod', [status(thm)], ['31', '40'])).
% 0.24/0.48  thf('92', plain,
% 0.24/0.48      (![X17 : $i, X18 : $i]:
% 0.24/0.48         (~ (m1_subset_1 @ X17 @ 
% 0.24/0.48             (k1_zfmisc_1 @ (k1_zfmisc_1 @ (u1_struct_0 @ X18))))
% 0.24/0.48          | ~ (v1_tops_2 @ X17 @ X18)
% 0.24/0.48          | (r1_tarski @ X17 @ (u1_pre_topc @ X18))
% 0.24/0.48          | ~ (l1_pre_topc @ X18))),
% 0.24/0.48      inference('cnf', [status(esa)], [t78_tops_2])).
% 0.24/0.48  thf('93', plain,
% 0.24/0.48      (![X0 : $i]:
% 0.24/0.48         (~ (m1_subset_1 @ X0 @ 
% 0.24/0.48             (k1_zfmisc_1 @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A))))
% 0.24/0.48          | ~ (l1_pre_topc @ sk_B)
% 0.24/0.48          | (r1_tarski @ X0 @ (u1_pre_topc @ sk_B))
% 0.24/0.48          | ~ (v1_tops_2 @ X0 @ sk_B))),
% 0.24/0.48      inference('sup-', [status(thm)], ['91', '92'])).
% 0.24/0.48  thf('94', plain, ((l1_pre_topc @ sk_B)),
% 0.24/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.24/0.48  thf('95', plain,
% 0.24/0.48      (![X0 : $i]:
% 0.24/0.48         (~ (m1_subset_1 @ X0 @ 
% 0.24/0.48             (k1_zfmisc_1 @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A))))
% 0.24/0.48          | (r1_tarski @ X0 @ (u1_pre_topc @ sk_B))
% 0.24/0.48          | ~ (v1_tops_2 @ X0 @ sk_B))),
% 0.24/0.48      inference('demod', [status(thm)], ['93', '94'])).
% 0.24/0.48  thf('96', plain,
% 0.24/0.48      ((~ (v1_tops_2 @ (u1_pre_topc @ sk_A) @ sk_B)
% 0.24/0.48        | (r1_tarski @ (u1_pre_topc @ sk_A) @ (u1_pre_topc @ sk_B)))),
% 0.24/0.48      inference('sup-', [status(thm)], ['90', '95'])).
% 0.24/0.48  thf('97', plain,
% 0.24/0.48      (![X5 : $i]:
% 0.24/0.48         ((m1_subset_1 @ (u1_pre_topc @ X5) @ 
% 0.24/0.48           (k1_zfmisc_1 @ (k1_zfmisc_1 @ (u1_struct_0 @ X5))))
% 0.24/0.48          | ~ (l1_pre_topc @ X5))),
% 0.24/0.48      inference('cnf', [status(esa)], [dt_u1_pre_topc])).
% 0.24/0.48  thf('98', plain,
% 0.24/0.48      ((m1_subset_1 @ (u1_pre_topc @ sk_A) @ 
% 0.24/0.48        (k1_zfmisc_1 @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A))))),
% 0.24/0.48      inference('demod', [status(thm)], ['88', '89'])).
% 0.24/0.48  thf('99', plain, (((u1_struct_0 @ sk_B) = (u1_struct_0 @ sk_A))),
% 0.24/0.48      inference('demod', [status(thm)], ['31', '40'])).
% 0.24/0.48  thf('100', plain,
% 0.24/0.48      (![X13 : $i, X14 : $i, X16 : $i]:
% 0.24/0.48         (~ (l1_pre_topc @ X14)
% 0.24/0.48          | ~ (m1_pre_topc @ X16 @ X14)
% 0.24/0.48          | (v1_tops_2 @ X13 @ X16)
% 0.24/0.48          | ~ (m1_subset_1 @ X13 @ 
% 0.24/0.48               (k1_zfmisc_1 @ (k1_zfmisc_1 @ (u1_struct_0 @ X16))))
% 0.24/0.48          | ~ (v1_tops_2 @ X13 @ X14)
% 0.24/0.48          | ~ (m1_subset_1 @ X13 @ 
% 0.24/0.48               (k1_zfmisc_1 @ (k1_zfmisc_1 @ (u1_struct_0 @ X14)))))),
% 0.24/0.48      inference('simplify', [status(thm)], ['49'])).
% 0.24/0.48  thf('101', plain,
% 0.24/0.48      (![X0 : $i, X1 : $i]:
% 0.24/0.48         (~ (m1_subset_1 @ X0 @ 
% 0.24/0.48             (k1_zfmisc_1 @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A))))
% 0.24/0.48          | ~ (m1_subset_1 @ X0 @ 
% 0.24/0.48               (k1_zfmisc_1 @ (k1_zfmisc_1 @ (u1_struct_0 @ X1))))
% 0.24/0.48          | ~ (v1_tops_2 @ X0 @ X1)
% 0.24/0.48          | (v1_tops_2 @ X0 @ sk_B)
% 0.24/0.48          | ~ (m1_pre_topc @ sk_B @ X1)
% 0.24/0.48          | ~ (l1_pre_topc @ X1))),
% 0.24/0.48      inference('sup-', [status(thm)], ['99', '100'])).
% 0.24/0.48  thf('102', plain,
% 0.24/0.48      (![X0 : $i]:
% 0.24/0.48         (~ (l1_pre_topc @ X0)
% 0.24/0.48          | ~ (m1_pre_topc @ sk_B @ X0)
% 0.24/0.48          | (v1_tops_2 @ (u1_pre_topc @ sk_A) @ sk_B)
% 0.24/0.48          | ~ (v1_tops_2 @ (u1_pre_topc @ sk_A) @ X0)
% 0.24/0.48          | ~ (m1_subset_1 @ (u1_pre_topc @ sk_A) @ 
% 0.24/0.48               (k1_zfmisc_1 @ (k1_zfmisc_1 @ (u1_struct_0 @ X0)))))),
% 0.24/0.48      inference('sup-', [status(thm)], ['98', '101'])).
% 0.24/0.48  thf('103', plain,
% 0.24/0.48      ((~ (l1_pre_topc @ sk_A)
% 0.24/0.48        | ~ (v1_tops_2 @ (u1_pre_topc @ sk_A) @ sk_A)
% 0.24/0.48        | (v1_tops_2 @ (u1_pre_topc @ sk_A) @ sk_B)
% 0.24/0.48        | ~ (m1_pre_topc @ sk_B @ sk_A)
% 0.24/0.48        | ~ (l1_pre_topc @ sk_A))),
% 0.24/0.48      inference('sup-', [status(thm)], ['97', '102'])).
% 0.24/0.48  thf('104', plain, ((l1_pre_topc @ sk_A)),
% 0.24/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.24/0.48  thf('105', plain,
% 0.24/0.48      ((m1_subset_1 @ (u1_pre_topc @ sk_A) @ 
% 0.24/0.48        (k1_zfmisc_1 @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A))))),
% 0.24/0.48      inference('demod', [status(thm)], ['88', '89'])).
% 0.24/0.48  thf('106', plain,
% 0.24/0.48      (![X17 : $i, X18 : $i]:
% 0.24/0.48         (~ (m1_subset_1 @ X17 @ 
% 0.24/0.48             (k1_zfmisc_1 @ (k1_zfmisc_1 @ (u1_struct_0 @ X18))))
% 0.24/0.48          | ~ (r1_tarski @ X17 @ (u1_pre_topc @ X18))
% 0.24/0.48          | (v1_tops_2 @ X17 @ X18)
% 0.24/0.48          | ~ (l1_pre_topc @ X18))),
% 0.24/0.48      inference('cnf', [status(esa)], [t78_tops_2])).
% 0.24/0.48  thf('107', plain,
% 0.24/0.48      ((~ (l1_pre_topc @ sk_A)
% 0.24/0.48        | (v1_tops_2 @ (u1_pre_topc @ sk_A) @ sk_A)
% 0.24/0.48        | ~ (r1_tarski @ (u1_pre_topc @ sk_A) @ (u1_pre_topc @ sk_A)))),
% 0.24/0.48      inference('sup-', [status(thm)], ['105', '106'])).
% 0.24/0.48  thf('108', plain, ((l1_pre_topc @ sk_A)),
% 0.24/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.24/0.48  thf('109', plain, (![X1 : $i]: (r1_tarski @ X1 @ X1)),
% 0.24/0.48      inference('simplify', [status(thm)], ['63'])).
% 0.24/0.48  thf('110', plain, ((v1_tops_2 @ (u1_pre_topc @ sk_A) @ sk_A)),
% 0.24/0.48      inference('demod', [status(thm)], ['107', '108', '109'])).
% 0.24/0.48  thf('111', plain, ((m1_pre_topc @ sk_B @ sk_A)),
% 0.24/0.48      inference('demod', [status(thm)], ['34', '35'])).
% 0.24/0.48  thf('112', plain, ((l1_pre_topc @ sk_A)),
% 0.24/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.24/0.48  thf('113', plain, ((v1_tops_2 @ (u1_pre_topc @ sk_A) @ sk_B)),
% 0.24/0.48      inference('demod', [status(thm)], ['103', '104', '110', '111', '112'])).
% 0.24/0.48  thf('114', plain,
% 0.24/0.48      ((r1_tarski @ (u1_pre_topc @ sk_A) @ (u1_pre_topc @ sk_B))),
% 0.24/0.48      inference('demod', [status(thm)], ['96', '113'])).
% 0.24/0.48  thf('115', plain, ($false), inference('demod', [status(thm)], ['82', '114'])).
% 0.24/0.48  
% 0.24/0.48  % SZS output end Refutation
% 0.24/0.48  
% 0.24/0.48  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
