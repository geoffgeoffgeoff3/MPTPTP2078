%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.K0wuXyBFfR

% Computer   : n022.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 14:13:52 EST 2020

% Result     : Theorem 0.19s
% Output     : Refutation 0.19s
% Verified   : 
% Statistics : Number of formulae       :  107 ( 174 expanded)
%              Number of leaves         :   35 (  68 expanded)
%              Depth                    :   22
%              Number of atoms          :  983 (4607 expanded)
%              Number of equality atoms :   48 ( 155 expanded)
%              Maximal formula depth    :   23 (   5 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k2_zfmisc_1_type,type,(
    k2_zfmisc_1: $i > $i > $i )).

thf(v1_funct_1_type,type,(
    v1_funct_1: $i > $o )).

thf(u1_struct_0_type,type,(
    u1_struct_0: $i > $i )).

thf(sk_E_type,type,(
    sk_E: $i )).

thf(k1_tarski_type,type,(
    k1_tarski: $i > $i )).

thf(v1_xboole_0_type,type,(
    v1_xboole_0: $i > $o )).

thf(m1_pre_topc_type,type,(
    m1_pre_topc: $i > $i > $o )).

thf(v1_funct_2_type,type,(
    v1_funct_2: $i > $i > $i > $o )).

thf(sk_C_type,type,(
    sk_C: $i )).

thf(v5_pre_topc_type,type,(
    v5_pre_topc: $i > $i > $i > $o )).

thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(l1_pre_topc_type,type,(
    l1_pre_topc: $i > $o )).

thf(v4_tex_2_type,type,(
    v4_tex_2: $i > $i > $o )).

thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(k2_pre_topc_type,type,(
    k2_pre_topc: $i > $i > $i )).

thf(v3_tdlat_3_type,type,(
    v3_tdlat_3: $i > $o )).

thf(k8_relset_1_type,type,(
    k8_relset_1: $i > $i > $i > $i > $i )).

thf(k6_domain_1_type,type,(
    k6_domain_1: $i > $i > $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(sk_D_type,type,(
    sk_D: $i )).

thf(v3_borsuk_1_type,type,(
    v3_borsuk_1: $i > $i > $i > $o )).

thf(v2_struct_0_type,type,(
    v2_struct_0: $i > $o )).

thf(v2_pre_topc_type,type,(
    v2_pre_topc: $i > $o )).

thf(l1_struct_0_type,type,(
    l1_struct_0: $i > $o )).

thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(t77_tex_2,conjecture,(
    ! [A: $i] :
      ( ( ~ ( v2_struct_0 @ A )
        & ( v2_pre_topc @ A )
        & ( v3_tdlat_3 @ A )
        & ( l1_pre_topc @ A ) )
     => ! [B: $i] :
          ( ( ~ ( v2_struct_0 @ B )
            & ( v4_tex_2 @ B @ A )
            & ( m1_pre_topc @ B @ A ) )
         => ! [C: $i] :
              ( ( ( v1_funct_1 @ C )
                & ( v1_funct_2 @ C @ ( u1_struct_0 @ A ) @ ( u1_struct_0 @ B ) )
                & ( v5_pre_topc @ C @ A @ B )
                & ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( u1_struct_0 @ A ) @ ( u1_struct_0 @ B ) ) ) ) )
             => ( ( v3_borsuk_1 @ C @ A @ B )
               => ! [D: $i] :
                    ( ( m1_subset_1 @ D @ ( u1_struct_0 @ B ) )
                   => ! [E: $i] :
                        ( ( m1_subset_1 @ E @ ( u1_struct_0 @ A ) )
                       => ( ( D = E )
                         => ( ( k8_relset_1 @ ( u1_struct_0 @ A ) @ ( u1_struct_0 @ B ) @ C @ ( k6_domain_1 @ ( u1_struct_0 @ B ) @ D ) )
                            = ( k2_pre_topc @ A @ ( k6_domain_1 @ ( u1_struct_0 @ A ) @ E ) ) ) ) ) ) ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i] :
        ( ( ~ ( v2_struct_0 @ A )
          & ( v2_pre_topc @ A )
          & ( v3_tdlat_3 @ A )
          & ( l1_pre_topc @ A ) )
       => ! [B: $i] :
            ( ( ~ ( v2_struct_0 @ B )
              & ( v4_tex_2 @ B @ A )
              & ( m1_pre_topc @ B @ A ) )
           => ! [C: $i] :
                ( ( ( v1_funct_1 @ C )
                  & ( v1_funct_2 @ C @ ( u1_struct_0 @ A ) @ ( u1_struct_0 @ B ) )
                  & ( v5_pre_topc @ C @ A @ B )
                  & ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( u1_struct_0 @ A ) @ ( u1_struct_0 @ B ) ) ) ) )
               => ( ( v3_borsuk_1 @ C @ A @ B )
                 => ! [D: $i] :
                      ( ( m1_subset_1 @ D @ ( u1_struct_0 @ B ) )
                     => ! [E: $i] :
                          ( ( m1_subset_1 @ E @ ( u1_struct_0 @ A ) )
                         => ( ( D = E )
                           => ( ( k8_relset_1 @ ( u1_struct_0 @ A ) @ ( u1_struct_0 @ B ) @ C @ ( k6_domain_1 @ ( u1_struct_0 @ B ) @ D ) )
                              = ( k2_pre_topc @ A @ ( k6_domain_1 @ ( u1_struct_0 @ A ) @ E ) ) ) ) ) ) ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t77_tex_2])).

thf('0',plain,(
    ~ ( v2_struct_0 @ sk_B ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('1',plain,(
    m1_subset_1 @ sk_E @ ( u1_struct_0 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('2',plain,(
    sk_D = sk_E ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('3',plain,(
    m1_subset_1 @ sk_D @ ( u1_struct_0 @ sk_A ) ),
    inference(demod,[status(thm)],['1','2'])).

thf(redefinition_k6_domain_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( ~ ( v1_xboole_0 @ A )
        & ( m1_subset_1 @ B @ A ) )
     => ( ( k6_domain_1 @ A @ B )
        = ( k1_tarski @ B ) ) ) )).

thf('4',plain,(
    ! [X12: $i,X13: $i] :
      ( ( v1_xboole_0 @ X12 )
      | ~ ( m1_subset_1 @ X13 @ X12 )
      | ( ( k6_domain_1 @ X12 @ X13 )
        = ( k1_tarski @ X13 ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k6_domain_1])).

thf('5',plain,
    ( ( ( k6_domain_1 @ ( u1_struct_0 @ sk_A ) @ sk_D )
      = ( k1_tarski @ sk_D ) )
    | ( v1_xboole_0 @ ( u1_struct_0 @ sk_A ) ) ),
    inference('sup-',[status(thm)],['3','4'])).

thf('6',plain,(
    m1_pre_topc @ sk_B @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('7',plain,(
    m1_subset_1 @ sk_D @ ( u1_struct_0 @ sk_B ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t55_subset_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( m1_subset_1 @ B @ A )
     => ( ( A != k1_xboole_0 )
       => ( m1_subset_1 @ ( k1_tarski @ B ) @ ( k1_zfmisc_1 @ A ) ) ) ) )).

thf('8',plain,(
    ! [X3: $i,X4: $i] :
      ( ( X3 = k1_xboole_0 )
      | ~ ( m1_subset_1 @ X4 @ X3 )
      | ( m1_subset_1 @ ( k1_tarski @ X4 ) @ ( k1_zfmisc_1 @ X3 ) ) ) ),
    inference(cnf,[status(esa)],[t55_subset_1])).

thf('9',plain,
    ( ( m1_subset_1 @ ( k1_tarski @ sk_D ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_B ) ) )
    | ( ( u1_struct_0 @ sk_B )
      = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['7','8'])).

thf(t39_pre_topc,axiom,(
    ! [A: $i] :
      ( ( l1_pre_topc @ A )
     => ! [B: $i] :
          ( ( m1_pre_topc @ B @ A )
         => ! [C: $i] :
              ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( u1_struct_0 @ B ) ) )
             => ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) ) ) ) )).

thf('10',plain,(
    ! [X9: $i,X10: $i,X11: $i] :
      ( ~ ( m1_pre_topc @ X9 @ X10 )
      | ( m1_subset_1 @ X11 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X10 ) ) )
      | ~ ( m1_subset_1 @ X11 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X9 ) ) )
      | ~ ( l1_pre_topc @ X10 ) ) ),
    inference(cnf,[status(esa)],[t39_pre_topc])).

thf('11',plain,(
    ! [X0: $i] :
      ( ( ( u1_struct_0 @ sk_B )
        = k1_xboole_0 )
      | ~ ( l1_pre_topc @ X0 )
      | ( m1_subset_1 @ ( k1_tarski @ sk_D ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X0 ) ) )
      | ~ ( m1_pre_topc @ sk_B @ X0 ) ) ),
    inference('sup-',[status(thm)],['9','10'])).

thf('12',plain,
    ( ( m1_subset_1 @ ( k1_tarski @ sk_D ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) )
    | ~ ( l1_pre_topc @ sk_A )
    | ( ( u1_struct_0 @ sk_B )
      = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['6','11'])).

thf('13',plain,(
    l1_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('14',plain,
    ( ( m1_subset_1 @ ( k1_tarski @ sk_D ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) )
    | ( ( u1_struct_0 @ sk_B )
      = k1_xboole_0 ) ),
    inference(demod,[status(thm)],['12','13'])).

thf('15',plain,
    ( ( m1_subset_1 @ ( k1_tarski @ sk_D ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_B ) ) )
    | ( ( u1_struct_0 @ sk_B )
      = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['7','8'])).

thf('16',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( u1_struct_0 @ sk_A ) @ ( u1_struct_0 @ sk_B ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t76_tex_2,axiom,(
    ! [A: $i] :
      ( ( ~ ( v2_struct_0 @ A )
        & ( v2_pre_topc @ A )
        & ( v3_tdlat_3 @ A )
        & ( l1_pre_topc @ A ) )
     => ! [B: $i] :
          ( ( ~ ( v2_struct_0 @ B )
            & ( v4_tex_2 @ B @ A )
            & ( m1_pre_topc @ B @ A ) )
         => ! [C: $i] :
              ( ( ( v1_funct_1 @ C )
                & ( v1_funct_2 @ C @ ( u1_struct_0 @ A ) @ ( u1_struct_0 @ B ) )
                & ( v5_pre_topc @ C @ A @ B )
                & ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( u1_struct_0 @ A ) @ ( u1_struct_0 @ B ) ) ) ) )
             => ( ( v3_borsuk_1 @ C @ A @ B )
               => ! [D: $i] :
                    ( ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( u1_struct_0 @ B ) ) )
                   => ! [E: $i] :
                        ( ( m1_subset_1 @ E @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) )
                       => ( ( D = E )
                         => ( ( k8_relset_1 @ ( u1_struct_0 @ A ) @ ( u1_struct_0 @ B ) @ C @ D )
                            = ( k2_pre_topc @ A @ E ) ) ) ) ) ) ) ) ) )).

thf('17',plain,(
    ! [X14: $i,X15: $i,X16: $i,X17: $i,X18: $i] :
      ( ( v2_struct_0 @ X14 )
      | ~ ( v4_tex_2 @ X14 @ X15 )
      | ~ ( m1_pre_topc @ X14 @ X15 )
      | ~ ( v3_borsuk_1 @ X16 @ X15 @ X14 )
      | ~ ( m1_subset_1 @ X17 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X14 ) ) )
      | ( X17 != X18 )
      | ( ( k8_relset_1 @ ( u1_struct_0 @ X15 ) @ ( u1_struct_0 @ X14 ) @ X16 @ X17 )
        = ( k2_pre_topc @ X15 @ X18 ) )
      | ~ ( m1_subset_1 @ X18 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X15 ) ) )
      | ~ ( m1_subset_1 @ X16 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( u1_struct_0 @ X15 ) @ ( u1_struct_0 @ X14 ) ) ) )
      | ~ ( v5_pre_topc @ X16 @ X15 @ X14 )
      | ~ ( v1_funct_2 @ X16 @ ( u1_struct_0 @ X15 ) @ ( u1_struct_0 @ X14 ) )
      | ~ ( v1_funct_1 @ X16 )
      | ~ ( l1_pre_topc @ X15 )
      | ~ ( v3_tdlat_3 @ X15 )
      | ~ ( v2_pre_topc @ X15 )
      | ( v2_struct_0 @ X15 ) ) ),
    inference(cnf,[status(esa)],[t76_tex_2])).

thf('18',plain,(
    ! [X14: $i,X15: $i,X16: $i,X18: $i] :
      ( ( v2_struct_0 @ X15 )
      | ~ ( v2_pre_topc @ X15 )
      | ~ ( v3_tdlat_3 @ X15 )
      | ~ ( l1_pre_topc @ X15 )
      | ~ ( v1_funct_1 @ X16 )
      | ~ ( v1_funct_2 @ X16 @ ( u1_struct_0 @ X15 ) @ ( u1_struct_0 @ X14 ) )
      | ~ ( v5_pre_topc @ X16 @ X15 @ X14 )
      | ~ ( m1_subset_1 @ X16 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( u1_struct_0 @ X15 ) @ ( u1_struct_0 @ X14 ) ) ) )
      | ~ ( m1_subset_1 @ X18 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X15 ) ) )
      | ( ( k8_relset_1 @ ( u1_struct_0 @ X15 ) @ ( u1_struct_0 @ X14 ) @ X16 @ X18 )
        = ( k2_pre_topc @ X15 @ X18 ) )
      | ~ ( m1_subset_1 @ X18 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X14 ) ) )
      | ~ ( v3_borsuk_1 @ X16 @ X15 @ X14 )
      | ~ ( m1_pre_topc @ X14 @ X15 )
      | ~ ( v4_tex_2 @ X14 @ X15 )
      | ( v2_struct_0 @ X14 ) ) ),
    inference(simplify,[status(thm)],['17'])).

thf('19',plain,(
    ! [X0: $i] :
      ( ( v2_struct_0 @ sk_B )
      | ~ ( v4_tex_2 @ sk_B @ sk_A )
      | ~ ( m1_pre_topc @ sk_B @ sk_A )
      | ~ ( v3_borsuk_1 @ sk_C @ sk_A @ sk_B )
      | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_B ) ) )
      | ( ( k8_relset_1 @ ( u1_struct_0 @ sk_A ) @ ( u1_struct_0 @ sk_B ) @ sk_C @ X0 )
        = ( k2_pre_topc @ sk_A @ X0 ) )
      | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) )
      | ~ ( v5_pre_topc @ sk_C @ sk_A @ sk_B )
      | ~ ( v1_funct_2 @ sk_C @ ( u1_struct_0 @ sk_A ) @ ( u1_struct_0 @ sk_B ) )
      | ~ ( v1_funct_1 @ sk_C )
      | ~ ( l1_pre_topc @ sk_A )
      | ~ ( v3_tdlat_3 @ sk_A )
      | ~ ( v2_pre_topc @ sk_A )
      | ( v2_struct_0 @ sk_A ) ) ),
    inference('sup-',[status(thm)],['16','18'])).

thf('20',plain,(
    v4_tex_2 @ sk_B @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('21',plain,(
    m1_pre_topc @ sk_B @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('22',plain,(
    v3_borsuk_1 @ sk_C @ sk_A @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('23',plain,(
    v5_pre_topc @ sk_C @ sk_A @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('24',plain,(
    v1_funct_2 @ sk_C @ ( u1_struct_0 @ sk_A ) @ ( u1_struct_0 @ sk_B ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('25',plain,(
    v1_funct_1 @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('26',plain,(
    l1_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('27',plain,(
    v3_tdlat_3 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('28',plain,(
    v2_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('29',plain,(
    ! [X0: $i] :
      ( ( v2_struct_0 @ sk_B )
      | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_B ) ) )
      | ( ( k8_relset_1 @ ( u1_struct_0 @ sk_A ) @ ( u1_struct_0 @ sk_B ) @ sk_C @ X0 )
        = ( k2_pre_topc @ sk_A @ X0 ) )
      | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) )
      | ( v2_struct_0 @ sk_A ) ) ),
    inference(demod,[status(thm)],['19','20','21','22','23','24','25','26','27','28'])).

thf('30',plain,
    ( ( ( u1_struct_0 @ sk_B )
      = k1_xboole_0 )
    | ( v2_struct_0 @ sk_A )
    | ~ ( m1_subset_1 @ ( k1_tarski @ sk_D ) @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_A ) ) )
    | ( ( k8_relset_1 @ ( u1_struct_0 @ sk_A ) @ ( u1_struct_0 @ sk_B ) @ sk_C @ ( k1_tarski @ sk_D ) )
      = ( k2_pre_topc @ sk_A @ ( k1_tarski @ sk_D ) ) )
    | ( v2_struct_0 @ sk_B ) ),
    inference('sup-',[status(thm)],['15','29'])).

thf('31',plain,
    ( ( ( u1_struct_0 @ sk_B )
      = k1_xboole_0 )
    | ( v2_struct_0 @ sk_B )
    | ( ( k8_relset_1 @ ( u1_struct_0 @ sk_A ) @ ( u1_struct_0 @ sk_B ) @ sk_C @ ( k1_tarski @ sk_D ) )
      = ( k2_pre_topc @ sk_A @ ( k1_tarski @ sk_D ) ) )
    | ( v2_struct_0 @ sk_A )
    | ( ( u1_struct_0 @ sk_B )
      = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['14','30'])).

thf('32',plain,
    ( ( v2_struct_0 @ sk_A )
    | ( ( k8_relset_1 @ ( u1_struct_0 @ sk_A ) @ ( u1_struct_0 @ sk_B ) @ sk_C @ ( k1_tarski @ sk_D ) )
      = ( k2_pre_topc @ sk_A @ ( k1_tarski @ sk_D ) ) )
    | ( v2_struct_0 @ sk_B )
    | ( ( u1_struct_0 @ sk_B )
      = k1_xboole_0 ) ),
    inference(simplify,[status(thm)],['31'])).

thf('33',plain,(
    m1_subset_1 @ sk_D @ ( u1_struct_0 @ sk_B ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('34',plain,(
    ! [X12: $i,X13: $i] :
      ( ( v1_xboole_0 @ X12 )
      | ~ ( m1_subset_1 @ X13 @ X12 )
      | ( ( k6_domain_1 @ X12 @ X13 )
        = ( k1_tarski @ X13 ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k6_domain_1])).

thf('35',plain,
    ( ( ( k6_domain_1 @ ( u1_struct_0 @ sk_B ) @ sk_D )
      = ( k1_tarski @ sk_D ) )
    | ( v1_xboole_0 @ ( u1_struct_0 @ sk_B ) ) ),
    inference('sup-',[status(thm)],['33','34'])).

thf('36',plain,(
    ( k8_relset_1 @ ( u1_struct_0 @ sk_A ) @ ( u1_struct_0 @ sk_B ) @ sk_C @ ( k6_domain_1 @ ( u1_struct_0 @ sk_B ) @ sk_D ) )
 != ( k2_pre_topc @ sk_A @ ( k6_domain_1 @ ( u1_struct_0 @ sk_A ) @ sk_E ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('37',plain,(
    sk_D = sk_E ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('38',plain,(
    ( k8_relset_1 @ ( u1_struct_0 @ sk_A ) @ ( u1_struct_0 @ sk_B ) @ sk_C @ ( k6_domain_1 @ ( u1_struct_0 @ sk_B ) @ sk_D ) )
 != ( k2_pre_topc @ sk_A @ ( k6_domain_1 @ ( u1_struct_0 @ sk_A ) @ sk_D ) ) ),
    inference(demod,[status(thm)],['36','37'])).

thf('39',plain,
    ( ( ( k8_relset_1 @ ( u1_struct_0 @ sk_A ) @ ( u1_struct_0 @ sk_B ) @ sk_C @ ( k1_tarski @ sk_D ) )
     != ( k2_pre_topc @ sk_A @ ( k6_domain_1 @ ( u1_struct_0 @ sk_A ) @ sk_D ) ) )
    | ( v1_xboole_0 @ ( u1_struct_0 @ sk_B ) ) ),
    inference('sup-',[status(thm)],['35','38'])).

thf('40',plain,
    ( ( ( k2_pre_topc @ sk_A @ ( k1_tarski @ sk_D ) )
     != ( k2_pre_topc @ sk_A @ ( k6_domain_1 @ ( u1_struct_0 @ sk_A ) @ sk_D ) ) )
    | ( ( u1_struct_0 @ sk_B )
      = k1_xboole_0 )
    | ( v2_struct_0 @ sk_B )
    | ( v2_struct_0 @ sk_A )
    | ( v1_xboole_0 @ ( u1_struct_0 @ sk_B ) ) ),
    inference('sup-',[status(thm)],['32','39'])).

thf('41',plain,
    ( ( ( k2_pre_topc @ sk_A @ ( k1_tarski @ sk_D ) )
     != ( k2_pre_topc @ sk_A @ ( k1_tarski @ sk_D ) ) )
    | ( v1_xboole_0 @ ( u1_struct_0 @ sk_A ) )
    | ( v1_xboole_0 @ ( u1_struct_0 @ sk_B ) )
    | ( v2_struct_0 @ sk_A )
    | ( v2_struct_0 @ sk_B )
    | ( ( u1_struct_0 @ sk_B )
      = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['5','40'])).

thf('42',plain,
    ( ( ( u1_struct_0 @ sk_B )
      = k1_xboole_0 )
    | ( v2_struct_0 @ sk_B )
    | ( v2_struct_0 @ sk_A )
    | ( v1_xboole_0 @ ( u1_struct_0 @ sk_B ) )
    | ( v1_xboole_0 @ ( u1_struct_0 @ sk_A ) ) ),
    inference(simplify,[status(thm)],['41'])).

thf(fc2_struct_0,axiom,(
    ! [A: $i] :
      ( ( ~ ( v2_struct_0 @ A )
        & ( l1_struct_0 @ A ) )
     => ~ ( v1_xboole_0 @ ( u1_struct_0 @ A ) ) ) )).

thf('43',plain,(
    ! [X8: $i] :
      ( ~ ( v1_xboole_0 @ ( u1_struct_0 @ X8 ) )
      | ~ ( l1_struct_0 @ X8 )
      | ( v2_struct_0 @ X8 ) ) ),
    inference(cnf,[status(esa)],[fc2_struct_0])).

thf('44',plain,
    ( ( v1_xboole_0 @ ( u1_struct_0 @ sk_B ) )
    | ( v2_struct_0 @ sk_A )
    | ( v2_struct_0 @ sk_B )
    | ( ( u1_struct_0 @ sk_B )
      = k1_xboole_0 )
    | ( v2_struct_0 @ sk_A )
    | ~ ( l1_struct_0 @ sk_A ) ),
    inference('sup-',[status(thm)],['42','43'])).

thf('45',plain,(
    l1_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(dt_l1_pre_topc,axiom,(
    ! [A: $i] :
      ( ( l1_pre_topc @ A )
     => ( l1_struct_0 @ A ) ) )).

thf('46',plain,(
    ! [X5: $i] :
      ( ( l1_struct_0 @ X5 )
      | ~ ( l1_pre_topc @ X5 ) ) ),
    inference(cnf,[status(esa)],[dt_l1_pre_topc])).

thf('47',plain,(
    l1_struct_0 @ sk_A ),
    inference('sup-',[status(thm)],['45','46'])).

thf('48',plain,
    ( ( v1_xboole_0 @ ( u1_struct_0 @ sk_B ) )
    | ( v2_struct_0 @ sk_A )
    | ( v2_struct_0 @ sk_B )
    | ( ( u1_struct_0 @ sk_B )
      = k1_xboole_0 )
    | ( v2_struct_0 @ sk_A ) ),
    inference(demod,[status(thm)],['44','47'])).

thf('49',plain,
    ( ( ( u1_struct_0 @ sk_B )
      = k1_xboole_0 )
    | ( v2_struct_0 @ sk_B )
    | ( v2_struct_0 @ sk_A )
    | ( v1_xboole_0 @ ( u1_struct_0 @ sk_B ) ) ),
    inference(simplify,[status(thm)],['48'])).

thf('50',plain,(
    ! [X8: $i] :
      ( ~ ( v1_xboole_0 @ ( u1_struct_0 @ X8 ) )
      | ~ ( l1_struct_0 @ X8 )
      | ( v2_struct_0 @ X8 ) ) ),
    inference(cnf,[status(esa)],[fc2_struct_0])).

thf('51',plain,
    ( ( v2_struct_0 @ sk_A )
    | ( v2_struct_0 @ sk_B )
    | ( ( u1_struct_0 @ sk_B )
      = k1_xboole_0 )
    | ( v2_struct_0 @ sk_B )
    | ~ ( l1_struct_0 @ sk_B ) ),
    inference('sup-',[status(thm)],['49','50'])).

thf('52',plain,(
    m1_pre_topc @ sk_B @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(dt_m1_pre_topc,axiom,(
    ! [A: $i] :
      ( ( l1_pre_topc @ A )
     => ! [B: $i] :
          ( ( m1_pre_topc @ B @ A )
         => ( l1_pre_topc @ B ) ) ) )).

thf('53',plain,(
    ! [X6: $i,X7: $i] :
      ( ~ ( m1_pre_topc @ X6 @ X7 )
      | ( l1_pre_topc @ X6 )
      | ~ ( l1_pre_topc @ X7 ) ) ),
    inference(cnf,[status(esa)],[dt_m1_pre_topc])).

thf('54',plain,
    ( ~ ( l1_pre_topc @ sk_A )
    | ( l1_pre_topc @ sk_B ) ),
    inference('sup-',[status(thm)],['52','53'])).

thf('55',plain,(
    l1_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('56',plain,(
    l1_pre_topc @ sk_B ),
    inference(demod,[status(thm)],['54','55'])).

thf('57',plain,(
    ! [X5: $i] :
      ( ( l1_struct_0 @ X5 )
      | ~ ( l1_pre_topc @ X5 ) ) ),
    inference(cnf,[status(esa)],[dt_l1_pre_topc])).

thf('58',plain,(
    l1_struct_0 @ sk_B ),
    inference('sup-',[status(thm)],['56','57'])).

thf('59',plain,
    ( ( v2_struct_0 @ sk_A )
    | ( v2_struct_0 @ sk_B )
    | ( ( u1_struct_0 @ sk_B )
      = k1_xboole_0 )
    | ( v2_struct_0 @ sk_B ) ),
    inference(demod,[status(thm)],['51','58'])).

thf('60',plain,
    ( ( ( u1_struct_0 @ sk_B )
      = k1_xboole_0 )
    | ( v2_struct_0 @ sk_B )
    | ( v2_struct_0 @ sk_A ) ),
    inference(simplify,[status(thm)],['59'])).

thf('61',plain,(
    ~ ( v2_struct_0 @ sk_B ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('62',plain,
    ( ( v2_struct_0 @ sk_A )
    | ( ( u1_struct_0 @ sk_B )
      = k1_xboole_0 ) ),
    inference(clc,[status(thm)],['60','61'])).

thf('63',plain,(
    ~ ( v2_struct_0 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('64',plain,
    ( ( u1_struct_0 @ sk_B )
    = k1_xboole_0 ),
    inference(clc,[status(thm)],['62','63'])).

thf('65',plain,(
    ! [X8: $i] :
      ( ~ ( v1_xboole_0 @ ( u1_struct_0 @ X8 ) )
      | ~ ( l1_struct_0 @ X8 )
      | ( v2_struct_0 @ X8 ) ) ),
    inference(cnf,[status(esa)],[fc2_struct_0])).

thf('66',plain,
    ( ~ ( v1_xboole_0 @ k1_xboole_0 )
    | ( v2_struct_0 @ sk_B )
    | ~ ( l1_struct_0 @ sk_B ) ),
    inference('sup-',[status(thm)],['64','65'])).

thf(fc1_xboole_0,axiom,(
    v1_xboole_0 @ k1_xboole_0 )).

thf('67',plain,(
    v1_xboole_0 @ k1_xboole_0 ),
    inference(cnf,[status(esa)],[fc1_xboole_0])).

thf('68',plain,(
    l1_struct_0 @ sk_B ),
    inference('sup-',[status(thm)],['56','57'])).

thf('69',plain,(
    v2_struct_0 @ sk_B ),
    inference(demod,[status(thm)],['66','67','68'])).

thf('70',plain,(
    $false ),
    inference(demod,[status(thm)],['0','69'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.K0wuXyBFfR
% 0.12/0.34  % Computer   : n022.cluster.edu
% 0.12/0.34  % Model      : x86_64 x86_64
% 0.12/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.34  % Memory     : 8042.1875MB
% 0.12/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % DateTime   : Tue Dec  1 17:22:11 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  % Running portfolio for 600 s
% 0.12/0.34  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.12/0.34  % Number of cores: 8
% 0.12/0.34  % Python version: Python 3.6.8
% 0.12/0.34  % Running in FO mode
% 0.19/0.47  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.19/0.47  % Solved by: fo/fo7.sh
% 0.19/0.47  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.19/0.47  % done 59 iterations in 0.024s
% 0.19/0.47  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.19/0.47  % SZS output start Refutation
% 0.19/0.47  thf(k2_zfmisc_1_type, type, k2_zfmisc_1: $i > $i > $i).
% 0.19/0.47  thf(v1_funct_1_type, type, v1_funct_1: $i > $o).
% 0.19/0.47  thf(u1_struct_0_type, type, u1_struct_0: $i > $i).
% 0.19/0.47  thf(sk_E_type, type, sk_E: $i).
% 0.19/0.47  thf(k1_tarski_type, type, k1_tarski: $i > $i).
% 0.19/0.47  thf(v1_xboole_0_type, type, v1_xboole_0: $i > $o).
% 0.19/0.47  thf(m1_pre_topc_type, type, m1_pre_topc: $i > $i > $o).
% 0.19/0.47  thf(v1_funct_2_type, type, v1_funct_2: $i > $i > $i > $o).
% 0.19/0.47  thf(sk_C_type, type, sk_C: $i).
% 0.19/0.47  thf(v5_pre_topc_type, type, v5_pre_topc: $i > $i > $i > $o).
% 0.19/0.47  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 0.19/0.47  thf(l1_pre_topc_type, type, l1_pre_topc: $i > $o).
% 0.19/0.47  thf(v4_tex_2_type, type, v4_tex_2: $i > $i > $o).
% 0.19/0.47  thf(m1_subset_1_type, type, m1_subset_1: $i > $i > $o).
% 0.19/0.47  thf(k2_pre_topc_type, type, k2_pre_topc: $i > $i > $i).
% 0.19/0.47  thf(v3_tdlat_3_type, type, v3_tdlat_3: $i > $o).
% 0.19/0.47  thf(k8_relset_1_type, type, k8_relset_1: $i > $i > $i > $i > $i).
% 0.19/0.47  thf(k6_domain_1_type, type, k6_domain_1: $i > $i > $i).
% 0.19/0.47  thf(sk_A_type, type, sk_A: $i).
% 0.19/0.47  thf(sk_B_type, type, sk_B: $i).
% 0.19/0.47  thf(sk_D_type, type, sk_D: $i).
% 0.19/0.47  thf(v3_borsuk_1_type, type, v3_borsuk_1: $i > $i > $i > $o).
% 0.19/0.47  thf(v2_struct_0_type, type, v2_struct_0: $i > $o).
% 0.19/0.47  thf(v2_pre_topc_type, type, v2_pre_topc: $i > $o).
% 0.19/0.47  thf(l1_struct_0_type, type, l1_struct_0: $i > $o).
% 0.19/0.47  thf(k1_zfmisc_1_type, type, k1_zfmisc_1: $i > $i).
% 0.19/0.47  thf(t77_tex_2, conjecture,
% 0.19/0.47    (![A:$i]:
% 0.19/0.47     ( ( ( ~( v2_struct_0 @ A ) ) & ( v2_pre_topc @ A ) & ( v3_tdlat_3 @ A ) & 
% 0.19/0.47         ( l1_pre_topc @ A ) ) =>
% 0.19/0.47       ( ![B:$i]:
% 0.19/0.47         ( ( ( ~( v2_struct_0 @ B ) ) & ( v4_tex_2 @ B @ A ) & 
% 0.19/0.47             ( m1_pre_topc @ B @ A ) ) =>
% 0.19/0.47           ( ![C:$i]:
% 0.19/0.47             ( ( ( v1_funct_1 @ C ) & 
% 0.19/0.47                 ( v1_funct_2 @ C @ ( u1_struct_0 @ A ) @ ( u1_struct_0 @ B ) ) & 
% 0.19/0.47                 ( v5_pre_topc @ C @ A @ B ) & 
% 0.19/0.47                 ( m1_subset_1 @
% 0.19/0.47                   C @ 
% 0.19/0.47                   ( k1_zfmisc_1 @
% 0.19/0.47                     ( k2_zfmisc_1 @ ( u1_struct_0 @ A ) @ ( u1_struct_0 @ B ) ) ) ) ) =>
% 0.19/0.47               ( ( v3_borsuk_1 @ C @ A @ B ) =>
% 0.19/0.47                 ( ![D:$i]:
% 0.19/0.47                   ( ( m1_subset_1 @ D @ ( u1_struct_0 @ B ) ) =>
% 0.19/0.47                     ( ![E:$i]:
% 0.19/0.47                       ( ( m1_subset_1 @ E @ ( u1_struct_0 @ A ) ) =>
% 0.19/0.47                         ( ( ( D ) = ( E ) ) =>
% 0.19/0.47                           ( ( k8_relset_1 @
% 0.19/0.47                               ( u1_struct_0 @ A ) @ ( u1_struct_0 @ B ) @ C @ 
% 0.19/0.47                               ( k6_domain_1 @ ( u1_struct_0 @ B ) @ D ) ) =
% 0.19/0.47                             ( k2_pre_topc @
% 0.19/0.47                               A @ ( k6_domain_1 @ ( u1_struct_0 @ A ) @ E ) ) ) ) ) ) ) ) ) ) ) ) ) ))).
% 0.19/0.47  thf(zf_stmt_0, negated_conjecture,
% 0.19/0.47    (~( ![A:$i]:
% 0.19/0.47        ( ( ( ~( v2_struct_0 @ A ) ) & ( v2_pre_topc @ A ) & 
% 0.19/0.47            ( v3_tdlat_3 @ A ) & ( l1_pre_topc @ A ) ) =>
% 0.19/0.47          ( ![B:$i]:
% 0.19/0.47            ( ( ( ~( v2_struct_0 @ B ) ) & ( v4_tex_2 @ B @ A ) & 
% 0.19/0.47                ( m1_pre_topc @ B @ A ) ) =>
% 0.19/0.47              ( ![C:$i]:
% 0.19/0.47                ( ( ( v1_funct_1 @ C ) & 
% 0.19/0.47                    ( v1_funct_2 @
% 0.19/0.47                      C @ ( u1_struct_0 @ A ) @ ( u1_struct_0 @ B ) ) & 
% 0.19/0.47                    ( v5_pre_topc @ C @ A @ B ) & 
% 0.19/0.47                    ( m1_subset_1 @
% 0.19/0.47                      C @ 
% 0.19/0.47                      ( k1_zfmisc_1 @
% 0.19/0.47                        ( k2_zfmisc_1 @
% 0.19/0.47                          ( u1_struct_0 @ A ) @ ( u1_struct_0 @ B ) ) ) ) ) =>
% 0.19/0.47                  ( ( v3_borsuk_1 @ C @ A @ B ) =>
% 0.19/0.47                    ( ![D:$i]:
% 0.19/0.47                      ( ( m1_subset_1 @ D @ ( u1_struct_0 @ B ) ) =>
% 0.19/0.47                        ( ![E:$i]:
% 0.19/0.47                          ( ( m1_subset_1 @ E @ ( u1_struct_0 @ A ) ) =>
% 0.19/0.47                            ( ( ( D ) = ( E ) ) =>
% 0.19/0.47                              ( ( k8_relset_1 @
% 0.19/0.47                                  ( u1_struct_0 @ A ) @ ( u1_struct_0 @ B ) @ 
% 0.19/0.47                                  C @ ( k6_domain_1 @ ( u1_struct_0 @ B ) @ D ) ) =
% 0.19/0.47                                ( k2_pre_topc @
% 0.19/0.47                                  A @ ( k6_domain_1 @ ( u1_struct_0 @ A ) @ E ) ) ) ) ) ) ) ) ) ) ) ) ) ) )),
% 0.19/0.47    inference('cnf.neg', [status(esa)], [t77_tex_2])).
% 0.19/0.47  thf('0', plain, (~ (v2_struct_0 @ sk_B)),
% 0.19/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.19/0.47  thf('1', plain, ((m1_subset_1 @ sk_E @ (u1_struct_0 @ sk_A))),
% 0.19/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.19/0.47  thf('2', plain, (((sk_D) = (sk_E))),
% 0.19/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.19/0.47  thf('3', plain, ((m1_subset_1 @ sk_D @ (u1_struct_0 @ sk_A))),
% 0.19/0.47      inference('demod', [status(thm)], ['1', '2'])).
% 0.19/0.47  thf(redefinition_k6_domain_1, axiom,
% 0.19/0.47    (![A:$i,B:$i]:
% 0.19/0.47     ( ( ( ~( v1_xboole_0 @ A ) ) & ( m1_subset_1 @ B @ A ) ) =>
% 0.19/0.47       ( ( k6_domain_1 @ A @ B ) = ( k1_tarski @ B ) ) ))).
% 0.19/0.47  thf('4', plain,
% 0.19/0.47      (![X12 : $i, X13 : $i]:
% 0.19/0.47         ((v1_xboole_0 @ X12)
% 0.19/0.47          | ~ (m1_subset_1 @ X13 @ X12)
% 0.19/0.47          | ((k6_domain_1 @ X12 @ X13) = (k1_tarski @ X13)))),
% 0.19/0.47      inference('cnf', [status(esa)], [redefinition_k6_domain_1])).
% 0.19/0.47  thf('5', plain,
% 0.19/0.47      ((((k6_domain_1 @ (u1_struct_0 @ sk_A) @ sk_D) = (k1_tarski @ sk_D))
% 0.19/0.47        | (v1_xboole_0 @ (u1_struct_0 @ sk_A)))),
% 0.19/0.47      inference('sup-', [status(thm)], ['3', '4'])).
% 0.19/0.47  thf('6', plain, ((m1_pre_topc @ sk_B @ sk_A)),
% 0.19/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.19/0.47  thf('7', plain, ((m1_subset_1 @ sk_D @ (u1_struct_0 @ sk_B))),
% 0.19/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.19/0.47  thf(t55_subset_1, axiom,
% 0.19/0.47    (![A:$i,B:$i]:
% 0.19/0.47     ( ( m1_subset_1 @ B @ A ) =>
% 0.19/0.47       ( ( ( A ) != ( k1_xboole_0 ) ) =>
% 0.19/0.47         ( m1_subset_1 @ ( k1_tarski @ B ) @ ( k1_zfmisc_1 @ A ) ) ) ))).
% 0.19/0.47  thf('8', plain,
% 0.19/0.47      (![X3 : $i, X4 : $i]:
% 0.19/0.47         (((X3) = (k1_xboole_0))
% 0.19/0.47          | ~ (m1_subset_1 @ X4 @ X3)
% 0.19/0.47          | (m1_subset_1 @ (k1_tarski @ X4) @ (k1_zfmisc_1 @ X3)))),
% 0.19/0.47      inference('cnf', [status(esa)], [t55_subset_1])).
% 0.19/0.47  thf('9', plain,
% 0.19/0.47      (((m1_subset_1 @ (k1_tarski @ sk_D) @ 
% 0.19/0.47         (k1_zfmisc_1 @ (u1_struct_0 @ sk_B)))
% 0.19/0.47        | ((u1_struct_0 @ sk_B) = (k1_xboole_0)))),
% 0.19/0.47      inference('sup-', [status(thm)], ['7', '8'])).
% 0.19/0.47  thf(t39_pre_topc, axiom,
% 0.19/0.47    (![A:$i]:
% 0.19/0.47     ( ( l1_pre_topc @ A ) =>
% 0.19/0.47       ( ![B:$i]:
% 0.19/0.47         ( ( m1_pre_topc @ B @ A ) =>
% 0.19/0.47           ( ![C:$i]:
% 0.19/0.47             ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( u1_struct_0 @ B ) ) ) =>
% 0.19/0.47               ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) ) ) ) ) ))).
% 0.19/0.47  thf('10', plain,
% 0.19/0.47      (![X9 : $i, X10 : $i, X11 : $i]:
% 0.19/0.47         (~ (m1_pre_topc @ X9 @ X10)
% 0.19/0.47          | (m1_subset_1 @ X11 @ (k1_zfmisc_1 @ (u1_struct_0 @ X10)))
% 0.19/0.47          | ~ (m1_subset_1 @ X11 @ (k1_zfmisc_1 @ (u1_struct_0 @ X9)))
% 0.19/0.47          | ~ (l1_pre_topc @ X10))),
% 0.19/0.47      inference('cnf', [status(esa)], [t39_pre_topc])).
% 0.19/0.47  thf('11', plain,
% 0.19/0.47      (![X0 : $i]:
% 0.19/0.47         (((u1_struct_0 @ sk_B) = (k1_xboole_0))
% 0.19/0.47          | ~ (l1_pre_topc @ X0)
% 0.19/0.47          | (m1_subset_1 @ (k1_tarski @ sk_D) @ 
% 0.19/0.47             (k1_zfmisc_1 @ (u1_struct_0 @ X0)))
% 0.19/0.47          | ~ (m1_pre_topc @ sk_B @ X0))),
% 0.19/0.47      inference('sup-', [status(thm)], ['9', '10'])).
% 0.19/0.47  thf('12', plain,
% 0.19/0.47      (((m1_subset_1 @ (k1_tarski @ sk_D) @ 
% 0.19/0.47         (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))
% 0.19/0.47        | ~ (l1_pre_topc @ sk_A)
% 0.19/0.47        | ((u1_struct_0 @ sk_B) = (k1_xboole_0)))),
% 0.19/0.47      inference('sup-', [status(thm)], ['6', '11'])).
% 0.19/0.47  thf('13', plain, ((l1_pre_topc @ sk_A)),
% 0.19/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.19/0.47  thf('14', plain,
% 0.19/0.47      (((m1_subset_1 @ (k1_tarski @ sk_D) @ 
% 0.19/0.47         (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))
% 0.19/0.47        | ((u1_struct_0 @ sk_B) = (k1_xboole_0)))),
% 0.19/0.47      inference('demod', [status(thm)], ['12', '13'])).
% 0.19/0.47  thf('15', plain,
% 0.19/0.47      (((m1_subset_1 @ (k1_tarski @ sk_D) @ 
% 0.19/0.47         (k1_zfmisc_1 @ (u1_struct_0 @ sk_B)))
% 0.19/0.47        | ((u1_struct_0 @ sk_B) = (k1_xboole_0)))),
% 0.19/0.47      inference('sup-', [status(thm)], ['7', '8'])).
% 0.19/0.47  thf('16', plain,
% 0.19/0.47      ((m1_subset_1 @ sk_C @ 
% 0.19/0.47        (k1_zfmisc_1 @ 
% 0.19/0.47         (k2_zfmisc_1 @ (u1_struct_0 @ sk_A) @ (u1_struct_0 @ sk_B))))),
% 0.19/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.19/0.47  thf(t76_tex_2, axiom,
% 0.19/0.47    (![A:$i]:
% 0.19/0.47     ( ( ( ~( v2_struct_0 @ A ) ) & ( v2_pre_topc @ A ) & ( v3_tdlat_3 @ A ) & 
% 0.19/0.47         ( l1_pre_topc @ A ) ) =>
% 0.19/0.47       ( ![B:$i]:
% 0.19/0.47         ( ( ( ~( v2_struct_0 @ B ) ) & ( v4_tex_2 @ B @ A ) & 
% 0.19/0.47             ( m1_pre_topc @ B @ A ) ) =>
% 0.19/0.47           ( ![C:$i]:
% 0.19/0.47             ( ( ( v1_funct_1 @ C ) & 
% 0.19/0.47                 ( v1_funct_2 @ C @ ( u1_struct_0 @ A ) @ ( u1_struct_0 @ B ) ) & 
% 0.19/0.47                 ( v5_pre_topc @ C @ A @ B ) & 
% 0.19/0.47                 ( m1_subset_1 @
% 0.19/0.47                   C @ 
% 0.19/0.47                   ( k1_zfmisc_1 @
% 0.19/0.47                     ( k2_zfmisc_1 @ ( u1_struct_0 @ A ) @ ( u1_struct_0 @ B ) ) ) ) ) =>
% 0.19/0.47               ( ( v3_borsuk_1 @ C @ A @ B ) =>
% 0.19/0.47                 ( ![D:$i]:
% 0.19/0.47                   ( ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ ( u1_struct_0 @ B ) ) ) =>
% 0.19/0.47                     ( ![E:$i]:
% 0.19/0.47                       ( ( m1_subset_1 @
% 0.19/0.47                           E @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) =>
% 0.19/0.47                         ( ( ( D ) = ( E ) ) =>
% 0.19/0.47                           ( ( k8_relset_1 @
% 0.19/0.47                               ( u1_struct_0 @ A ) @ ( u1_struct_0 @ B ) @ C @ 
% 0.19/0.47                               D ) =
% 0.19/0.47                             ( k2_pre_topc @ A @ E ) ) ) ) ) ) ) ) ) ) ) ) ))).
% 0.19/0.47  thf('17', plain,
% 0.19/0.47      (![X14 : $i, X15 : $i, X16 : $i, X17 : $i, X18 : $i]:
% 0.19/0.47         ((v2_struct_0 @ X14)
% 0.19/0.47          | ~ (v4_tex_2 @ X14 @ X15)
% 0.19/0.47          | ~ (m1_pre_topc @ X14 @ X15)
% 0.19/0.47          | ~ (v3_borsuk_1 @ X16 @ X15 @ X14)
% 0.19/0.47          | ~ (m1_subset_1 @ X17 @ (k1_zfmisc_1 @ (u1_struct_0 @ X14)))
% 0.19/0.47          | ((X17) != (X18))
% 0.19/0.47          | ((k8_relset_1 @ (u1_struct_0 @ X15) @ (u1_struct_0 @ X14) @ X16 @ 
% 0.19/0.47              X17) = (k2_pre_topc @ X15 @ X18))
% 0.19/0.47          | ~ (m1_subset_1 @ X18 @ (k1_zfmisc_1 @ (u1_struct_0 @ X15)))
% 0.19/0.47          | ~ (m1_subset_1 @ X16 @ 
% 0.19/0.47               (k1_zfmisc_1 @ 
% 0.19/0.47                (k2_zfmisc_1 @ (u1_struct_0 @ X15) @ (u1_struct_0 @ X14))))
% 0.19/0.47          | ~ (v5_pre_topc @ X16 @ X15 @ X14)
% 0.19/0.47          | ~ (v1_funct_2 @ X16 @ (u1_struct_0 @ X15) @ (u1_struct_0 @ X14))
% 0.19/0.47          | ~ (v1_funct_1 @ X16)
% 0.19/0.47          | ~ (l1_pre_topc @ X15)
% 0.19/0.47          | ~ (v3_tdlat_3 @ X15)
% 0.19/0.47          | ~ (v2_pre_topc @ X15)
% 0.19/0.47          | (v2_struct_0 @ X15))),
% 0.19/0.47      inference('cnf', [status(esa)], [t76_tex_2])).
% 0.19/0.47  thf('18', plain,
% 0.19/0.47      (![X14 : $i, X15 : $i, X16 : $i, X18 : $i]:
% 0.19/0.47         ((v2_struct_0 @ X15)
% 0.19/0.47          | ~ (v2_pre_topc @ X15)
% 0.19/0.47          | ~ (v3_tdlat_3 @ X15)
% 0.19/0.47          | ~ (l1_pre_topc @ X15)
% 0.19/0.47          | ~ (v1_funct_1 @ X16)
% 0.19/0.47          | ~ (v1_funct_2 @ X16 @ (u1_struct_0 @ X15) @ (u1_struct_0 @ X14))
% 0.19/0.47          | ~ (v5_pre_topc @ X16 @ X15 @ X14)
% 0.19/0.47          | ~ (m1_subset_1 @ X16 @ 
% 0.19/0.47               (k1_zfmisc_1 @ 
% 0.19/0.47                (k2_zfmisc_1 @ (u1_struct_0 @ X15) @ (u1_struct_0 @ X14))))
% 0.19/0.47          | ~ (m1_subset_1 @ X18 @ (k1_zfmisc_1 @ (u1_struct_0 @ X15)))
% 0.19/0.47          | ((k8_relset_1 @ (u1_struct_0 @ X15) @ (u1_struct_0 @ X14) @ X16 @ 
% 0.19/0.47              X18) = (k2_pre_topc @ X15 @ X18))
% 0.19/0.47          | ~ (m1_subset_1 @ X18 @ (k1_zfmisc_1 @ (u1_struct_0 @ X14)))
% 0.19/0.47          | ~ (v3_borsuk_1 @ X16 @ X15 @ X14)
% 0.19/0.47          | ~ (m1_pre_topc @ X14 @ X15)
% 0.19/0.47          | ~ (v4_tex_2 @ X14 @ X15)
% 0.19/0.47          | (v2_struct_0 @ X14))),
% 0.19/0.47      inference('simplify', [status(thm)], ['17'])).
% 0.19/0.47  thf('19', plain,
% 0.19/0.47      (![X0 : $i]:
% 0.19/0.47         ((v2_struct_0 @ sk_B)
% 0.19/0.47          | ~ (v4_tex_2 @ sk_B @ sk_A)
% 0.19/0.47          | ~ (m1_pre_topc @ sk_B @ sk_A)
% 0.19/0.47          | ~ (v3_borsuk_1 @ sk_C @ sk_A @ sk_B)
% 0.19/0.47          | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_B)))
% 0.19/0.47          | ((k8_relset_1 @ (u1_struct_0 @ sk_A) @ (u1_struct_0 @ sk_B) @ 
% 0.19/0.47              sk_C @ X0) = (k2_pre_topc @ sk_A @ X0))
% 0.19/0.47          | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))
% 0.19/0.47          | ~ (v5_pre_topc @ sk_C @ sk_A @ sk_B)
% 0.19/0.47          | ~ (v1_funct_2 @ sk_C @ (u1_struct_0 @ sk_A) @ (u1_struct_0 @ sk_B))
% 0.19/0.47          | ~ (v1_funct_1 @ sk_C)
% 0.19/0.47          | ~ (l1_pre_topc @ sk_A)
% 0.19/0.47          | ~ (v3_tdlat_3 @ sk_A)
% 0.19/0.47          | ~ (v2_pre_topc @ sk_A)
% 0.19/0.47          | (v2_struct_0 @ sk_A))),
% 0.19/0.47      inference('sup-', [status(thm)], ['16', '18'])).
% 0.19/0.47  thf('20', plain, ((v4_tex_2 @ sk_B @ sk_A)),
% 0.19/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.19/0.47  thf('21', plain, ((m1_pre_topc @ sk_B @ sk_A)),
% 0.19/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.19/0.47  thf('22', plain, ((v3_borsuk_1 @ sk_C @ sk_A @ sk_B)),
% 0.19/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.19/0.47  thf('23', plain, ((v5_pre_topc @ sk_C @ sk_A @ sk_B)),
% 0.19/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.19/0.47  thf('24', plain,
% 0.19/0.47      ((v1_funct_2 @ sk_C @ (u1_struct_0 @ sk_A) @ (u1_struct_0 @ sk_B))),
% 0.19/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.19/0.47  thf('25', plain, ((v1_funct_1 @ sk_C)),
% 0.19/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.19/0.47  thf('26', plain, ((l1_pre_topc @ sk_A)),
% 0.19/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.19/0.47  thf('27', plain, ((v3_tdlat_3 @ sk_A)),
% 0.19/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.19/0.47  thf('28', plain, ((v2_pre_topc @ sk_A)),
% 0.19/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.19/0.47  thf('29', plain,
% 0.19/0.47      (![X0 : $i]:
% 0.19/0.47         ((v2_struct_0 @ sk_B)
% 0.19/0.47          | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_B)))
% 0.19/0.47          | ((k8_relset_1 @ (u1_struct_0 @ sk_A) @ (u1_struct_0 @ sk_B) @ 
% 0.19/0.47              sk_C @ X0) = (k2_pre_topc @ sk_A @ X0))
% 0.19/0.47          | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))
% 0.19/0.47          | (v2_struct_0 @ sk_A))),
% 0.19/0.47      inference('demod', [status(thm)],
% 0.19/0.47                ['19', '20', '21', '22', '23', '24', '25', '26', '27', '28'])).
% 0.19/0.47  thf('30', plain,
% 0.19/0.47      ((((u1_struct_0 @ sk_B) = (k1_xboole_0))
% 0.19/0.47        | (v2_struct_0 @ sk_A)
% 0.19/0.47        | ~ (m1_subset_1 @ (k1_tarski @ sk_D) @ 
% 0.19/0.47             (k1_zfmisc_1 @ (u1_struct_0 @ sk_A)))
% 0.19/0.47        | ((k8_relset_1 @ (u1_struct_0 @ sk_A) @ (u1_struct_0 @ sk_B) @ sk_C @ 
% 0.19/0.47            (k1_tarski @ sk_D)) = (k2_pre_topc @ sk_A @ (k1_tarski @ sk_D)))
% 0.19/0.47        | (v2_struct_0 @ sk_B))),
% 0.19/0.47      inference('sup-', [status(thm)], ['15', '29'])).
% 0.19/0.47  thf('31', plain,
% 0.19/0.47      ((((u1_struct_0 @ sk_B) = (k1_xboole_0))
% 0.19/0.47        | (v2_struct_0 @ sk_B)
% 0.19/0.47        | ((k8_relset_1 @ (u1_struct_0 @ sk_A) @ (u1_struct_0 @ sk_B) @ sk_C @ 
% 0.19/0.47            (k1_tarski @ sk_D)) = (k2_pre_topc @ sk_A @ (k1_tarski @ sk_D)))
% 0.19/0.47        | (v2_struct_0 @ sk_A)
% 0.19/0.47        | ((u1_struct_0 @ sk_B) = (k1_xboole_0)))),
% 0.19/0.47      inference('sup-', [status(thm)], ['14', '30'])).
% 0.19/0.47  thf('32', plain,
% 0.19/0.47      (((v2_struct_0 @ sk_A)
% 0.19/0.47        | ((k8_relset_1 @ (u1_struct_0 @ sk_A) @ (u1_struct_0 @ sk_B) @ sk_C @ 
% 0.19/0.47            (k1_tarski @ sk_D)) = (k2_pre_topc @ sk_A @ (k1_tarski @ sk_D)))
% 0.19/0.47        | (v2_struct_0 @ sk_B)
% 0.19/0.47        | ((u1_struct_0 @ sk_B) = (k1_xboole_0)))),
% 0.19/0.47      inference('simplify', [status(thm)], ['31'])).
% 0.19/0.47  thf('33', plain, ((m1_subset_1 @ sk_D @ (u1_struct_0 @ sk_B))),
% 0.19/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.19/0.47  thf('34', plain,
% 0.19/0.47      (![X12 : $i, X13 : $i]:
% 0.19/0.47         ((v1_xboole_0 @ X12)
% 0.19/0.47          | ~ (m1_subset_1 @ X13 @ X12)
% 0.19/0.47          | ((k6_domain_1 @ X12 @ X13) = (k1_tarski @ X13)))),
% 0.19/0.47      inference('cnf', [status(esa)], [redefinition_k6_domain_1])).
% 0.19/0.47  thf('35', plain,
% 0.19/0.47      ((((k6_domain_1 @ (u1_struct_0 @ sk_B) @ sk_D) = (k1_tarski @ sk_D))
% 0.19/0.47        | (v1_xboole_0 @ (u1_struct_0 @ sk_B)))),
% 0.19/0.47      inference('sup-', [status(thm)], ['33', '34'])).
% 0.19/0.47  thf('36', plain,
% 0.19/0.47      (((k8_relset_1 @ (u1_struct_0 @ sk_A) @ (u1_struct_0 @ sk_B) @ sk_C @ 
% 0.19/0.47         (k6_domain_1 @ (u1_struct_0 @ sk_B) @ sk_D))
% 0.19/0.47         != (k2_pre_topc @ sk_A @ (k6_domain_1 @ (u1_struct_0 @ sk_A) @ sk_E)))),
% 0.19/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.19/0.47  thf('37', plain, (((sk_D) = (sk_E))),
% 0.19/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.19/0.47  thf('38', plain,
% 0.19/0.47      (((k8_relset_1 @ (u1_struct_0 @ sk_A) @ (u1_struct_0 @ sk_B) @ sk_C @ 
% 0.19/0.47         (k6_domain_1 @ (u1_struct_0 @ sk_B) @ sk_D))
% 0.19/0.47         != (k2_pre_topc @ sk_A @ (k6_domain_1 @ (u1_struct_0 @ sk_A) @ sk_D)))),
% 0.19/0.47      inference('demod', [status(thm)], ['36', '37'])).
% 0.19/0.47  thf('39', plain,
% 0.19/0.47      ((((k8_relset_1 @ (u1_struct_0 @ sk_A) @ (u1_struct_0 @ sk_B) @ sk_C @ 
% 0.19/0.47          (k1_tarski @ sk_D))
% 0.19/0.47          != (k2_pre_topc @ sk_A @ (k6_domain_1 @ (u1_struct_0 @ sk_A) @ sk_D)))
% 0.19/0.47        | (v1_xboole_0 @ (u1_struct_0 @ sk_B)))),
% 0.19/0.47      inference('sup-', [status(thm)], ['35', '38'])).
% 0.19/0.47  thf('40', plain,
% 0.19/0.47      ((((k2_pre_topc @ sk_A @ (k1_tarski @ sk_D))
% 0.19/0.47          != (k2_pre_topc @ sk_A @ (k6_domain_1 @ (u1_struct_0 @ sk_A) @ sk_D)))
% 0.19/0.47        | ((u1_struct_0 @ sk_B) = (k1_xboole_0))
% 0.19/0.47        | (v2_struct_0 @ sk_B)
% 0.19/0.47        | (v2_struct_0 @ sk_A)
% 0.19/0.47        | (v1_xboole_0 @ (u1_struct_0 @ sk_B)))),
% 0.19/0.47      inference('sup-', [status(thm)], ['32', '39'])).
% 0.19/0.47  thf('41', plain,
% 0.19/0.47      ((((k2_pre_topc @ sk_A @ (k1_tarski @ sk_D))
% 0.19/0.47          != (k2_pre_topc @ sk_A @ (k1_tarski @ sk_D)))
% 0.19/0.47        | (v1_xboole_0 @ (u1_struct_0 @ sk_A))
% 0.19/0.47        | (v1_xboole_0 @ (u1_struct_0 @ sk_B))
% 0.19/0.47        | (v2_struct_0 @ sk_A)
% 0.19/0.47        | (v2_struct_0 @ sk_B)
% 0.19/0.47        | ((u1_struct_0 @ sk_B) = (k1_xboole_0)))),
% 0.19/0.47      inference('sup-', [status(thm)], ['5', '40'])).
% 0.19/0.47  thf('42', plain,
% 0.19/0.47      ((((u1_struct_0 @ sk_B) = (k1_xboole_0))
% 0.19/0.47        | (v2_struct_0 @ sk_B)
% 0.19/0.47        | (v2_struct_0 @ sk_A)
% 0.19/0.47        | (v1_xboole_0 @ (u1_struct_0 @ sk_B))
% 0.19/0.47        | (v1_xboole_0 @ (u1_struct_0 @ sk_A)))),
% 0.19/0.47      inference('simplify', [status(thm)], ['41'])).
% 0.19/0.47  thf(fc2_struct_0, axiom,
% 0.19/0.47    (![A:$i]:
% 0.19/0.47     ( ( ( ~( v2_struct_0 @ A ) ) & ( l1_struct_0 @ A ) ) =>
% 0.19/0.47       ( ~( v1_xboole_0 @ ( u1_struct_0 @ A ) ) ) ))).
% 0.19/0.47  thf('43', plain,
% 0.19/0.47      (![X8 : $i]:
% 0.19/0.47         (~ (v1_xboole_0 @ (u1_struct_0 @ X8))
% 0.19/0.47          | ~ (l1_struct_0 @ X8)
% 0.19/0.47          | (v2_struct_0 @ X8))),
% 0.19/0.47      inference('cnf', [status(esa)], [fc2_struct_0])).
% 0.19/0.47  thf('44', plain,
% 0.19/0.47      (((v1_xboole_0 @ (u1_struct_0 @ sk_B))
% 0.19/0.47        | (v2_struct_0 @ sk_A)
% 0.19/0.47        | (v2_struct_0 @ sk_B)
% 0.19/0.47        | ((u1_struct_0 @ sk_B) = (k1_xboole_0))
% 0.19/0.47        | (v2_struct_0 @ sk_A)
% 0.19/0.47        | ~ (l1_struct_0 @ sk_A))),
% 0.19/0.47      inference('sup-', [status(thm)], ['42', '43'])).
% 0.19/0.47  thf('45', plain, ((l1_pre_topc @ sk_A)),
% 0.19/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.19/0.47  thf(dt_l1_pre_topc, axiom,
% 0.19/0.47    (![A:$i]: ( ( l1_pre_topc @ A ) => ( l1_struct_0 @ A ) ))).
% 0.19/0.47  thf('46', plain, (![X5 : $i]: ((l1_struct_0 @ X5) | ~ (l1_pre_topc @ X5))),
% 0.19/0.47      inference('cnf', [status(esa)], [dt_l1_pre_topc])).
% 0.19/0.47  thf('47', plain, ((l1_struct_0 @ sk_A)),
% 0.19/0.47      inference('sup-', [status(thm)], ['45', '46'])).
% 0.19/0.47  thf('48', plain,
% 0.19/0.47      (((v1_xboole_0 @ (u1_struct_0 @ sk_B))
% 0.19/0.47        | (v2_struct_0 @ sk_A)
% 0.19/0.47        | (v2_struct_0 @ sk_B)
% 0.19/0.47        | ((u1_struct_0 @ sk_B) = (k1_xboole_0))
% 0.19/0.47        | (v2_struct_0 @ sk_A))),
% 0.19/0.47      inference('demod', [status(thm)], ['44', '47'])).
% 0.19/0.47  thf('49', plain,
% 0.19/0.47      ((((u1_struct_0 @ sk_B) = (k1_xboole_0))
% 0.19/0.47        | (v2_struct_0 @ sk_B)
% 0.19/0.47        | (v2_struct_0 @ sk_A)
% 0.19/0.47        | (v1_xboole_0 @ (u1_struct_0 @ sk_B)))),
% 0.19/0.47      inference('simplify', [status(thm)], ['48'])).
% 0.19/0.47  thf('50', plain,
% 0.19/0.47      (![X8 : $i]:
% 0.19/0.47         (~ (v1_xboole_0 @ (u1_struct_0 @ X8))
% 0.19/0.47          | ~ (l1_struct_0 @ X8)
% 0.19/0.47          | (v2_struct_0 @ X8))),
% 0.19/0.47      inference('cnf', [status(esa)], [fc2_struct_0])).
% 0.19/0.47  thf('51', plain,
% 0.19/0.47      (((v2_struct_0 @ sk_A)
% 0.19/0.47        | (v2_struct_0 @ sk_B)
% 0.19/0.47        | ((u1_struct_0 @ sk_B) = (k1_xboole_0))
% 0.19/0.47        | (v2_struct_0 @ sk_B)
% 0.19/0.47        | ~ (l1_struct_0 @ sk_B))),
% 0.19/0.47      inference('sup-', [status(thm)], ['49', '50'])).
% 0.19/0.47  thf('52', plain, ((m1_pre_topc @ sk_B @ sk_A)),
% 0.19/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.19/0.47  thf(dt_m1_pre_topc, axiom,
% 0.19/0.47    (![A:$i]:
% 0.19/0.47     ( ( l1_pre_topc @ A ) =>
% 0.19/0.47       ( ![B:$i]: ( ( m1_pre_topc @ B @ A ) => ( l1_pre_topc @ B ) ) ) ))).
% 0.19/0.47  thf('53', plain,
% 0.19/0.47      (![X6 : $i, X7 : $i]:
% 0.19/0.47         (~ (m1_pre_topc @ X6 @ X7) | (l1_pre_topc @ X6) | ~ (l1_pre_topc @ X7))),
% 0.19/0.47      inference('cnf', [status(esa)], [dt_m1_pre_topc])).
% 0.19/0.47  thf('54', plain, ((~ (l1_pre_topc @ sk_A) | (l1_pre_topc @ sk_B))),
% 0.19/0.47      inference('sup-', [status(thm)], ['52', '53'])).
% 0.19/0.47  thf('55', plain, ((l1_pre_topc @ sk_A)),
% 0.19/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.19/0.47  thf('56', plain, ((l1_pre_topc @ sk_B)),
% 0.19/0.47      inference('demod', [status(thm)], ['54', '55'])).
% 0.19/0.47  thf('57', plain, (![X5 : $i]: ((l1_struct_0 @ X5) | ~ (l1_pre_topc @ X5))),
% 0.19/0.47      inference('cnf', [status(esa)], [dt_l1_pre_topc])).
% 0.19/0.47  thf('58', plain, ((l1_struct_0 @ sk_B)),
% 0.19/0.47      inference('sup-', [status(thm)], ['56', '57'])).
% 0.19/0.47  thf('59', plain,
% 0.19/0.47      (((v2_struct_0 @ sk_A)
% 0.19/0.47        | (v2_struct_0 @ sk_B)
% 0.19/0.47        | ((u1_struct_0 @ sk_B) = (k1_xboole_0))
% 0.19/0.47        | (v2_struct_0 @ sk_B))),
% 0.19/0.47      inference('demod', [status(thm)], ['51', '58'])).
% 0.19/0.47  thf('60', plain,
% 0.19/0.47      ((((u1_struct_0 @ sk_B) = (k1_xboole_0))
% 0.19/0.47        | (v2_struct_0 @ sk_B)
% 0.19/0.47        | (v2_struct_0 @ sk_A))),
% 0.19/0.47      inference('simplify', [status(thm)], ['59'])).
% 0.19/0.47  thf('61', plain, (~ (v2_struct_0 @ sk_B)),
% 0.19/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.19/0.47  thf('62', plain,
% 0.19/0.47      (((v2_struct_0 @ sk_A) | ((u1_struct_0 @ sk_B) = (k1_xboole_0)))),
% 0.19/0.47      inference('clc', [status(thm)], ['60', '61'])).
% 0.19/0.47  thf('63', plain, (~ (v2_struct_0 @ sk_A)),
% 0.19/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.19/0.47  thf('64', plain, (((u1_struct_0 @ sk_B) = (k1_xboole_0))),
% 0.19/0.47      inference('clc', [status(thm)], ['62', '63'])).
% 0.19/0.47  thf('65', plain,
% 0.19/0.47      (![X8 : $i]:
% 0.19/0.47         (~ (v1_xboole_0 @ (u1_struct_0 @ X8))
% 0.19/0.47          | ~ (l1_struct_0 @ X8)
% 0.19/0.47          | (v2_struct_0 @ X8))),
% 0.19/0.47      inference('cnf', [status(esa)], [fc2_struct_0])).
% 0.19/0.47  thf('66', plain,
% 0.19/0.47      ((~ (v1_xboole_0 @ k1_xboole_0)
% 0.19/0.47        | (v2_struct_0 @ sk_B)
% 0.19/0.47        | ~ (l1_struct_0 @ sk_B))),
% 0.19/0.47      inference('sup-', [status(thm)], ['64', '65'])).
% 0.19/0.47  thf(fc1_xboole_0, axiom, (v1_xboole_0 @ k1_xboole_0)).
% 0.19/0.47  thf('67', plain, ((v1_xboole_0 @ k1_xboole_0)),
% 0.19/0.47      inference('cnf', [status(esa)], [fc1_xboole_0])).
% 0.19/0.47  thf('68', plain, ((l1_struct_0 @ sk_B)),
% 0.19/0.47      inference('sup-', [status(thm)], ['56', '57'])).
% 0.19/0.47  thf('69', plain, ((v2_struct_0 @ sk_B)),
% 0.19/0.47      inference('demod', [status(thm)], ['66', '67', '68'])).
% 0.19/0.47  thf('70', plain, ($false), inference('demod', [status(thm)], ['0', '69'])).
% 0.19/0.47  
% 0.19/0.47  % SZS output end Refutation
% 0.19/0.47  
% 0.19/0.48  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
