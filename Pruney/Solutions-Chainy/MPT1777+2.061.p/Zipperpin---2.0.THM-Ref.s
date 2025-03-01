%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.VVGKv7QCDd

% Computer   : n008.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 14:10:36 EST 2020

% Result     : Theorem 0.45s
% Output     : Refutation 0.45s
% Verified   : 
% Statistics : Number of formulae       :  155 ( 318 expanded)
%              Number of leaves         :   45 ( 113 expanded)
%              Depth                    :   18
%              Number of atoms          : 1328 (8717 expanded)
%              Number of equality atoms :   16 ( 220 expanded)
%              Maximal formula depth    :   32 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(g1_pre_topc_type,type,(
    g1_pre_topc: $i > $i > $i )).

thf(sk_D_type,type,(
    sk_D: $i )).

thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(sk_G_type,type,(
    sk_G: $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(l1_struct_0_type,type,(
    l1_struct_0: $i > $o )).

thf(sk_C_type,type,(
    sk_C: $i )).

thf(v1_xboole_0_type,type,(
    v1_xboole_0: $i > $o )).

thf(v2_pre_topc_type,type,(
    v2_pre_topc: $i > $o )).

thf(sk_F_type,type,(
    sk_F: $i )).

thf(k3_tmap_1_type,type,(
    k3_tmap_1: $i > $i > $i > $i > $i > $i )).

thf(k2_subset_1_type,type,(
    k2_subset_1: $i > $i )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(v2_struct_0_type,type,(
    v2_struct_0: $i > $o )).

thf(l1_pre_topc_type,type,(
    l1_pre_topc: $i > $o )).

thf(r1_tmap_1_type,type,(
    r1_tmap_1: $i > $i > $i > $i > $o )).

thf(u1_struct_0_type,type,(
    u1_struct_0: $i > $i )).

thf(k2_struct_0_type,type,(
    k2_struct_0: $i > $i )).

thf(v3_pre_topc_type,type,(
    v3_pre_topc: $i > $i > $o )).

thf(m1_connsp_2_type,type,(
    m1_connsp_2: $i > $i > $i > $o )).

thf(sk_E_type,type,(
    sk_E: $i )).

thf(k2_zfmisc_1_type,type,(
    k2_zfmisc_1: $i > $i > $i )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(v1_funct_2_type,type,(
    v1_funct_2: $i > $i > $i > $o )).

thf(u1_pre_topc_type,type,(
    u1_pre_topc: $i > $i )).

thf(m1_pre_topc_type,type,(
    m1_pre_topc: $i > $i > $o )).

thf(v1_funct_1_type,type,(
    v1_funct_1: $i > $o )).

thf(t88_tmap_1,conjecture,(
    ! [A: $i] :
      ( ( ~ ( v2_struct_0 @ A )
        & ( v2_pre_topc @ A )
        & ( l1_pre_topc @ A ) )
     => ! [B: $i] :
          ( ( ~ ( v2_struct_0 @ B )
            & ( v2_pre_topc @ B )
            & ( l1_pre_topc @ B ) )
         => ! [C: $i] :
              ( ( ~ ( v2_struct_0 @ C )
                & ( m1_pre_topc @ C @ A ) )
             => ! [D: $i] :
                  ( ( ~ ( v2_struct_0 @ D )
                    & ( m1_pre_topc @ D @ A ) )
                 => ! [E: $i] :
                      ( ( ( v1_funct_1 @ E )
                        & ( v1_funct_2 @ E @ ( u1_struct_0 @ D ) @ ( u1_struct_0 @ B ) )
                        & ( m1_subset_1 @ E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( u1_struct_0 @ D ) @ ( u1_struct_0 @ B ) ) ) ) )
                     => ( ( ( g1_pre_topc @ ( u1_struct_0 @ C ) @ ( u1_pre_topc @ C ) )
                          = D )
                       => ! [F: $i] :
                            ( ( m1_subset_1 @ F @ ( u1_struct_0 @ D ) )
                           => ! [G: $i] :
                                ( ( m1_subset_1 @ G @ ( u1_struct_0 @ C ) )
                               => ( ( ( F = G )
                                    & ( r1_tmap_1 @ C @ B @ ( k3_tmap_1 @ A @ B @ D @ C @ E ) @ G ) )
                                 => ( r1_tmap_1 @ D @ B @ E @ F ) ) ) ) ) ) ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i] :
        ( ( ~ ( v2_struct_0 @ A )
          & ( v2_pre_topc @ A )
          & ( l1_pre_topc @ A ) )
       => ! [B: $i] :
            ( ( ~ ( v2_struct_0 @ B )
              & ( v2_pre_topc @ B )
              & ( l1_pre_topc @ B ) )
           => ! [C: $i] :
                ( ( ~ ( v2_struct_0 @ C )
                  & ( m1_pre_topc @ C @ A ) )
               => ! [D: $i] :
                    ( ( ~ ( v2_struct_0 @ D )
                      & ( m1_pre_topc @ D @ A ) )
                   => ! [E: $i] :
                        ( ( ( v1_funct_1 @ E )
                          & ( v1_funct_2 @ E @ ( u1_struct_0 @ D ) @ ( u1_struct_0 @ B ) )
                          & ( m1_subset_1 @ E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( u1_struct_0 @ D ) @ ( u1_struct_0 @ B ) ) ) ) )
                       => ( ( ( g1_pre_topc @ ( u1_struct_0 @ C ) @ ( u1_pre_topc @ C ) )
                            = D )
                         => ! [F: $i] :
                              ( ( m1_subset_1 @ F @ ( u1_struct_0 @ D ) )
                             => ! [G: $i] :
                                  ( ( m1_subset_1 @ G @ ( u1_struct_0 @ C ) )
                                 => ( ( ( F = G )
                                      & ( r1_tmap_1 @ C @ B @ ( k3_tmap_1 @ A @ B @ D @ C @ E ) @ G ) )
                                   => ( r1_tmap_1 @ D @ B @ E @ F ) ) ) ) ) ) ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t88_tmap_1])).

thf('0',plain,(
    ~ ( v2_struct_0 @ sk_C ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(dt_k2_subset_1,axiom,(
    ! [A: $i] :
      ( m1_subset_1 @ ( k2_subset_1 @ A ) @ ( k1_zfmisc_1 @ A ) ) )).

thf('1',plain,(
    ! [X1: $i] :
      ( m1_subset_1 @ ( k2_subset_1 @ X1 ) @ ( k1_zfmisc_1 @ X1 ) ) ),
    inference(cnf,[status(esa)],[dt_k2_subset_1])).

thf(d4_subset_1,axiom,(
    ! [A: $i] :
      ( ( k2_subset_1 @ A )
      = A ) )).

thf('2',plain,(
    ! [X0: $i] :
      ( ( k2_subset_1 @ X0 )
      = X0 ) ),
    inference(cnf,[status(esa)],[d4_subset_1])).

thf('3',plain,(
    ! [X1: $i] :
      ( m1_subset_1 @ X1 @ ( k1_zfmisc_1 @ X1 ) ) ),
    inference(demod,[status(thm)],['1','2'])).

thf('4',plain,(
    r1_tmap_1 @ sk_C @ sk_B @ ( k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C @ sk_E ) @ sk_G ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('5',plain,(
    sk_F = sk_G ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('6',plain,(
    r1_tmap_1 @ sk_C @ sk_B @ ( k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C @ sk_E ) @ sk_F ),
    inference(demod,[status(thm)],['4','5'])).

thf('7',plain,(
    m1_subset_1 @ sk_E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( u1_struct_0 @ sk_D ) @ ( u1_struct_0 @ sk_B ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t83_tmap_1,axiom,(
    ! [A: $i] :
      ( ( ~ ( v2_struct_0 @ A )
        & ( v2_pre_topc @ A )
        & ( l1_pre_topc @ A ) )
     => ! [B: $i] :
          ( ( ~ ( v2_struct_0 @ B )
            & ( v2_pre_topc @ B )
            & ( l1_pre_topc @ B ) )
         => ! [C: $i] :
              ( ( ~ ( v2_struct_0 @ C )
                & ( m1_pre_topc @ C @ A ) )
             => ! [D: $i] :
                  ( ( ~ ( v2_struct_0 @ D )
                    & ( m1_pre_topc @ D @ A ) )
                 => ! [E: $i] :
                      ( ( ( v1_funct_1 @ E )
                        & ( v1_funct_2 @ E @ ( u1_struct_0 @ D ) @ ( u1_struct_0 @ B ) )
                        & ( m1_subset_1 @ E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( u1_struct_0 @ D ) @ ( u1_struct_0 @ B ) ) ) ) )
                     => ( ( m1_pre_topc @ C @ D )
                       => ! [F: $i] :
                            ( ( m1_subset_1 @ F @ ( k1_zfmisc_1 @ ( u1_struct_0 @ D ) ) )
                           => ! [G: $i] :
                                ( ( m1_subset_1 @ G @ ( u1_struct_0 @ D ) )
                               => ! [H: $i] :
                                    ( ( m1_subset_1 @ H @ ( u1_struct_0 @ C ) )
                                   => ( ( ( r1_tarski @ F @ ( u1_struct_0 @ C ) )
                                        & ( m1_connsp_2 @ F @ D @ G )
                                        & ( G = H ) )
                                     => ( ( r1_tmap_1 @ D @ B @ E @ G )
                                      <=> ( r1_tmap_1 @ C @ B @ ( k3_tmap_1 @ A @ B @ D @ C @ E ) @ H ) ) ) ) ) ) ) ) ) ) ) ) )).

thf('8',plain,(
    ! [X28: $i,X29: $i,X30: $i,X31: $i,X32: $i,X33: $i,X34: $i,X35: $i] :
      ( ( v2_struct_0 @ X28 )
      | ~ ( v2_pre_topc @ X28 )
      | ~ ( l1_pre_topc @ X28 )
      | ( v2_struct_0 @ X29 )
      | ~ ( m1_pre_topc @ X29 @ X30 )
      | ~ ( m1_pre_topc @ X31 @ X29 )
      | ~ ( m1_subset_1 @ X32 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X29 ) ) )
      | ~ ( m1_subset_1 @ X33 @ ( u1_struct_0 @ X31 ) )
      | ~ ( r1_tmap_1 @ X31 @ X28 @ ( k3_tmap_1 @ X30 @ X28 @ X29 @ X31 @ X34 ) @ X33 )
      | ( r1_tmap_1 @ X29 @ X28 @ X34 @ X35 )
      | ( X35 != X33 )
      | ~ ( m1_connsp_2 @ X32 @ X29 @ X35 )
      | ~ ( r1_tarski @ X32 @ ( u1_struct_0 @ X31 ) )
      | ~ ( m1_subset_1 @ X35 @ ( u1_struct_0 @ X29 ) )
      | ~ ( m1_subset_1 @ X34 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( u1_struct_0 @ X29 ) @ ( u1_struct_0 @ X28 ) ) ) )
      | ~ ( v1_funct_2 @ X34 @ ( u1_struct_0 @ X29 ) @ ( u1_struct_0 @ X28 ) )
      | ~ ( v1_funct_1 @ X34 )
      | ~ ( m1_pre_topc @ X31 @ X30 )
      | ( v2_struct_0 @ X31 )
      | ~ ( l1_pre_topc @ X30 )
      | ~ ( v2_pre_topc @ X30 )
      | ( v2_struct_0 @ X30 ) ) ),
    inference(cnf,[status(esa)],[t83_tmap_1])).

thf('9',plain,(
    ! [X28: $i,X29: $i,X30: $i,X31: $i,X32: $i,X33: $i,X34: $i] :
      ( ( v2_struct_0 @ X30 )
      | ~ ( v2_pre_topc @ X30 )
      | ~ ( l1_pre_topc @ X30 )
      | ( v2_struct_0 @ X31 )
      | ~ ( m1_pre_topc @ X31 @ X30 )
      | ~ ( v1_funct_1 @ X34 )
      | ~ ( v1_funct_2 @ X34 @ ( u1_struct_0 @ X29 ) @ ( u1_struct_0 @ X28 ) )
      | ~ ( m1_subset_1 @ X34 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( u1_struct_0 @ X29 ) @ ( u1_struct_0 @ X28 ) ) ) )
      | ~ ( m1_subset_1 @ X33 @ ( u1_struct_0 @ X29 ) )
      | ~ ( r1_tarski @ X32 @ ( u1_struct_0 @ X31 ) )
      | ~ ( m1_connsp_2 @ X32 @ X29 @ X33 )
      | ( r1_tmap_1 @ X29 @ X28 @ X34 @ X33 )
      | ~ ( r1_tmap_1 @ X31 @ X28 @ ( k3_tmap_1 @ X30 @ X28 @ X29 @ X31 @ X34 ) @ X33 )
      | ~ ( m1_subset_1 @ X33 @ ( u1_struct_0 @ X31 ) )
      | ~ ( m1_subset_1 @ X32 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X29 ) ) )
      | ~ ( m1_pre_topc @ X31 @ X29 )
      | ~ ( m1_pre_topc @ X29 @ X30 )
      | ( v2_struct_0 @ X29 )
      | ~ ( l1_pre_topc @ X28 )
      | ~ ( v2_pre_topc @ X28 )
      | ( v2_struct_0 @ X28 ) ) ),
    inference(simplify,[status(thm)],['8'])).

thf('10',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i] :
      ( ( v2_struct_0 @ sk_B )
      | ~ ( v2_pre_topc @ sk_B )
      | ~ ( l1_pre_topc @ sk_B )
      | ( v2_struct_0 @ sk_D )
      | ~ ( m1_pre_topc @ sk_D @ X0 )
      | ~ ( m1_pre_topc @ X1 @ sk_D )
      | ~ ( m1_subset_1 @ X2 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_D ) ) )
      | ~ ( m1_subset_1 @ X3 @ ( u1_struct_0 @ X1 ) )
      | ~ ( r1_tmap_1 @ X1 @ sk_B @ ( k3_tmap_1 @ X0 @ sk_B @ sk_D @ X1 @ sk_E ) @ X3 )
      | ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ X3 )
      | ~ ( m1_connsp_2 @ X2 @ sk_D @ X3 )
      | ~ ( r1_tarski @ X2 @ ( u1_struct_0 @ X1 ) )
      | ~ ( m1_subset_1 @ X3 @ ( u1_struct_0 @ sk_D ) )
      | ~ ( v1_funct_2 @ sk_E @ ( u1_struct_0 @ sk_D ) @ ( u1_struct_0 @ sk_B ) )
      | ~ ( v1_funct_1 @ sk_E )
      | ~ ( m1_pre_topc @ X1 @ X0 )
      | ( v2_struct_0 @ X1 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 ) ) ),
    inference('sup-',[status(thm)],['7','9'])).

thf('11',plain,(
    v2_pre_topc @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('12',plain,(
    l1_pre_topc @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('13',plain,(
    v1_funct_2 @ sk_E @ ( u1_struct_0 @ sk_D ) @ ( u1_struct_0 @ sk_B ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('14',plain,(
    v1_funct_1 @ sk_E ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('15',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i] :
      ( ( v2_struct_0 @ sk_B )
      | ( v2_struct_0 @ sk_D )
      | ~ ( m1_pre_topc @ sk_D @ X0 )
      | ~ ( m1_pre_topc @ X1 @ sk_D )
      | ~ ( m1_subset_1 @ X2 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_D ) ) )
      | ~ ( m1_subset_1 @ X3 @ ( u1_struct_0 @ X1 ) )
      | ~ ( r1_tmap_1 @ X1 @ sk_B @ ( k3_tmap_1 @ X0 @ sk_B @ sk_D @ X1 @ sk_E ) @ X3 )
      | ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ X3 )
      | ~ ( m1_connsp_2 @ X2 @ sk_D @ X3 )
      | ~ ( r1_tarski @ X2 @ ( u1_struct_0 @ X1 ) )
      | ~ ( m1_subset_1 @ X3 @ ( u1_struct_0 @ sk_D ) )
      | ~ ( m1_pre_topc @ X1 @ X0 )
      | ( v2_struct_0 @ X1 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ( v2_struct_0 @ X0 ) ) ),
    inference(demod,[status(thm)],['10','11','12','13','14'])).

thf('16',plain,(
    ! [X0: $i] :
      ( ( v2_struct_0 @ sk_A )
      | ~ ( v2_pre_topc @ sk_A )
      | ~ ( l1_pre_topc @ sk_A )
      | ( v2_struct_0 @ sk_C )
      | ~ ( m1_pre_topc @ sk_C @ sk_A )
      | ~ ( m1_subset_1 @ sk_F @ ( u1_struct_0 @ sk_D ) )
      | ~ ( r1_tarski @ X0 @ ( u1_struct_0 @ sk_C ) )
      | ~ ( m1_connsp_2 @ X0 @ sk_D @ sk_F )
      | ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_F )
      | ~ ( m1_subset_1 @ sk_F @ ( u1_struct_0 @ sk_C ) )
      | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_D ) ) )
      | ~ ( m1_pre_topc @ sk_C @ sk_D )
      | ~ ( m1_pre_topc @ sk_D @ sk_A )
      | ( v2_struct_0 @ sk_D )
      | ( v2_struct_0 @ sk_B ) ) ),
    inference('sup-',[status(thm)],['6','15'])).

thf('17',plain,(
    v2_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('18',plain,(
    l1_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('19',plain,(
    m1_pre_topc @ sk_C @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('20',plain,(
    m1_subset_1 @ sk_F @ ( u1_struct_0 @ sk_D ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('21',plain,(
    m1_subset_1 @ sk_G @ ( u1_struct_0 @ sk_C ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('22',plain,(
    sk_F = sk_G ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('23',plain,(
    m1_subset_1 @ sk_F @ ( u1_struct_0 @ sk_C ) ),
    inference(demod,[status(thm)],['21','22'])).

thf('24',plain,
    ( ( g1_pre_topc @ ( u1_struct_0 @ sk_C ) @ ( u1_pre_topc @ sk_C ) )
    = sk_D ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t2_tsep_1,axiom,(
    ! [A: $i] :
      ( ( l1_pre_topc @ A )
     => ( m1_pre_topc @ A @ A ) ) )).

thf('25',plain,(
    ! [X22: $i] :
      ( ( m1_pre_topc @ X22 @ X22 )
      | ~ ( l1_pre_topc @ X22 ) ) ),
    inference(cnf,[status(esa)],[t2_tsep_1])).

thf(t65_pre_topc,axiom,(
    ! [A: $i] :
      ( ( l1_pre_topc @ A )
     => ! [B: $i] :
          ( ( l1_pre_topc @ B )
         => ( ( m1_pre_topc @ A @ B )
          <=> ( m1_pre_topc @ A @ ( g1_pre_topc @ ( u1_struct_0 @ B ) @ ( u1_pre_topc @ B ) ) ) ) ) ) )).

thf('26',plain,(
    ! [X16: $i,X17: $i] :
      ( ~ ( l1_pre_topc @ X16 )
      | ~ ( m1_pre_topc @ X17 @ X16 )
      | ( m1_pre_topc @ X17 @ ( g1_pre_topc @ ( u1_struct_0 @ X16 ) @ ( u1_pre_topc @ X16 ) ) )
      | ~ ( l1_pre_topc @ X17 ) ) ),
    inference(cnf,[status(esa)],[t65_pre_topc])).

thf('27',plain,(
    ! [X0: $i] :
      ( ~ ( l1_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ( m1_pre_topc @ X0 @ ( g1_pre_topc @ ( u1_struct_0 @ X0 ) @ ( u1_pre_topc @ X0 ) ) )
      | ~ ( l1_pre_topc @ X0 ) ) ),
    inference('sup-',[status(thm)],['25','26'])).

thf('28',plain,(
    ! [X0: $i] :
      ( ( m1_pre_topc @ X0 @ ( g1_pre_topc @ ( u1_struct_0 @ X0 ) @ ( u1_pre_topc @ X0 ) ) )
      | ~ ( l1_pre_topc @ X0 ) ) ),
    inference(simplify,[status(thm)],['27'])).

thf('29',plain,
    ( ( m1_pre_topc @ sk_C @ sk_D )
    | ~ ( l1_pre_topc @ sk_C ) ),
    inference('sup+',[status(thm)],['24','28'])).

thf('30',plain,(
    m1_pre_topc @ sk_C @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(dt_m1_pre_topc,axiom,(
    ! [A: $i] :
      ( ( l1_pre_topc @ A )
     => ! [B: $i] :
          ( ( m1_pre_topc @ B @ A )
         => ( l1_pre_topc @ B ) ) ) )).

thf('31',plain,(
    ! [X11: $i,X12: $i] :
      ( ~ ( m1_pre_topc @ X11 @ X12 )
      | ( l1_pre_topc @ X11 )
      | ~ ( l1_pre_topc @ X12 ) ) ),
    inference(cnf,[status(esa)],[dt_m1_pre_topc])).

thf('32',plain,
    ( ~ ( l1_pre_topc @ sk_A )
    | ( l1_pre_topc @ sk_C ) ),
    inference('sup-',[status(thm)],['30','31'])).

thf('33',plain,(
    l1_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('34',plain,(
    l1_pre_topc @ sk_C ),
    inference(demod,[status(thm)],['32','33'])).

thf('35',plain,(
    m1_pre_topc @ sk_C @ sk_D ),
    inference(demod,[status(thm)],['29','34'])).

thf('36',plain,(
    m1_pre_topc @ sk_D @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('37',plain,(
    ! [X0: $i] :
      ( ( v2_struct_0 @ sk_A )
      | ( v2_struct_0 @ sk_C )
      | ~ ( r1_tarski @ X0 @ ( u1_struct_0 @ sk_C ) )
      | ~ ( m1_connsp_2 @ X0 @ sk_D @ sk_F )
      | ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_F )
      | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_D ) ) )
      | ( v2_struct_0 @ sk_D )
      | ( v2_struct_0 @ sk_B ) ) ),
    inference(demod,[status(thm)],['16','17','18','19','20','23','35','36'])).

thf('38',plain,
    ( ( v2_struct_0 @ sk_B )
    | ( v2_struct_0 @ sk_D )
    | ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_F )
    | ~ ( m1_connsp_2 @ ( u1_struct_0 @ sk_D ) @ sk_D @ sk_F )
    | ~ ( r1_tarski @ ( u1_struct_0 @ sk_D ) @ ( u1_struct_0 @ sk_C ) )
    | ( v2_struct_0 @ sk_C )
    | ( v2_struct_0 @ sk_A ) ),
    inference('sup-',[status(thm)],['3','37'])).

thf(d3_struct_0,axiom,(
    ! [A: $i] :
      ( ( l1_struct_0 @ A )
     => ( ( k2_struct_0 @ A )
        = ( u1_struct_0 @ A ) ) ) )).

thf('39',plain,(
    ! [X9: $i] :
      ( ( ( k2_struct_0 @ X9 )
        = ( u1_struct_0 @ X9 ) )
      | ~ ( l1_struct_0 @ X9 ) ) ),
    inference(cnf,[status(esa)],[d3_struct_0])).

thf(fc10_tops_1,axiom,(
    ! [A: $i] :
      ( ( ( v2_pre_topc @ A )
        & ( l1_pre_topc @ A ) )
     => ( v3_pre_topc @ ( k2_struct_0 @ A ) @ A ) ) )).

thf('40',plain,(
    ! [X18: $i] :
      ( ( v3_pre_topc @ ( k2_struct_0 @ X18 ) @ X18 )
      | ~ ( l1_pre_topc @ X18 )
      | ~ ( v2_pre_topc @ X18 ) ) ),
    inference(cnf,[status(esa)],[fc10_tops_1])).

thf('41',plain,(
    ! [X9: $i] :
      ( ( ( k2_struct_0 @ X9 )
        = ( u1_struct_0 @ X9 ) )
      | ~ ( l1_struct_0 @ X9 ) ) ),
    inference(cnf,[status(esa)],[d3_struct_0])).

thf('42',plain,(
    m1_subset_1 @ sk_F @ ( u1_struct_0 @ sk_D ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('43',plain,(
    ! [X1: $i] :
      ( m1_subset_1 @ X1 @ ( k1_zfmisc_1 @ X1 ) ) ),
    inference(demod,[status(thm)],['1','2'])).

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

thf('44',plain,(
    ! [X19: $i,X20: $i,X21: $i] :
      ( ~ ( m1_subset_1 @ X19 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X20 ) ) )
      | ~ ( v3_pre_topc @ X19 @ X20 )
      | ~ ( r2_hidden @ X21 @ X19 )
      | ( m1_connsp_2 @ X19 @ X20 @ X21 )
      | ~ ( m1_subset_1 @ X21 @ ( u1_struct_0 @ X20 ) )
      | ~ ( l1_pre_topc @ X20 )
      | ~ ( v2_pre_topc @ X20 )
      | ( v2_struct_0 @ X20 ) ) ),
    inference(cnf,[status(esa)],[t5_connsp_2])).

thf('45',plain,(
    ! [X0: $i,X1: $i] :
      ( ( v2_struct_0 @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( m1_subset_1 @ X1 @ ( u1_struct_0 @ X0 ) )
      | ( m1_connsp_2 @ ( u1_struct_0 @ X0 ) @ X0 @ X1 )
      | ~ ( r2_hidden @ X1 @ ( u1_struct_0 @ X0 ) )
      | ~ ( v3_pre_topc @ ( u1_struct_0 @ X0 ) @ X0 ) ) ),
    inference('sup-',[status(thm)],['43','44'])).

thf('46',plain,
    ( ~ ( v3_pre_topc @ ( u1_struct_0 @ sk_D ) @ sk_D )
    | ~ ( r2_hidden @ sk_F @ ( u1_struct_0 @ sk_D ) )
    | ( m1_connsp_2 @ ( u1_struct_0 @ sk_D ) @ sk_D @ sk_F )
    | ~ ( l1_pre_topc @ sk_D )
    | ~ ( v2_pre_topc @ sk_D )
    | ( v2_struct_0 @ sk_D ) ),
    inference('sup-',[status(thm)],['42','45'])).

thf('47',plain,(
    m1_pre_topc @ sk_D @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('48',plain,(
    ! [X11: $i,X12: $i] :
      ( ~ ( m1_pre_topc @ X11 @ X12 )
      | ( l1_pre_topc @ X11 )
      | ~ ( l1_pre_topc @ X12 ) ) ),
    inference(cnf,[status(esa)],[dt_m1_pre_topc])).

thf('49',plain,
    ( ~ ( l1_pre_topc @ sk_A )
    | ( l1_pre_topc @ sk_D ) ),
    inference('sup-',[status(thm)],['47','48'])).

thf('50',plain,(
    l1_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('51',plain,(
    l1_pre_topc @ sk_D ),
    inference(demod,[status(thm)],['49','50'])).

thf('52',plain,(
    m1_pre_topc @ sk_D @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(cc1_pre_topc,axiom,(
    ! [A: $i] :
      ( ( ( v2_pre_topc @ A )
        & ( l1_pre_topc @ A ) )
     => ! [B: $i] :
          ( ( m1_pre_topc @ B @ A )
         => ( v2_pre_topc @ B ) ) ) )).

thf('53',plain,(
    ! [X7: $i,X8: $i] :
      ( ~ ( m1_pre_topc @ X7 @ X8 )
      | ( v2_pre_topc @ X7 )
      | ~ ( l1_pre_topc @ X8 )
      | ~ ( v2_pre_topc @ X8 ) ) ),
    inference(cnf,[status(esa)],[cc1_pre_topc])).

thf('54',plain,
    ( ~ ( v2_pre_topc @ sk_A )
    | ~ ( l1_pre_topc @ sk_A )
    | ( v2_pre_topc @ sk_D ) ),
    inference('sup-',[status(thm)],['52','53'])).

thf('55',plain,(
    v2_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('56',plain,(
    l1_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('57',plain,(
    v2_pre_topc @ sk_D ),
    inference(demod,[status(thm)],['54','55','56'])).

thf('58',plain,
    ( ~ ( v3_pre_topc @ ( u1_struct_0 @ sk_D ) @ sk_D )
    | ~ ( r2_hidden @ sk_F @ ( u1_struct_0 @ sk_D ) )
    | ( m1_connsp_2 @ ( u1_struct_0 @ sk_D ) @ sk_D @ sk_F )
    | ( v2_struct_0 @ sk_D ) ),
    inference(demod,[status(thm)],['46','51','57'])).

thf('59',plain,
    ( ~ ( v3_pre_topc @ ( k2_struct_0 @ sk_D ) @ sk_D )
    | ~ ( l1_struct_0 @ sk_D )
    | ( v2_struct_0 @ sk_D )
    | ( m1_connsp_2 @ ( u1_struct_0 @ sk_D ) @ sk_D @ sk_F )
    | ~ ( r2_hidden @ sk_F @ ( u1_struct_0 @ sk_D ) ) ),
    inference('sup-',[status(thm)],['41','58'])).

thf('60',plain,(
    l1_pre_topc @ sk_D ),
    inference(demod,[status(thm)],['49','50'])).

thf(dt_l1_pre_topc,axiom,(
    ! [A: $i] :
      ( ( l1_pre_topc @ A )
     => ( l1_struct_0 @ A ) ) )).

thf('61',plain,(
    ! [X10: $i] :
      ( ( l1_struct_0 @ X10 )
      | ~ ( l1_pre_topc @ X10 ) ) ),
    inference(cnf,[status(esa)],[dt_l1_pre_topc])).

thf('62',plain,(
    l1_struct_0 @ sk_D ),
    inference('sup-',[status(thm)],['60','61'])).

thf('63',plain,
    ( ~ ( v3_pre_topc @ ( k2_struct_0 @ sk_D ) @ sk_D )
    | ( v2_struct_0 @ sk_D )
    | ( m1_connsp_2 @ ( u1_struct_0 @ sk_D ) @ sk_D @ sk_F )
    | ~ ( r2_hidden @ sk_F @ ( u1_struct_0 @ sk_D ) ) ),
    inference(demod,[status(thm)],['59','62'])).

thf('64',plain,
    ( ~ ( v2_pre_topc @ sk_D )
    | ~ ( l1_pre_topc @ sk_D )
    | ~ ( r2_hidden @ sk_F @ ( u1_struct_0 @ sk_D ) )
    | ( m1_connsp_2 @ ( u1_struct_0 @ sk_D ) @ sk_D @ sk_F )
    | ( v2_struct_0 @ sk_D ) ),
    inference('sup-',[status(thm)],['40','63'])).

thf('65',plain,(
    v2_pre_topc @ sk_D ),
    inference(demod,[status(thm)],['54','55','56'])).

thf('66',plain,(
    l1_pre_topc @ sk_D ),
    inference(demod,[status(thm)],['49','50'])).

thf('67',plain,
    ( ~ ( r2_hidden @ sk_F @ ( u1_struct_0 @ sk_D ) )
    | ( m1_connsp_2 @ ( u1_struct_0 @ sk_D ) @ sk_D @ sk_F )
    | ( v2_struct_0 @ sk_D ) ),
    inference(demod,[status(thm)],['64','65','66'])).

thf('68',plain,(
    ~ ( v2_struct_0 @ sk_D ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('69',plain,
    ( ( m1_connsp_2 @ ( u1_struct_0 @ sk_D ) @ sk_D @ sk_F )
    | ~ ( r2_hidden @ sk_F @ ( u1_struct_0 @ sk_D ) ) ),
    inference(clc,[status(thm)],['67','68'])).

thf('70',plain,
    ( ~ ( r2_hidden @ sk_F @ ( k2_struct_0 @ sk_D ) )
    | ~ ( l1_struct_0 @ sk_D )
    | ( m1_connsp_2 @ ( u1_struct_0 @ sk_D ) @ sk_D @ sk_F ) ),
    inference('sup-',[status(thm)],['39','69'])).

thf('71',plain,(
    ! [X9: $i] :
      ( ( ( k2_struct_0 @ X9 )
        = ( u1_struct_0 @ X9 ) )
      | ~ ( l1_struct_0 @ X9 ) ) ),
    inference(cnf,[status(esa)],[d3_struct_0])).

thf('72',plain,(
    m1_subset_1 @ sk_F @ ( u1_struct_0 @ sk_D ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t2_subset,axiom,(
    ! [A: $i,B: $i] :
      ( ( m1_subset_1 @ A @ B )
     => ( ( v1_xboole_0 @ B )
        | ( r2_hidden @ A @ B ) ) ) )).

thf('73',plain,(
    ! [X2: $i,X3: $i] :
      ( ( r2_hidden @ X2 @ X3 )
      | ( v1_xboole_0 @ X3 )
      | ~ ( m1_subset_1 @ X2 @ X3 ) ) ),
    inference(cnf,[status(esa)],[t2_subset])).

thf('74',plain,
    ( ( v1_xboole_0 @ ( u1_struct_0 @ sk_D ) )
    | ( r2_hidden @ sk_F @ ( u1_struct_0 @ sk_D ) ) ),
    inference('sup-',[status(thm)],['72','73'])).

thf('75',plain,
    ( ( r2_hidden @ sk_F @ ( k2_struct_0 @ sk_D ) )
    | ~ ( l1_struct_0 @ sk_D )
    | ( v1_xboole_0 @ ( u1_struct_0 @ sk_D ) ) ),
    inference('sup+',[status(thm)],['71','74'])).

thf('76',plain,(
    l1_struct_0 @ sk_D ),
    inference('sup-',[status(thm)],['60','61'])).

thf('77',plain,
    ( ( r2_hidden @ sk_F @ ( k2_struct_0 @ sk_D ) )
    | ( v1_xboole_0 @ ( u1_struct_0 @ sk_D ) ) ),
    inference(demod,[status(thm)],['75','76'])).

thf(fc2_struct_0,axiom,(
    ! [A: $i] :
      ( ( ~ ( v2_struct_0 @ A )
        & ( l1_struct_0 @ A ) )
     => ~ ( v1_xboole_0 @ ( u1_struct_0 @ A ) ) ) )).

thf('78',plain,(
    ! [X13: $i] :
      ( ~ ( v1_xboole_0 @ ( u1_struct_0 @ X13 ) )
      | ~ ( l1_struct_0 @ X13 )
      | ( v2_struct_0 @ X13 ) ) ),
    inference(cnf,[status(esa)],[fc2_struct_0])).

thf('79',plain,
    ( ( r2_hidden @ sk_F @ ( k2_struct_0 @ sk_D ) )
    | ( v2_struct_0 @ sk_D )
    | ~ ( l1_struct_0 @ sk_D ) ),
    inference('sup-',[status(thm)],['77','78'])).

thf('80',plain,(
    l1_struct_0 @ sk_D ),
    inference('sup-',[status(thm)],['60','61'])).

thf('81',plain,
    ( ( r2_hidden @ sk_F @ ( k2_struct_0 @ sk_D ) )
    | ( v2_struct_0 @ sk_D ) ),
    inference(demod,[status(thm)],['79','80'])).

thf('82',plain,(
    ~ ( v2_struct_0 @ sk_D ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('83',plain,(
    r2_hidden @ sk_F @ ( k2_struct_0 @ sk_D ) ),
    inference(clc,[status(thm)],['81','82'])).

thf('84',plain,(
    l1_struct_0 @ sk_D ),
    inference('sup-',[status(thm)],['60','61'])).

thf('85',plain,(
    m1_connsp_2 @ ( u1_struct_0 @ sk_D ) @ sk_D @ sk_F ),
    inference(demod,[status(thm)],['70','83','84'])).

thf('86',plain,(
    ! [X22: $i] :
      ( ( m1_pre_topc @ X22 @ X22 )
      | ~ ( l1_pre_topc @ X22 ) ) ),
    inference(cnf,[status(esa)],[t2_tsep_1])).

thf('87',plain,
    ( ( g1_pre_topc @ ( u1_struct_0 @ sk_C ) @ ( u1_pre_topc @ sk_C ) )
    = sk_D ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t59_pre_topc,axiom,(
    ! [A: $i] :
      ( ( l1_pre_topc @ A )
     => ! [B: $i] :
          ( ( m1_pre_topc @ B @ ( g1_pre_topc @ ( u1_struct_0 @ A ) @ ( u1_pre_topc @ A ) ) )
         => ( m1_pre_topc @ B @ A ) ) ) )).

thf('88',plain,(
    ! [X14: $i,X15: $i] :
      ( ~ ( m1_pre_topc @ X14 @ ( g1_pre_topc @ ( u1_struct_0 @ X15 ) @ ( u1_pre_topc @ X15 ) ) )
      | ( m1_pre_topc @ X14 @ X15 )
      | ~ ( l1_pre_topc @ X15 ) ) ),
    inference(cnf,[status(esa)],[t59_pre_topc])).

thf('89',plain,(
    ! [X0: $i] :
      ( ~ ( m1_pre_topc @ X0 @ sk_D )
      | ~ ( l1_pre_topc @ sk_C )
      | ( m1_pre_topc @ X0 @ sk_C ) ) ),
    inference('sup-',[status(thm)],['87','88'])).

thf('90',plain,(
    l1_pre_topc @ sk_C ),
    inference(demod,[status(thm)],['32','33'])).

thf('91',plain,(
    ! [X0: $i] :
      ( ~ ( m1_pre_topc @ X0 @ sk_D )
      | ( m1_pre_topc @ X0 @ sk_C ) ) ),
    inference(demod,[status(thm)],['89','90'])).

thf('92',plain,
    ( ~ ( l1_pre_topc @ sk_D )
    | ( m1_pre_topc @ sk_D @ sk_C ) ),
    inference('sup-',[status(thm)],['86','91'])).

thf('93',plain,(
    l1_pre_topc @ sk_D ),
    inference(demod,[status(thm)],['49','50'])).

thf('94',plain,(
    m1_pre_topc @ sk_D @ sk_C ),
    inference(demod,[status(thm)],['92','93'])).

thf(t35_borsuk_1,axiom,(
    ! [A: $i] :
      ( ( l1_pre_topc @ A )
     => ! [B: $i] :
          ( ( m1_pre_topc @ B @ A )
         => ( r1_tarski @ ( u1_struct_0 @ B ) @ ( u1_struct_0 @ A ) ) ) ) )).

thf('95',plain,(
    ! [X23: $i,X24: $i] :
      ( ~ ( m1_pre_topc @ X23 @ X24 )
      | ( r1_tarski @ ( u1_struct_0 @ X23 ) @ ( u1_struct_0 @ X24 ) )
      | ~ ( l1_pre_topc @ X24 ) ) ),
    inference(cnf,[status(esa)],[t35_borsuk_1])).

thf('96',plain,
    ( ~ ( l1_pre_topc @ sk_C )
    | ( r1_tarski @ ( u1_struct_0 @ sk_D ) @ ( u1_struct_0 @ sk_C ) ) ),
    inference('sup-',[status(thm)],['94','95'])).

thf('97',plain,(
    l1_pre_topc @ sk_C ),
    inference(demod,[status(thm)],['32','33'])).

thf('98',plain,(
    r1_tarski @ ( u1_struct_0 @ sk_D ) @ ( u1_struct_0 @ sk_C ) ),
    inference(demod,[status(thm)],['96','97'])).

thf('99',plain,
    ( ( v2_struct_0 @ sk_B )
    | ( v2_struct_0 @ sk_D )
    | ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_F )
    | ( v2_struct_0 @ sk_C )
    | ( v2_struct_0 @ sk_A ) ),
    inference(demod,[status(thm)],['38','85','98'])).

thf('100',plain,(
    ~ ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_F ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('101',plain,
    ( ( v2_struct_0 @ sk_A )
    | ( v2_struct_0 @ sk_C )
    | ( v2_struct_0 @ sk_D )
    | ( v2_struct_0 @ sk_B ) ),
    inference('sup-',[status(thm)],['99','100'])).

thf('102',plain,(
    ~ ( v2_struct_0 @ sk_D ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('103',plain,
    ( ( v2_struct_0 @ sk_B )
    | ( v2_struct_0 @ sk_C )
    | ( v2_struct_0 @ sk_A ) ),
    inference('sup-',[status(thm)],['101','102'])).

thf('104',plain,(
    ~ ( v2_struct_0 @ sk_B ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('105',plain,
    ( ( v2_struct_0 @ sk_A )
    | ( v2_struct_0 @ sk_C ) ),
    inference(clc,[status(thm)],['103','104'])).

thf('106',plain,(
    ~ ( v2_struct_0 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('107',plain,(
    v2_struct_0 @ sk_C ),
    inference(clc,[status(thm)],['105','106'])).

thf('108',plain,(
    $false ),
    inference(demod,[status(thm)],['0','107'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.VVGKv7QCDd
% 0.13/0.34  % Computer   : n008.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 18:41:45 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running portfolio for 600 s
% 0.13/0.34  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.13/0.34  % Number of cores: 8
% 0.13/0.34  % Python version: Python 3.6.8
% 0.13/0.35  % Running in FO mode
% 0.45/0.63  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.45/0.63  % Solved by: fo/fo7.sh
% 0.45/0.63  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.45/0.63  % done 275 iterations in 0.180s
% 0.45/0.63  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.45/0.63  % SZS output start Refutation
% 0.45/0.63  thf(g1_pre_topc_type, type, g1_pre_topc: $i > $i > $i).
% 0.45/0.63  thf(sk_D_type, type, sk_D: $i).
% 0.45/0.63  thf(k1_zfmisc_1_type, type, k1_zfmisc_1: $i > $i).
% 0.45/0.63  thf(m1_subset_1_type, type, m1_subset_1: $i > $i > $o).
% 0.45/0.63  thf(sk_G_type, type, sk_G: $i).
% 0.45/0.63  thf(sk_A_type, type, sk_A: $i).
% 0.45/0.63  thf(l1_struct_0_type, type, l1_struct_0: $i > $o).
% 0.45/0.63  thf(sk_C_type, type, sk_C: $i).
% 0.45/0.63  thf(v1_xboole_0_type, type, v1_xboole_0: $i > $o).
% 0.45/0.63  thf(v2_pre_topc_type, type, v2_pre_topc: $i > $o).
% 0.45/0.63  thf(sk_F_type, type, sk_F: $i).
% 0.45/0.63  thf(k3_tmap_1_type, type, k3_tmap_1: $i > $i > $i > $i > $i > $i).
% 0.45/0.63  thf(k2_subset_1_type, type, k2_subset_1: $i > $i).
% 0.45/0.63  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.45/0.63  thf(v2_struct_0_type, type, v2_struct_0: $i > $o).
% 0.45/0.63  thf(l1_pre_topc_type, type, l1_pre_topc: $i > $o).
% 0.45/0.63  thf(r1_tmap_1_type, type, r1_tmap_1: $i > $i > $i > $i > $o).
% 0.45/0.63  thf(u1_struct_0_type, type, u1_struct_0: $i > $i).
% 0.45/0.63  thf(k2_struct_0_type, type, k2_struct_0: $i > $i).
% 0.45/0.63  thf(v3_pre_topc_type, type, v3_pre_topc: $i > $i > $o).
% 0.45/0.63  thf(m1_connsp_2_type, type, m1_connsp_2: $i > $i > $i > $o).
% 0.45/0.63  thf(sk_E_type, type, sk_E: $i).
% 0.45/0.63  thf(k2_zfmisc_1_type, type, k2_zfmisc_1: $i > $i > $i).
% 0.45/0.63  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.45/0.63  thf(sk_B_type, type, sk_B: $i).
% 0.45/0.63  thf(v1_funct_2_type, type, v1_funct_2: $i > $i > $i > $o).
% 0.45/0.63  thf(u1_pre_topc_type, type, u1_pre_topc: $i > $i).
% 0.45/0.63  thf(m1_pre_topc_type, type, m1_pre_topc: $i > $i > $o).
% 0.45/0.63  thf(v1_funct_1_type, type, v1_funct_1: $i > $o).
% 0.45/0.63  thf(t88_tmap_1, conjecture,
% 0.45/0.63    (![A:$i]:
% 0.45/0.63     ( ( ( ~( v2_struct_0 @ A ) ) & ( v2_pre_topc @ A ) & ( l1_pre_topc @ A ) ) =>
% 0.45/0.63       ( ![B:$i]:
% 0.45/0.63         ( ( ( ~( v2_struct_0 @ B ) ) & ( v2_pre_topc @ B ) & 
% 0.45/0.63             ( l1_pre_topc @ B ) ) =>
% 0.45/0.63           ( ![C:$i]:
% 0.45/0.63             ( ( ( ~( v2_struct_0 @ C ) ) & ( m1_pre_topc @ C @ A ) ) =>
% 0.45/0.63               ( ![D:$i]:
% 0.45/0.63                 ( ( ( ~( v2_struct_0 @ D ) ) & ( m1_pre_topc @ D @ A ) ) =>
% 0.45/0.63                   ( ![E:$i]:
% 0.45/0.63                     ( ( ( v1_funct_1 @ E ) & 
% 0.45/0.63                         ( v1_funct_2 @
% 0.45/0.63                           E @ ( u1_struct_0 @ D ) @ ( u1_struct_0 @ B ) ) & 
% 0.45/0.63                         ( m1_subset_1 @
% 0.45/0.63                           E @ 
% 0.45/0.63                           ( k1_zfmisc_1 @
% 0.45/0.63                             ( k2_zfmisc_1 @
% 0.45/0.63                               ( u1_struct_0 @ D ) @ ( u1_struct_0 @ B ) ) ) ) ) =>
% 0.45/0.63                       ( ( ( g1_pre_topc @
% 0.45/0.63                             ( u1_struct_0 @ C ) @ ( u1_pre_topc @ C ) ) =
% 0.45/0.63                           ( D ) ) =>
% 0.45/0.63                         ( ![F:$i]:
% 0.45/0.63                           ( ( m1_subset_1 @ F @ ( u1_struct_0 @ D ) ) =>
% 0.45/0.63                             ( ![G:$i]:
% 0.45/0.63                               ( ( m1_subset_1 @ G @ ( u1_struct_0 @ C ) ) =>
% 0.45/0.63                                 ( ( ( ( F ) = ( G ) ) & 
% 0.45/0.63                                     ( r1_tmap_1 @
% 0.45/0.63                                       C @ B @ 
% 0.45/0.63                                       ( k3_tmap_1 @ A @ B @ D @ C @ E ) @ G ) ) =>
% 0.45/0.63                                   ( r1_tmap_1 @ D @ B @ E @ F ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ))).
% 0.45/0.63  thf(zf_stmt_0, negated_conjecture,
% 0.45/0.63    (~( ![A:$i]:
% 0.45/0.63        ( ( ( ~( v2_struct_0 @ A ) ) & ( v2_pre_topc @ A ) & 
% 0.45/0.63            ( l1_pre_topc @ A ) ) =>
% 0.45/0.63          ( ![B:$i]:
% 0.45/0.63            ( ( ( ~( v2_struct_0 @ B ) ) & ( v2_pre_topc @ B ) & 
% 0.45/0.63                ( l1_pre_topc @ B ) ) =>
% 0.45/0.63              ( ![C:$i]:
% 0.45/0.63                ( ( ( ~( v2_struct_0 @ C ) ) & ( m1_pre_topc @ C @ A ) ) =>
% 0.45/0.63                  ( ![D:$i]:
% 0.45/0.63                    ( ( ( ~( v2_struct_0 @ D ) ) & ( m1_pre_topc @ D @ A ) ) =>
% 0.45/0.63                      ( ![E:$i]:
% 0.45/0.63                        ( ( ( v1_funct_1 @ E ) & 
% 0.45/0.63                            ( v1_funct_2 @
% 0.45/0.63                              E @ ( u1_struct_0 @ D ) @ ( u1_struct_0 @ B ) ) & 
% 0.45/0.63                            ( m1_subset_1 @
% 0.45/0.63                              E @ 
% 0.45/0.63                              ( k1_zfmisc_1 @
% 0.45/0.63                                ( k2_zfmisc_1 @
% 0.45/0.63                                  ( u1_struct_0 @ D ) @ ( u1_struct_0 @ B ) ) ) ) ) =>
% 0.45/0.63                          ( ( ( g1_pre_topc @
% 0.45/0.63                                ( u1_struct_0 @ C ) @ ( u1_pre_topc @ C ) ) =
% 0.45/0.63                              ( D ) ) =>
% 0.45/0.63                            ( ![F:$i]:
% 0.45/0.63                              ( ( m1_subset_1 @ F @ ( u1_struct_0 @ D ) ) =>
% 0.45/0.63                                ( ![G:$i]:
% 0.45/0.63                                  ( ( m1_subset_1 @ G @ ( u1_struct_0 @ C ) ) =>
% 0.45/0.63                                    ( ( ( ( F ) = ( G ) ) & 
% 0.45/0.63                                        ( r1_tmap_1 @
% 0.45/0.63                                          C @ B @ 
% 0.45/0.63                                          ( k3_tmap_1 @ A @ B @ D @ C @ E ) @ G ) ) =>
% 0.45/0.63                                      ( r1_tmap_1 @ D @ B @ E @ F ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )),
% 0.45/0.63    inference('cnf.neg', [status(esa)], [t88_tmap_1])).
% 0.45/0.63  thf('0', plain, (~ (v2_struct_0 @ sk_C)),
% 0.45/0.63      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.45/0.63  thf(dt_k2_subset_1, axiom,
% 0.45/0.63    (![A:$i]: ( m1_subset_1 @ ( k2_subset_1 @ A ) @ ( k1_zfmisc_1 @ A ) ))).
% 0.45/0.63  thf('1', plain,
% 0.45/0.63      (![X1 : $i]: (m1_subset_1 @ (k2_subset_1 @ X1) @ (k1_zfmisc_1 @ X1))),
% 0.45/0.63      inference('cnf', [status(esa)], [dt_k2_subset_1])).
% 0.45/0.63  thf(d4_subset_1, axiom, (![A:$i]: ( ( k2_subset_1 @ A ) = ( A ) ))).
% 0.45/0.63  thf('2', plain, (![X0 : $i]: ((k2_subset_1 @ X0) = (X0))),
% 0.45/0.63      inference('cnf', [status(esa)], [d4_subset_1])).
% 0.45/0.63  thf('3', plain, (![X1 : $i]: (m1_subset_1 @ X1 @ (k1_zfmisc_1 @ X1))),
% 0.45/0.63      inference('demod', [status(thm)], ['1', '2'])).
% 0.45/0.63  thf('4', plain,
% 0.45/0.63      ((r1_tmap_1 @ sk_C @ sk_B @ 
% 0.45/0.63        (k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C @ sk_E) @ sk_G)),
% 0.45/0.63      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.45/0.63  thf('5', plain, (((sk_F) = (sk_G))),
% 0.45/0.63      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.45/0.63  thf('6', plain,
% 0.45/0.63      ((r1_tmap_1 @ sk_C @ sk_B @ 
% 0.45/0.63        (k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C @ sk_E) @ sk_F)),
% 0.45/0.63      inference('demod', [status(thm)], ['4', '5'])).
% 0.45/0.63  thf('7', plain,
% 0.45/0.63      ((m1_subset_1 @ sk_E @ 
% 0.45/0.63        (k1_zfmisc_1 @ 
% 0.45/0.63         (k2_zfmisc_1 @ (u1_struct_0 @ sk_D) @ (u1_struct_0 @ sk_B))))),
% 0.45/0.63      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.45/0.63  thf(t83_tmap_1, axiom,
% 0.45/0.63    (![A:$i]:
% 0.45/0.63     ( ( ( ~( v2_struct_0 @ A ) ) & ( v2_pre_topc @ A ) & ( l1_pre_topc @ A ) ) =>
% 0.45/0.63       ( ![B:$i]:
% 0.45/0.63         ( ( ( ~( v2_struct_0 @ B ) ) & ( v2_pre_topc @ B ) & 
% 0.45/0.63             ( l1_pre_topc @ B ) ) =>
% 0.45/0.63           ( ![C:$i]:
% 0.45/0.63             ( ( ( ~( v2_struct_0 @ C ) ) & ( m1_pre_topc @ C @ A ) ) =>
% 0.45/0.63               ( ![D:$i]:
% 0.45/0.63                 ( ( ( ~( v2_struct_0 @ D ) ) & ( m1_pre_topc @ D @ A ) ) =>
% 0.45/0.63                   ( ![E:$i]:
% 0.45/0.63                     ( ( ( v1_funct_1 @ E ) & 
% 0.45/0.63                         ( v1_funct_2 @
% 0.45/0.63                           E @ ( u1_struct_0 @ D ) @ ( u1_struct_0 @ B ) ) & 
% 0.45/0.63                         ( m1_subset_1 @
% 0.45/0.63                           E @ 
% 0.45/0.63                           ( k1_zfmisc_1 @
% 0.45/0.63                             ( k2_zfmisc_1 @
% 0.45/0.63                               ( u1_struct_0 @ D ) @ ( u1_struct_0 @ B ) ) ) ) ) =>
% 0.45/0.63                       ( ( m1_pre_topc @ C @ D ) =>
% 0.45/0.63                         ( ![F:$i]:
% 0.45/0.63                           ( ( m1_subset_1 @
% 0.45/0.63                               F @ ( k1_zfmisc_1 @ ( u1_struct_0 @ D ) ) ) =>
% 0.45/0.63                             ( ![G:$i]:
% 0.45/0.63                               ( ( m1_subset_1 @ G @ ( u1_struct_0 @ D ) ) =>
% 0.45/0.63                                 ( ![H:$i]:
% 0.45/0.63                                   ( ( m1_subset_1 @ H @ ( u1_struct_0 @ C ) ) =>
% 0.45/0.63                                     ( ( ( r1_tarski @ F @ ( u1_struct_0 @ C ) ) & 
% 0.45/0.63                                         ( m1_connsp_2 @ F @ D @ G ) & 
% 0.45/0.63                                         ( ( G ) = ( H ) ) ) =>
% 0.45/0.63                                       ( ( r1_tmap_1 @ D @ B @ E @ G ) <=>
% 0.45/0.63                                         ( r1_tmap_1 @
% 0.45/0.63                                           C @ B @ 
% 0.45/0.63                                           ( k3_tmap_1 @ A @ B @ D @ C @ E ) @ 
% 0.45/0.63                                           H ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ))).
% 0.45/0.63  thf('8', plain,
% 0.45/0.63      (![X28 : $i, X29 : $i, X30 : $i, X31 : $i, X32 : $i, X33 : $i, X34 : $i, 
% 0.45/0.63         X35 : $i]:
% 0.45/0.63         ((v2_struct_0 @ X28)
% 0.45/0.63          | ~ (v2_pre_topc @ X28)
% 0.45/0.63          | ~ (l1_pre_topc @ X28)
% 0.45/0.63          | (v2_struct_0 @ X29)
% 0.45/0.63          | ~ (m1_pre_topc @ X29 @ X30)
% 0.45/0.63          | ~ (m1_pre_topc @ X31 @ X29)
% 0.45/0.63          | ~ (m1_subset_1 @ X32 @ (k1_zfmisc_1 @ (u1_struct_0 @ X29)))
% 0.45/0.63          | ~ (m1_subset_1 @ X33 @ (u1_struct_0 @ X31))
% 0.45/0.63          | ~ (r1_tmap_1 @ X31 @ X28 @ 
% 0.45/0.63               (k3_tmap_1 @ X30 @ X28 @ X29 @ X31 @ X34) @ X33)
% 0.45/0.63          | (r1_tmap_1 @ X29 @ X28 @ X34 @ X35)
% 0.45/0.63          | ((X35) != (X33))
% 0.45/0.63          | ~ (m1_connsp_2 @ X32 @ X29 @ X35)
% 0.45/0.63          | ~ (r1_tarski @ X32 @ (u1_struct_0 @ X31))
% 0.45/0.63          | ~ (m1_subset_1 @ X35 @ (u1_struct_0 @ X29))
% 0.45/0.63          | ~ (m1_subset_1 @ X34 @ 
% 0.45/0.63               (k1_zfmisc_1 @ 
% 0.45/0.63                (k2_zfmisc_1 @ (u1_struct_0 @ X29) @ (u1_struct_0 @ X28))))
% 0.45/0.63          | ~ (v1_funct_2 @ X34 @ (u1_struct_0 @ X29) @ (u1_struct_0 @ X28))
% 0.45/0.63          | ~ (v1_funct_1 @ X34)
% 0.45/0.63          | ~ (m1_pre_topc @ X31 @ X30)
% 0.45/0.63          | (v2_struct_0 @ X31)
% 0.45/0.63          | ~ (l1_pre_topc @ X30)
% 0.45/0.63          | ~ (v2_pre_topc @ X30)
% 0.45/0.63          | (v2_struct_0 @ X30))),
% 0.45/0.63      inference('cnf', [status(esa)], [t83_tmap_1])).
% 0.45/0.63  thf('9', plain,
% 0.45/0.63      (![X28 : $i, X29 : $i, X30 : $i, X31 : $i, X32 : $i, X33 : $i, X34 : $i]:
% 0.45/0.63         ((v2_struct_0 @ X30)
% 0.45/0.63          | ~ (v2_pre_topc @ X30)
% 0.45/0.63          | ~ (l1_pre_topc @ X30)
% 0.45/0.63          | (v2_struct_0 @ X31)
% 0.45/0.63          | ~ (m1_pre_topc @ X31 @ X30)
% 0.45/0.63          | ~ (v1_funct_1 @ X34)
% 0.45/0.63          | ~ (v1_funct_2 @ X34 @ (u1_struct_0 @ X29) @ (u1_struct_0 @ X28))
% 0.45/0.63          | ~ (m1_subset_1 @ X34 @ 
% 0.45/0.63               (k1_zfmisc_1 @ 
% 0.45/0.63                (k2_zfmisc_1 @ (u1_struct_0 @ X29) @ (u1_struct_0 @ X28))))
% 0.45/0.63          | ~ (m1_subset_1 @ X33 @ (u1_struct_0 @ X29))
% 0.45/0.63          | ~ (r1_tarski @ X32 @ (u1_struct_0 @ X31))
% 0.45/0.63          | ~ (m1_connsp_2 @ X32 @ X29 @ X33)
% 0.45/0.63          | (r1_tmap_1 @ X29 @ X28 @ X34 @ X33)
% 0.45/0.63          | ~ (r1_tmap_1 @ X31 @ X28 @ 
% 0.45/0.63               (k3_tmap_1 @ X30 @ X28 @ X29 @ X31 @ X34) @ X33)
% 0.45/0.63          | ~ (m1_subset_1 @ X33 @ (u1_struct_0 @ X31))
% 0.45/0.63          | ~ (m1_subset_1 @ X32 @ (k1_zfmisc_1 @ (u1_struct_0 @ X29)))
% 0.45/0.63          | ~ (m1_pre_topc @ X31 @ X29)
% 0.45/0.63          | ~ (m1_pre_topc @ X29 @ X30)
% 0.45/0.63          | (v2_struct_0 @ X29)
% 0.45/0.63          | ~ (l1_pre_topc @ X28)
% 0.45/0.63          | ~ (v2_pre_topc @ X28)
% 0.45/0.63          | (v2_struct_0 @ X28))),
% 0.45/0.63      inference('simplify', [status(thm)], ['8'])).
% 0.45/0.63  thf('10', plain,
% 0.45/0.63      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i]:
% 0.45/0.63         ((v2_struct_0 @ sk_B)
% 0.45/0.63          | ~ (v2_pre_topc @ sk_B)
% 0.45/0.63          | ~ (l1_pre_topc @ sk_B)
% 0.45/0.63          | (v2_struct_0 @ sk_D)
% 0.45/0.63          | ~ (m1_pre_topc @ sk_D @ X0)
% 0.45/0.63          | ~ (m1_pre_topc @ X1 @ sk_D)
% 0.45/0.63          | ~ (m1_subset_1 @ X2 @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_D)))
% 0.45/0.63          | ~ (m1_subset_1 @ X3 @ (u1_struct_0 @ X1))
% 0.45/0.63          | ~ (r1_tmap_1 @ X1 @ sk_B @ 
% 0.45/0.63               (k3_tmap_1 @ X0 @ sk_B @ sk_D @ X1 @ sk_E) @ X3)
% 0.45/0.63          | (r1_tmap_1 @ sk_D @ sk_B @ sk_E @ X3)
% 0.45/0.63          | ~ (m1_connsp_2 @ X2 @ sk_D @ X3)
% 0.45/0.63          | ~ (r1_tarski @ X2 @ (u1_struct_0 @ X1))
% 0.45/0.63          | ~ (m1_subset_1 @ X3 @ (u1_struct_0 @ sk_D))
% 0.45/0.63          | ~ (v1_funct_2 @ sk_E @ (u1_struct_0 @ sk_D) @ (u1_struct_0 @ sk_B))
% 0.45/0.63          | ~ (v1_funct_1 @ sk_E)
% 0.45/0.63          | ~ (m1_pre_topc @ X1 @ X0)
% 0.45/0.63          | (v2_struct_0 @ X1)
% 0.45/0.63          | ~ (l1_pre_topc @ X0)
% 0.45/0.63          | ~ (v2_pre_topc @ X0)
% 0.45/0.63          | (v2_struct_0 @ X0))),
% 0.45/0.63      inference('sup-', [status(thm)], ['7', '9'])).
% 0.45/0.63  thf('11', plain, ((v2_pre_topc @ sk_B)),
% 0.45/0.63      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.45/0.63  thf('12', plain, ((l1_pre_topc @ sk_B)),
% 0.45/0.63      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.45/0.63  thf('13', plain,
% 0.45/0.63      ((v1_funct_2 @ sk_E @ (u1_struct_0 @ sk_D) @ (u1_struct_0 @ sk_B))),
% 0.45/0.63      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.45/0.63  thf('14', plain, ((v1_funct_1 @ sk_E)),
% 0.45/0.63      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.45/0.63  thf('15', plain,
% 0.45/0.63      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i]:
% 0.45/0.63         ((v2_struct_0 @ sk_B)
% 0.45/0.63          | (v2_struct_0 @ sk_D)
% 0.45/0.63          | ~ (m1_pre_topc @ sk_D @ X0)
% 0.45/0.63          | ~ (m1_pre_topc @ X1 @ sk_D)
% 0.45/0.63          | ~ (m1_subset_1 @ X2 @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_D)))
% 0.45/0.63          | ~ (m1_subset_1 @ X3 @ (u1_struct_0 @ X1))
% 0.45/0.63          | ~ (r1_tmap_1 @ X1 @ sk_B @ 
% 0.45/0.63               (k3_tmap_1 @ X0 @ sk_B @ sk_D @ X1 @ sk_E) @ X3)
% 0.45/0.63          | (r1_tmap_1 @ sk_D @ sk_B @ sk_E @ X3)
% 0.45/0.63          | ~ (m1_connsp_2 @ X2 @ sk_D @ X3)
% 0.45/0.63          | ~ (r1_tarski @ X2 @ (u1_struct_0 @ X1))
% 0.45/0.63          | ~ (m1_subset_1 @ X3 @ (u1_struct_0 @ sk_D))
% 0.45/0.63          | ~ (m1_pre_topc @ X1 @ X0)
% 0.45/0.63          | (v2_struct_0 @ X1)
% 0.45/0.63          | ~ (l1_pre_topc @ X0)
% 0.45/0.63          | ~ (v2_pre_topc @ X0)
% 0.45/0.63          | (v2_struct_0 @ X0))),
% 0.45/0.63      inference('demod', [status(thm)], ['10', '11', '12', '13', '14'])).
% 0.45/0.63  thf('16', plain,
% 0.45/0.63      (![X0 : $i]:
% 0.45/0.63         ((v2_struct_0 @ sk_A)
% 0.45/0.63          | ~ (v2_pre_topc @ sk_A)
% 0.45/0.63          | ~ (l1_pre_topc @ sk_A)
% 0.45/0.63          | (v2_struct_0 @ sk_C)
% 0.45/0.63          | ~ (m1_pre_topc @ sk_C @ sk_A)
% 0.45/0.63          | ~ (m1_subset_1 @ sk_F @ (u1_struct_0 @ sk_D))
% 0.45/0.63          | ~ (r1_tarski @ X0 @ (u1_struct_0 @ sk_C))
% 0.45/0.63          | ~ (m1_connsp_2 @ X0 @ sk_D @ sk_F)
% 0.45/0.63          | (r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_F)
% 0.45/0.63          | ~ (m1_subset_1 @ sk_F @ (u1_struct_0 @ sk_C))
% 0.45/0.63          | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_D)))
% 0.45/0.63          | ~ (m1_pre_topc @ sk_C @ sk_D)
% 0.45/0.63          | ~ (m1_pre_topc @ sk_D @ sk_A)
% 0.45/0.63          | (v2_struct_0 @ sk_D)
% 0.45/0.63          | (v2_struct_0 @ sk_B))),
% 0.45/0.63      inference('sup-', [status(thm)], ['6', '15'])).
% 0.45/0.63  thf('17', plain, ((v2_pre_topc @ sk_A)),
% 0.45/0.63      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.45/0.63  thf('18', plain, ((l1_pre_topc @ sk_A)),
% 0.45/0.63      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.45/0.63  thf('19', plain, ((m1_pre_topc @ sk_C @ sk_A)),
% 0.45/0.63      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.45/0.63  thf('20', plain, ((m1_subset_1 @ sk_F @ (u1_struct_0 @ sk_D))),
% 0.45/0.63      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.45/0.63  thf('21', plain, ((m1_subset_1 @ sk_G @ (u1_struct_0 @ sk_C))),
% 0.45/0.63      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.45/0.63  thf('22', plain, (((sk_F) = (sk_G))),
% 0.45/0.63      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.45/0.63  thf('23', plain, ((m1_subset_1 @ sk_F @ (u1_struct_0 @ sk_C))),
% 0.45/0.63      inference('demod', [status(thm)], ['21', '22'])).
% 0.45/0.63  thf('24', plain,
% 0.45/0.63      (((g1_pre_topc @ (u1_struct_0 @ sk_C) @ (u1_pre_topc @ sk_C)) = (sk_D))),
% 0.45/0.63      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.45/0.63  thf(t2_tsep_1, axiom,
% 0.45/0.63    (![A:$i]: ( ( l1_pre_topc @ A ) => ( m1_pre_topc @ A @ A ) ))).
% 0.45/0.63  thf('25', plain,
% 0.45/0.63      (![X22 : $i]: ((m1_pre_topc @ X22 @ X22) | ~ (l1_pre_topc @ X22))),
% 0.45/0.63      inference('cnf', [status(esa)], [t2_tsep_1])).
% 0.45/0.63  thf(t65_pre_topc, axiom,
% 0.45/0.63    (![A:$i]:
% 0.45/0.63     ( ( l1_pre_topc @ A ) =>
% 0.45/0.63       ( ![B:$i]:
% 0.45/0.63         ( ( l1_pre_topc @ B ) =>
% 0.45/0.63           ( ( m1_pre_topc @ A @ B ) <=>
% 0.45/0.63             ( m1_pre_topc @
% 0.45/0.63               A @ ( g1_pre_topc @ ( u1_struct_0 @ B ) @ ( u1_pre_topc @ B ) ) ) ) ) ) ))).
% 0.45/0.63  thf('26', plain,
% 0.45/0.63      (![X16 : $i, X17 : $i]:
% 0.45/0.63         (~ (l1_pre_topc @ X16)
% 0.45/0.63          | ~ (m1_pre_topc @ X17 @ X16)
% 0.45/0.63          | (m1_pre_topc @ X17 @ 
% 0.45/0.63             (g1_pre_topc @ (u1_struct_0 @ X16) @ (u1_pre_topc @ X16)))
% 0.45/0.63          | ~ (l1_pre_topc @ X17))),
% 0.45/0.63      inference('cnf', [status(esa)], [t65_pre_topc])).
% 0.45/0.63  thf('27', plain,
% 0.45/0.63      (![X0 : $i]:
% 0.45/0.63         (~ (l1_pre_topc @ X0)
% 0.45/0.63          | ~ (l1_pre_topc @ X0)
% 0.45/0.63          | (m1_pre_topc @ X0 @ 
% 0.45/0.63             (g1_pre_topc @ (u1_struct_0 @ X0) @ (u1_pre_topc @ X0)))
% 0.45/0.63          | ~ (l1_pre_topc @ X0))),
% 0.45/0.63      inference('sup-', [status(thm)], ['25', '26'])).
% 0.45/0.63  thf('28', plain,
% 0.45/0.63      (![X0 : $i]:
% 0.45/0.63         ((m1_pre_topc @ X0 @ 
% 0.45/0.63           (g1_pre_topc @ (u1_struct_0 @ X0) @ (u1_pre_topc @ X0)))
% 0.45/0.63          | ~ (l1_pre_topc @ X0))),
% 0.45/0.63      inference('simplify', [status(thm)], ['27'])).
% 0.45/0.63  thf('29', plain, (((m1_pre_topc @ sk_C @ sk_D) | ~ (l1_pre_topc @ sk_C))),
% 0.45/0.63      inference('sup+', [status(thm)], ['24', '28'])).
% 0.45/0.63  thf('30', plain, ((m1_pre_topc @ sk_C @ sk_A)),
% 0.45/0.63      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.45/0.63  thf(dt_m1_pre_topc, axiom,
% 0.45/0.63    (![A:$i]:
% 0.45/0.63     ( ( l1_pre_topc @ A ) =>
% 0.45/0.63       ( ![B:$i]: ( ( m1_pre_topc @ B @ A ) => ( l1_pre_topc @ B ) ) ) ))).
% 0.45/0.63  thf('31', plain,
% 0.45/0.63      (![X11 : $i, X12 : $i]:
% 0.45/0.63         (~ (m1_pre_topc @ X11 @ X12)
% 0.45/0.63          | (l1_pre_topc @ X11)
% 0.45/0.63          | ~ (l1_pre_topc @ X12))),
% 0.45/0.63      inference('cnf', [status(esa)], [dt_m1_pre_topc])).
% 0.45/0.63  thf('32', plain, ((~ (l1_pre_topc @ sk_A) | (l1_pre_topc @ sk_C))),
% 0.45/0.63      inference('sup-', [status(thm)], ['30', '31'])).
% 0.45/0.63  thf('33', plain, ((l1_pre_topc @ sk_A)),
% 0.45/0.63      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.45/0.63  thf('34', plain, ((l1_pre_topc @ sk_C)),
% 0.45/0.64      inference('demod', [status(thm)], ['32', '33'])).
% 0.45/0.64  thf('35', plain, ((m1_pre_topc @ sk_C @ sk_D)),
% 0.45/0.64      inference('demod', [status(thm)], ['29', '34'])).
% 0.45/0.64  thf('36', plain, ((m1_pre_topc @ sk_D @ sk_A)),
% 0.45/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.45/0.64  thf('37', plain,
% 0.45/0.64      (![X0 : $i]:
% 0.45/0.64         ((v2_struct_0 @ sk_A)
% 0.45/0.64          | (v2_struct_0 @ sk_C)
% 0.45/0.64          | ~ (r1_tarski @ X0 @ (u1_struct_0 @ sk_C))
% 0.45/0.64          | ~ (m1_connsp_2 @ X0 @ sk_D @ sk_F)
% 0.45/0.64          | (r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_F)
% 0.45/0.64          | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_D)))
% 0.45/0.64          | (v2_struct_0 @ sk_D)
% 0.45/0.64          | (v2_struct_0 @ sk_B))),
% 0.45/0.64      inference('demod', [status(thm)],
% 0.45/0.64                ['16', '17', '18', '19', '20', '23', '35', '36'])).
% 0.45/0.64  thf('38', plain,
% 0.45/0.64      (((v2_struct_0 @ sk_B)
% 0.45/0.64        | (v2_struct_0 @ sk_D)
% 0.45/0.64        | (r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_F)
% 0.45/0.64        | ~ (m1_connsp_2 @ (u1_struct_0 @ sk_D) @ sk_D @ sk_F)
% 0.45/0.64        | ~ (r1_tarski @ (u1_struct_0 @ sk_D) @ (u1_struct_0 @ sk_C))
% 0.45/0.64        | (v2_struct_0 @ sk_C)
% 0.45/0.64        | (v2_struct_0 @ sk_A))),
% 0.45/0.64      inference('sup-', [status(thm)], ['3', '37'])).
% 0.45/0.64  thf(d3_struct_0, axiom,
% 0.45/0.64    (![A:$i]:
% 0.45/0.64     ( ( l1_struct_0 @ A ) => ( ( k2_struct_0 @ A ) = ( u1_struct_0 @ A ) ) ))).
% 0.45/0.64  thf('39', plain,
% 0.45/0.64      (![X9 : $i]:
% 0.45/0.64         (((k2_struct_0 @ X9) = (u1_struct_0 @ X9)) | ~ (l1_struct_0 @ X9))),
% 0.45/0.64      inference('cnf', [status(esa)], [d3_struct_0])).
% 0.45/0.64  thf(fc10_tops_1, axiom,
% 0.45/0.64    (![A:$i]:
% 0.45/0.64     ( ( ( v2_pre_topc @ A ) & ( l1_pre_topc @ A ) ) =>
% 0.45/0.64       ( v3_pre_topc @ ( k2_struct_0 @ A ) @ A ) ))).
% 0.45/0.64  thf('40', plain,
% 0.45/0.64      (![X18 : $i]:
% 0.45/0.64         ((v3_pre_topc @ (k2_struct_0 @ X18) @ X18)
% 0.45/0.64          | ~ (l1_pre_topc @ X18)
% 0.45/0.64          | ~ (v2_pre_topc @ X18))),
% 0.45/0.64      inference('cnf', [status(esa)], [fc10_tops_1])).
% 0.45/0.64  thf('41', plain,
% 0.45/0.64      (![X9 : $i]:
% 0.45/0.64         (((k2_struct_0 @ X9) = (u1_struct_0 @ X9)) | ~ (l1_struct_0 @ X9))),
% 0.45/0.64      inference('cnf', [status(esa)], [d3_struct_0])).
% 0.45/0.64  thf('42', plain, ((m1_subset_1 @ sk_F @ (u1_struct_0 @ sk_D))),
% 0.45/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.45/0.64  thf('43', plain, (![X1 : $i]: (m1_subset_1 @ X1 @ (k1_zfmisc_1 @ X1))),
% 0.45/0.64      inference('demod', [status(thm)], ['1', '2'])).
% 0.45/0.64  thf(t5_connsp_2, axiom,
% 0.45/0.64    (![A:$i]:
% 0.45/0.64     ( ( ( ~( v2_struct_0 @ A ) ) & ( v2_pre_topc @ A ) & ( l1_pre_topc @ A ) ) =>
% 0.45/0.64       ( ![B:$i]:
% 0.45/0.64         ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) =>
% 0.45/0.64           ( ![C:$i]:
% 0.45/0.64             ( ( m1_subset_1 @ C @ ( u1_struct_0 @ A ) ) =>
% 0.45/0.64               ( ( ( v3_pre_topc @ B @ A ) & ( r2_hidden @ C @ B ) ) =>
% 0.45/0.64                 ( m1_connsp_2 @ B @ A @ C ) ) ) ) ) ) ))).
% 0.45/0.64  thf('44', plain,
% 0.45/0.64      (![X19 : $i, X20 : $i, X21 : $i]:
% 0.45/0.64         (~ (m1_subset_1 @ X19 @ (k1_zfmisc_1 @ (u1_struct_0 @ X20)))
% 0.45/0.64          | ~ (v3_pre_topc @ X19 @ X20)
% 0.45/0.64          | ~ (r2_hidden @ X21 @ X19)
% 0.45/0.64          | (m1_connsp_2 @ X19 @ X20 @ X21)
% 0.45/0.64          | ~ (m1_subset_1 @ X21 @ (u1_struct_0 @ X20))
% 0.45/0.64          | ~ (l1_pre_topc @ X20)
% 0.45/0.64          | ~ (v2_pre_topc @ X20)
% 0.45/0.64          | (v2_struct_0 @ X20))),
% 0.45/0.64      inference('cnf', [status(esa)], [t5_connsp_2])).
% 0.45/0.64  thf('45', plain,
% 0.45/0.64      (![X0 : $i, X1 : $i]:
% 0.45/0.64         ((v2_struct_0 @ X0)
% 0.45/0.64          | ~ (v2_pre_topc @ X0)
% 0.45/0.64          | ~ (l1_pre_topc @ X0)
% 0.45/0.64          | ~ (m1_subset_1 @ X1 @ (u1_struct_0 @ X0))
% 0.45/0.64          | (m1_connsp_2 @ (u1_struct_0 @ X0) @ X0 @ X1)
% 0.45/0.64          | ~ (r2_hidden @ X1 @ (u1_struct_0 @ X0))
% 0.45/0.64          | ~ (v3_pre_topc @ (u1_struct_0 @ X0) @ X0))),
% 0.45/0.64      inference('sup-', [status(thm)], ['43', '44'])).
% 0.45/0.64  thf('46', plain,
% 0.45/0.64      ((~ (v3_pre_topc @ (u1_struct_0 @ sk_D) @ sk_D)
% 0.45/0.64        | ~ (r2_hidden @ sk_F @ (u1_struct_0 @ sk_D))
% 0.45/0.64        | (m1_connsp_2 @ (u1_struct_0 @ sk_D) @ sk_D @ sk_F)
% 0.45/0.64        | ~ (l1_pre_topc @ sk_D)
% 0.45/0.64        | ~ (v2_pre_topc @ sk_D)
% 0.45/0.64        | (v2_struct_0 @ sk_D))),
% 0.45/0.64      inference('sup-', [status(thm)], ['42', '45'])).
% 0.45/0.64  thf('47', plain, ((m1_pre_topc @ sk_D @ sk_A)),
% 0.45/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.45/0.64  thf('48', plain,
% 0.45/0.64      (![X11 : $i, X12 : $i]:
% 0.45/0.64         (~ (m1_pre_topc @ X11 @ X12)
% 0.45/0.64          | (l1_pre_topc @ X11)
% 0.45/0.64          | ~ (l1_pre_topc @ X12))),
% 0.45/0.64      inference('cnf', [status(esa)], [dt_m1_pre_topc])).
% 0.45/0.64  thf('49', plain, ((~ (l1_pre_topc @ sk_A) | (l1_pre_topc @ sk_D))),
% 0.45/0.64      inference('sup-', [status(thm)], ['47', '48'])).
% 0.45/0.64  thf('50', plain, ((l1_pre_topc @ sk_A)),
% 0.45/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.45/0.64  thf('51', plain, ((l1_pre_topc @ sk_D)),
% 0.45/0.64      inference('demod', [status(thm)], ['49', '50'])).
% 0.45/0.64  thf('52', plain, ((m1_pre_topc @ sk_D @ sk_A)),
% 0.45/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.45/0.64  thf(cc1_pre_topc, axiom,
% 0.45/0.64    (![A:$i]:
% 0.45/0.64     ( ( ( v2_pre_topc @ A ) & ( l1_pre_topc @ A ) ) =>
% 0.45/0.64       ( ![B:$i]: ( ( m1_pre_topc @ B @ A ) => ( v2_pre_topc @ B ) ) ) ))).
% 0.45/0.64  thf('53', plain,
% 0.45/0.64      (![X7 : $i, X8 : $i]:
% 0.45/0.64         (~ (m1_pre_topc @ X7 @ X8)
% 0.45/0.64          | (v2_pre_topc @ X7)
% 0.45/0.64          | ~ (l1_pre_topc @ X8)
% 0.45/0.64          | ~ (v2_pre_topc @ X8))),
% 0.45/0.64      inference('cnf', [status(esa)], [cc1_pre_topc])).
% 0.45/0.64  thf('54', plain,
% 0.45/0.64      ((~ (v2_pre_topc @ sk_A) | ~ (l1_pre_topc @ sk_A) | (v2_pre_topc @ sk_D))),
% 0.45/0.64      inference('sup-', [status(thm)], ['52', '53'])).
% 0.45/0.64  thf('55', plain, ((v2_pre_topc @ sk_A)),
% 0.45/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.45/0.64  thf('56', plain, ((l1_pre_topc @ sk_A)),
% 0.45/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.45/0.64  thf('57', plain, ((v2_pre_topc @ sk_D)),
% 0.45/0.64      inference('demod', [status(thm)], ['54', '55', '56'])).
% 0.45/0.64  thf('58', plain,
% 0.45/0.64      ((~ (v3_pre_topc @ (u1_struct_0 @ sk_D) @ sk_D)
% 0.45/0.64        | ~ (r2_hidden @ sk_F @ (u1_struct_0 @ sk_D))
% 0.45/0.64        | (m1_connsp_2 @ (u1_struct_0 @ sk_D) @ sk_D @ sk_F)
% 0.45/0.64        | (v2_struct_0 @ sk_D))),
% 0.45/0.64      inference('demod', [status(thm)], ['46', '51', '57'])).
% 0.45/0.64  thf('59', plain,
% 0.45/0.64      ((~ (v3_pre_topc @ (k2_struct_0 @ sk_D) @ sk_D)
% 0.45/0.64        | ~ (l1_struct_0 @ sk_D)
% 0.45/0.64        | (v2_struct_0 @ sk_D)
% 0.45/0.64        | (m1_connsp_2 @ (u1_struct_0 @ sk_D) @ sk_D @ sk_F)
% 0.45/0.64        | ~ (r2_hidden @ sk_F @ (u1_struct_0 @ sk_D)))),
% 0.45/0.64      inference('sup-', [status(thm)], ['41', '58'])).
% 0.45/0.64  thf('60', plain, ((l1_pre_topc @ sk_D)),
% 0.45/0.64      inference('demod', [status(thm)], ['49', '50'])).
% 0.45/0.64  thf(dt_l1_pre_topc, axiom,
% 0.45/0.64    (![A:$i]: ( ( l1_pre_topc @ A ) => ( l1_struct_0 @ A ) ))).
% 0.45/0.64  thf('61', plain,
% 0.45/0.64      (![X10 : $i]: ((l1_struct_0 @ X10) | ~ (l1_pre_topc @ X10))),
% 0.45/0.64      inference('cnf', [status(esa)], [dt_l1_pre_topc])).
% 0.45/0.64  thf('62', plain, ((l1_struct_0 @ sk_D)),
% 0.45/0.64      inference('sup-', [status(thm)], ['60', '61'])).
% 0.45/0.64  thf('63', plain,
% 0.45/0.64      ((~ (v3_pre_topc @ (k2_struct_0 @ sk_D) @ sk_D)
% 0.45/0.64        | (v2_struct_0 @ sk_D)
% 0.45/0.64        | (m1_connsp_2 @ (u1_struct_0 @ sk_D) @ sk_D @ sk_F)
% 0.45/0.64        | ~ (r2_hidden @ sk_F @ (u1_struct_0 @ sk_D)))),
% 0.45/0.64      inference('demod', [status(thm)], ['59', '62'])).
% 0.45/0.64  thf('64', plain,
% 0.45/0.64      ((~ (v2_pre_topc @ sk_D)
% 0.45/0.64        | ~ (l1_pre_topc @ sk_D)
% 0.45/0.64        | ~ (r2_hidden @ sk_F @ (u1_struct_0 @ sk_D))
% 0.45/0.64        | (m1_connsp_2 @ (u1_struct_0 @ sk_D) @ sk_D @ sk_F)
% 0.45/0.64        | (v2_struct_0 @ sk_D))),
% 0.45/0.64      inference('sup-', [status(thm)], ['40', '63'])).
% 0.45/0.64  thf('65', plain, ((v2_pre_topc @ sk_D)),
% 0.45/0.64      inference('demod', [status(thm)], ['54', '55', '56'])).
% 0.45/0.64  thf('66', plain, ((l1_pre_topc @ sk_D)),
% 0.45/0.64      inference('demod', [status(thm)], ['49', '50'])).
% 0.45/0.64  thf('67', plain,
% 0.45/0.64      ((~ (r2_hidden @ sk_F @ (u1_struct_0 @ sk_D))
% 0.45/0.64        | (m1_connsp_2 @ (u1_struct_0 @ sk_D) @ sk_D @ sk_F)
% 0.45/0.64        | (v2_struct_0 @ sk_D))),
% 0.45/0.64      inference('demod', [status(thm)], ['64', '65', '66'])).
% 0.45/0.64  thf('68', plain, (~ (v2_struct_0 @ sk_D)),
% 0.45/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.45/0.64  thf('69', plain,
% 0.45/0.64      (((m1_connsp_2 @ (u1_struct_0 @ sk_D) @ sk_D @ sk_F)
% 0.45/0.64        | ~ (r2_hidden @ sk_F @ (u1_struct_0 @ sk_D)))),
% 0.45/0.64      inference('clc', [status(thm)], ['67', '68'])).
% 0.45/0.64  thf('70', plain,
% 0.45/0.64      ((~ (r2_hidden @ sk_F @ (k2_struct_0 @ sk_D))
% 0.45/0.64        | ~ (l1_struct_0 @ sk_D)
% 0.45/0.64        | (m1_connsp_2 @ (u1_struct_0 @ sk_D) @ sk_D @ sk_F))),
% 0.45/0.64      inference('sup-', [status(thm)], ['39', '69'])).
% 0.45/0.64  thf('71', plain,
% 0.45/0.64      (![X9 : $i]:
% 0.45/0.64         (((k2_struct_0 @ X9) = (u1_struct_0 @ X9)) | ~ (l1_struct_0 @ X9))),
% 0.45/0.64      inference('cnf', [status(esa)], [d3_struct_0])).
% 0.45/0.64  thf('72', plain, ((m1_subset_1 @ sk_F @ (u1_struct_0 @ sk_D))),
% 0.45/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.45/0.64  thf(t2_subset, axiom,
% 0.45/0.64    (![A:$i,B:$i]:
% 0.45/0.64     ( ( m1_subset_1 @ A @ B ) =>
% 0.45/0.64       ( ( v1_xboole_0 @ B ) | ( r2_hidden @ A @ B ) ) ))).
% 0.45/0.64  thf('73', plain,
% 0.45/0.64      (![X2 : $i, X3 : $i]:
% 0.45/0.64         ((r2_hidden @ X2 @ X3)
% 0.45/0.64          | (v1_xboole_0 @ X3)
% 0.45/0.64          | ~ (m1_subset_1 @ X2 @ X3))),
% 0.45/0.64      inference('cnf', [status(esa)], [t2_subset])).
% 0.45/0.64  thf('74', plain,
% 0.45/0.64      (((v1_xboole_0 @ (u1_struct_0 @ sk_D))
% 0.45/0.64        | (r2_hidden @ sk_F @ (u1_struct_0 @ sk_D)))),
% 0.45/0.64      inference('sup-', [status(thm)], ['72', '73'])).
% 0.45/0.64  thf('75', plain,
% 0.45/0.64      (((r2_hidden @ sk_F @ (k2_struct_0 @ sk_D))
% 0.45/0.64        | ~ (l1_struct_0 @ sk_D)
% 0.45/0.64        | (v1_xboole_0 @ (u1_struct_0 @ sk_D)))),
% 0.45/0.64      inference('sup+', [status(thm)], ['71', '74'])).
% 0.45/0.64  thf('76', plain, ((l1_struct_0 @ sk_D)),
% 0.45/0.64      inference('sup-', [status(thm)], ['60', '61'])).
% 0.45/0.64  thf('77', plain,
% 0.45/0.64      (((r2_hidden @ sk_F @ (k2_struct_0 @ sk_D))
% 0.45/0.64        | (v1_xboole_0 @ (u1_struct_0 @ sk_D)))),
% 0.45/0.64      inference('demod', [status(thm)], ['75', '76'])).
% 0.45/0.64  thf(fc2_struct_0, axiom,
% 0.45/0.64    (![A:$i]:
% 0.45/0.64     ( ( ( ~( v2_struct_0 @ A ) ) & ( l1_struct_0 @ A ) ) =>
% 0.45/0.64       ( ~( v1_xboole_0 @ ( u1_struct_0 @ A ) ) ) ))).
% 0.45/0.64  thf('78', plain,
% 0.45/0.64      (![X13 : $i]:
% 0.45/0.64         (~ (v1_xboole_0 @ (u1_struct_0 @ X13))
% 0.45/0.64          | ~ (l1_struct_0 @ X13)
% 0.45/0.64          | (v2_struct_0 @ X13))),
% 0.45/0.64      inference('cnf', [status(esa)], [fc2_struct_0])).
% 0.45/0.64  thf('79', plain,
% 0.45/0.64      (((r2_hidden @ sk_F @ (k2_struct_0 @ sk_D))
% 0.45/0.64        | (v2_struct_0 @ sk_D)
% 0.45/0.64        | ~ (l1_struct_0 @ sk_D))),
% 0.45/0.64      inference('sup-', [status(thm)], ['77', '78'])).
% 0.45/0.64  thf('80', plain, ((l1_struct_0 @ sk_D)),
% 0.45/0.64      inference('sup-', [status(thm)], ['60', '61'])).
% 0.45/0.64  thf('81', plain,
% 0.45/0.64      (((r2_hidden @ sk_F @ (k2_struct_0 @ sk_D)) | (v2_struct_0 @ sk_D))),
% 0.45/0.64      inference('demod', [status(thm)], ['79', '80'])).
% 0.45/0.64  thf('82', plain, (~ (v2_struct_0 @ sk_D)),
% 0.45/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.45/0.64  thf('83', plain, ((r2_hidden @ sk_F @ (k2_struct_0 @ sk_D))),
% 0.45/0.64      inference('clc', [status(thm)], ['81', '82'])).
% 0.45/0.64  thf('84', plain, ((l1_struct_0 @ sk_D)),
% 0.45/0.64      inference('sup-', [status(thm)], ['60', '61'])).
% 0.45/0.64  thf('85', plain, ((m1_connsp_2 @ (u1_struct_0 @ sk_D) @ sk_D @ sk_F)),
% 0.45/0.64      inference('demod', [status(thm)], ['70', '83', '84'])).
% 0.45/0.64  thf('86', plain,
% 0.45/0.64      (![X22 : $i]: ((m1_pre_topc @ X22 @ X22) | ~ (l1_pre_topc @ X22))),
% 0.45/0.64      inference('cnf', [status(esa)], [t2_tsep_1])).
% 0.45/0.64  thf('87', plain,
% 0.45/0.64      (((g1_pre_topc @ (u1_struct_0 @ sk_C) @ (u1_pre_topc @ sk_C)) = (sk_D))),
% 0.45/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.45/0.64  thf(t59_pre_topc, axiom,
% 0.45/0.64    (![A:$i]:
% 0.45/0.64     ( ( l1_pre_topc @ A ) =>
% 0.45/0.64       ( ![B:$i]:
% 0.45/0.64         ( ( m1_pre_topc @
% 0.45/0.64             B @ ( g1_pre_topc @ ( u1_struct_0 @ A ) @ ( u1_pre_topc @ A ) ) ) =>
% 0.45/0.64           ( m1_pre_topc @ B @ A ) ) ) ))).
% 0.45/0.64  thf('88', plain,
% 0.45/0.64      (![X14 : $i, X15 : $i]:
% 0.45/0.64         (~ (m1_pre_topc @ X14 @ 
% 0.45/0.64             (g1_pre_topc @ (u1_struct_0 @ X15) @ (u1_pre_topc @ X15)))
% 0.45/0.64          | (m1_pre_topc @ X14 @ X15)
% 0.45/0.64          | ~ (l1_pre_topc @ X15))),
% 0.45/0.64      inference('cnf', [status(esa)], [t59_pre_topc])).
% 0.45/0.64  thf('89', plain,
% 0.45/0.64      (![X0 : $i]:
% 0.45/0.64         (~ (m1_pre_topc @ X0 @ sk_D)
% 0.45/0.64          | ~ (l1_pre_topc @ sk_C)
% 0.45/0.64          | (m1_pre_topc @ X0 @ sk_C))),
% 0.45/0.64      inference('sup-', [status(thm)], ['87', '88'])).
% 0.45/0.64  thf('90', plain, ((l1_pre_topc @ sk_C)),
% 0.45/0.64      inference('demod', [status(thm)], ['32', '33'])).
% 0.45/0.64  thf('91', plain,
% 0.45/0.64      (![X0 : $i]: (~ (m1_pre_topc @ X0 @ sk_D) | (m1_pre_topc @ X0 @ sk_C))),
% 0.45/0.64      inference('demod', [status(thm)], ['89', '90'])).
% 0.45/0.64  thf('92', plain, ((~ (l1_pre_topc @ sk_D) | (m1_pre_topc @ sk_D @ sk_C))),
% 0.45/0.64      inference('sup-', [status(thm)], ['86', '91'])).
% 0.45/0.64  thf('93', plain, ((l1_pre_topc @ sk_D)),
% 0.45/0.64      inference('demod', [status(thm)], ['49', '50'])).
% 0.45/0.64  thf('94', plain, ((m1_pre_topc @ sk_D @ sk_C)),
% 0.45/0.64      inference('demod', [status(thm)], ['92', '93'])).
% 0.45/0.64  thf(t35_borsuk_1, axiom,
% 0.45/0.64    (![A:$i]:
% 0.45/0.64     ( ( l1_pre_topc @ A ) =>
% 0.45/0.64       ( ![B:$i]:
% 0.45/0.64         ( ( m1_pre_topc @ B @ A ) =>
% 0.45/0.64           ( r1_tarski @ ( u1_struct_0 @ B ) @ ( u1_struct_0 @ A ) ) ) ) ))).
% 0.45/0.64  thf('95', plain,
% 0.45/0.64      (![X23 : $i, X24 : $i]:
% 0.45/0.64         (~ (m1_pre_topc @ X23 @ X24)
% 0.45/0.64          | (r1_tarski @ (u1_struct_0 @ X23) @ (u1_struct_0 @ X24))
% 0.45/0.64          | ~ (l1_pre_topc @ X24))),
% 0.45/0.64      inference('cnf', [status(esa)], [t35_borsuk_1])).
% 0.45/0.64  thf('96', plain,
% 0.45/0.64      ((~ (l1_pre_topc @ sk_C)
% 0.45/0.64        | (r1_tarski @ (u1_struct_0 @ sk_D) @ (u1_struct_0 @ sk_C)))),
% 0.45/0.64      inference('sup-', [status(thm)], ['94', '95'])).
% 0.45/0.64  thf('97', plain, ((l1_pre_topc @ sk_C)),
% 0.45/0.64      inference('demod', [status(thm)], ['32', '33'])).
% 0.45/0.64  thf('98', plain, ((r1_tarski @ (u1_struct_0 @ sk_D) @ (u1_struct_0 @ sk_C))),
% 0.45/0.64      inference('demod', [status(thm)], ['96', '97'])).
% 0.45/0.64  thf('99', plain,
% 0.45/0.64      (((v2_struct_0 @ sk_B)
% 0.45/0.64        | (v2_struct_0 @ sk_D)
% 0.45/0.64        | (r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_F)
% 0.45/0.64        | (v2_struct_0 @ sk_C)
% 0.45/0.64        | (v2_struct_0 @ sk_A))),
% 0.45/0.64      inference('demod', [status(thm)], ['38', '85', '98'])).
% 0.45/0.64  thf('100', plain, (~ (r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_F)),
% 0.45/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.45/0.64  thf('101', plain,
% 0.45/0.64      (((v2_struct_0 @ sk_A)
% 0.45/0.64        | (v2_struct_0 @ sk_C)
% 0.45/0.64        | (v2_struct_0 @ sk_D)
% 0.45/0.64        | (v2_struct_0 @ sk_B))),
% 0.45/0.64      inference('sup-', [status(thm)], ['99', '100'])).
% 0.45/0.64  thf('102', plain, (~ (v2_struct_0 @ sk_D)),
% 0.45/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.45/0.64  thf('103', plain,
% 0.45/0.64      (((v2_struct_0 @ sk_B) | (v2_struct_0 @ sk_C) | (v2_struct_0 @ sk_A))),
% 0.45/0.64      inference('sup-', [status(thm)], ['101', '102'])).
% 0.45/0.64  thf('104', plain, (~ (v2_struct_0 @ sk_B)),
% 0.45/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.45/0.64  thf('105', plain, (((v2_struct_0 @ sk_A) | (v2_struct_0 @ sk_C))),
% 0.45/0.64      inference('clc', [status(thm)], ['103', '104'])).
% 0.45/0.64  thf('106', plain, (~ (v2_struct_0 @ sk_A)),
% 0.45/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.45/0.64  thf('107', plain, ((v2_struct_0 @ sk_C)),
% 0.45/0.64      inference('clc', [status(thm)], ['105', '106'])).
% 0.45/0.64  thf('108', plain, ($false), inference('demod', [status(thm)], ['0', '107'])).
% 0.45/0.64  
% 0.45/0.64  % SZS output end Refutation
% 0.45/0.64  
% 0.45/0.64  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
