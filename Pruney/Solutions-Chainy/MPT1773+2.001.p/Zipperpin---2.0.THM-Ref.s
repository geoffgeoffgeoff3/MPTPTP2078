%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.UOZuq8QgDW

% Computer   : n009.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 14:10:14 EST 2020

% Result     : Theorem 0.20s
% Output     : Refutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :  202 ( 813 expanded)
%              Number of leaves         :   38 ( 245 expanded)
%              Depth                    :   27
%              Number of atoms          : 2498 (35900 expanded)
%              Number of equality atoms :   33 ( 465 expanded)
%              Maximal formula depth    :   32 (   7 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(l1_pre_topc_type,type,(
    l1_pre_topc: $i > $o )).

thf(m1_pre_topc_type,type,(
    m1_pre_topc: $i > $i > $o )).

thf(v3_pre_topc_type,type,(
    v3_pre_topc: $i > $i > $o )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(k3_tmap_1_type,type,(
    k3_tmap_1: $i > $i > $i > $i > $i > $i )).

thf(k2_partfun1_type,type,(
    k2_partfun1: $i > $i > $i > $i > $i )).

thf(r1_tmap_1_type,type,(
    r1_tmap_1: $i > $i > $i > $i > $o )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(v1_funct_1_type,type,(
    v1_funct_1: $i > $o )).

thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(sk_E_type,type,(
    sk_E: $i )).

thf(sk_D_type,type,(
    sk_D: $i )).

thf(k2_tmap_1_type,type,(
    k2_tmap_1: $i > $i > $i > $i > $i )).

thf(sk_C_1_type,type,(
    sk_C_1: $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(k1_tops_1_type,type,(
    k1_tops_1: $i > $i > $i )).

thf(m1_connsp_2_type,type,(
    m1_connsp_2: $i > $i > $i > $o )).

thf(sk_F_type,type,(
    sk_F: $i )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(v1_funct_2_type,type,(
    v1_funct_2: $i > $i > $i > $o )).

thf(u1_struct_0_type,type,(
    u1_struct_0: $i > $i )).

thf(v2_struct_0_type,type,(
    v2_struct_0: $i > $o )).

thf(v2_pre_topc_type,type,(
    v2_pre_topc: $i > $o )).

thf(k2_zfmisc_1_type,type,(
    k2_zfmisc_1: $i > $i > $i )).

thf(sk_H_type,type,(
    sk_H: $i )).

thf(sk_G_type,type,(
    sk_G: $i )).

thf(t84_tmap_1,conjecture,(
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
                                   => ( ( ( v3_pre_topc @ F @ D )
                                        & ( r2_hidden @ G @ F )
                                        & ( r1_tarski @ F @ ( u1_struct_0 @ C ) )
                                        & ( G = H ) )
                                     => ( ( r1_tmap_1 @ D @ B @ E @ G )
                                      <=> ( r1_tmap_1 @ C @ B @ ( k3_tmap_1 @ A @ B @ D @ C @ E ) @ H ) ) ) ) ) ) ) ) ) ) ) ) )).

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
                       => ( ( m1_pre_topc @ C @ D )
                         => ! [F: $i] :
                              ( ( m1_subset_1 @ F @ ( k1_zfmisc_1 @ ( u1_struct_0 @ D ) ) )
                             => ! [G: $i] :
                                  ( ( m1_subset_1 @ G @ ( u1_struct_0 @ D ) )
                                 => ! [H: $i] :
                                      ( ( m1_subset_1 @ H @ ( u1_struct_0 @ C ) )
                                     => ( ( ( v3_pre_topc @ F @ D )
                                          & ( r2_hidden @ G @ F )
                                          & ( r1_tarski @ F @ ( u1_struct_0 @ C ) )
                                          & ( G = H ) )
                                       => ( ( r1_tmap_1 @ D @ B @ E @ G )
                                        <=> ( r1_tmap_1 @ C @ B @ ( k3_tmap_1 @ A @ B @ D @ C @ E ) @ H ) ) ) ) ) ) ) ) ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t84_tmap_1])).

thf('0',plain,(
    ~ ( v2_struct_0 @ sk_C_1 ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('1',plain,(
    m1_subset_1 @ sk_F @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_D ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('2',plain,
    ( ( r1_tmap_1 @ sk_C_1 @ sk_B @ ( k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C_1 @ sk_E ) @ sk_H )
    | ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_G ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('3',plain,
    ( ( r1_tmap_1 @ sk_C_1 @ sk_B @ ( k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C_1 @ sk_E ) @ sk_H )
   <= ( r1_tmap_1 @ sk_C_1 @ sk_B @ ( k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C_1 @ sk_E ) @ sk_H ) ),
    inference(split,[status(esa)],['2'])).

thf('4',plain,(
    m1_pre_topc @ sk_C_1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('5',plain,(
    m1_pre_topc @ sk_D @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('6',plain,(
    m1_subset_1 @ sk_E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( u1_struct_0 @ sk_D ) @ ( u1_struct_0 @ sk_B ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(d5_tmap_1,axiom,(
    ! [A: $i] :
      ( ( ~ ( v2_struct_0 @ A )
        & ( v2_pre_topc @ A )
        & ( l1_pre_topc @ A ) )
     => ! [B: $i] :
          ( ( ~ ( v2_struct_0 @ B )
            & ( v2_pre_topc @ B )
            & ( l1_pre_topc @ B ) )
         => ! [C: $i] :
              ( ( m1_pre_topc @ C @ A )
             => ! [D: $i] :
                  ( ( m1_pre_topc @ D @ A )
                 => ! [E: $i] :
                      ( ( ( v1_funct_1 @ E )
                        & ( v1_funct_2 @ E @ ( u1_struct_0 @ C ) @ ( u1_struct_0 @ B ) )
                        & ( m1_subset_1 @ E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( u1_struct_0 @ C ) @ ( u1_struct_0 @ B ) ) ) ) )
                     => ( ( m1_pre_topc @ D @ C )
                       => ( ( k3_tmap_1 @ A @ B @ C @ D @ E )
                          = ( k2_partfun1 @ ( u1_struct_0 @ C ) @ ( u1_struct_0 @ B ) @ E @ ( u1_struct_0 @ D ) ) ) ) ) ) ) ) ) )).

thf('7',plain,(
    ! [X24: $i,X25: $i,X26: $i,X27: $i,X28: $i] :
      ( ( v2_struct_0 @ X24 )
      | ~ ( v2_pre_topc @ X24 )
      | ~ ( l1_pre_topc @ X24 )
      | ~ ( m1_pre_topc @ X25 @ X26 )
      | ~ ( m1_pre_topc @ X25 @ X27 )
      | ( ( k3_tmap_1 @ X26 @ X24 @ X27 @ X25 @ X28 )
        = ( k2_partfun1 @ ( u1_struct_0 @ X27 ) @ ( u1_struct_0 @ X24 ) @ X28 @ ( u1_struct_0 @ X25 ) ) )
      | ~ ( m1_subset_1 @ X28 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( u1_struct_0 @ X27 ) @ ( u1_struct_0 @ X24 ) ) ) )
      | ~ ( v1_funct_2 @ X28 @ ( u1_struct_0 @ X27 ) @ ( u1_struct_0 @ X24 ) )
      | ~ ( v1_funct_1 @ X28 )
      | ~ ( m1_pre_topc @ X27 @ X26 )
      | ~ ( l1_pre_topc @ X26 )
      | ~ ( v2_pre_topc @ X26 )
      | ( v2_struct_0 @ X26 ) ) ),
    inference(cnf,[status(esa)],[d5_tmap_1])).

thf('8',plain,(
    ! [X0: $i,X1: $i] :
      ( ( v2_struct_0 @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( m1_pre_topc @ sk_D @ X0 )
      | ~ ( v1_funct_1 @ sk_E )
      | ~ ( v1_funct_2 @ sk_E @ ( u1_struct_0 @ sk_D ) @ ( u1_struct_0 @ sk_B ) )
      | ( ( k3_tmap_1 @ X0 @ sk_B @ sk_D @ X1 @ sk_E )
        = ( k2_partfun1 @ ( u1_struct_0 @ sk_D ) @ ( u1_struct_0 @ sk_B ) @ sk_E @ ( u1_struct_0 @ X1 ) ) )
      | ~ ( m1_pre_topc @ X1 @ sk_D )
      | ~ ( m1_pre_topc @ X1 @ X0 )
      | ~ ( l1_pre_topc @ sk_B )
      | ~ ( v2_pre_topc @ sk_B )
      | ( v2_struct_0 @ sk_B ) ) ),
    inference('sup-',[status(thm)],['6','7'])).

thf('9',plain,(
    v1_funct_1 @ sk_E ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('10',plain,(
    v1_funct_2 @ sk_E @ ( u1_struct_0 @ sk_D ) @ ( u1_struct_0 @ sk_B ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('11',plain,(
    l1_pre_topc @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('12',plain,(
    v2_pre_topc @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('13',plain,(
    ! [X0: $i,X1: $i] :
      ( ( v2_struct_0 @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( m1_pre_topc @ sk_D @ X0 )
      | ( ( k3_tmap_1 @ X0 @ sk_B @ sk_D @ X1 @ sk_E )
        = ( k2_partfun1 @ ( u1_struct_0 @ sk_D ) @ ( u1_struct_0 @ sk_B ) @ sk_E @ ( u1_struct_0 @ X1 ) ) )
      | ~ ( m1_pre_topc @ X1 @ sk_D )
      | ~ ( m1_pre_topc @ X1 @ X0 )
      | ( v2_struct_0 @ sk_B ) ) ),
    inference(demod,[status(thm)],['8','9','10','11','12'])).

thf('14',plain,(
    ! [X0: $i] :
      ( ( v2_struct_0 @ sk_B )
      | ~ ( m1_pre_topc @ X0 @ sk_A )
      | ~ ( m1_pre_topc @ X0 @ sk_D )
      | ( ( k3_tmap_1 @ sk_A @ sk_B @ sk_D @ X0 @ sk_E )
        = ( k2_partfun1 @ ( u1_struct_0 @ sk_D ) @ ( u1_struct_0 @ sk_B ) @ sk_E @ ( u1_struct_0 @ X0 ) ) )
      | ~ ( l1_pre_topc @ sk_A )
      | ~ ( v2_pre_topc @ sk_A )
      | ( v2_struct_0 @ sk_A ) ) ),
    inference('sup-',[status(thm)],['5','13'])).

thf('15',plain,(
    l1_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('16',plain,(
    v2_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('17',plain,(
    ! [X0: $i] :
      ( ( v2_struct_0 @ sk_B )
      | ~ ( m1_pre_topc @ X0 @ sk_A )
      | ~ ( m1_pre_topc @ X0 @ sk_D )
      | ( ( k3_tmap_1 @ sk_A @ sk_B @ sk_D @ X0 @ sk_E )
        = ( k2_partfun1 @ ( u1_struct_0 @ sk_D ) @ ( u1_struct_0 @ sk_B ) @ sk_E @ ( u1_struct_0 @ X0 ) ) )
      | ( v2_struct_0 @ sk_A ) ) ),
    inference(demod,[status(thm)],['14','15','16'])).

thf('18',plain,
    ( ( v2_struct_0 @ sk_A )
    | ( ( k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C_1 @ sk_E )
      = ( k2_partfun1 @ ( u1_struct_0 @ sk_D ) @ ( u1_struct_0 @ sk_B ) @ sk_E @ ( u1_struct_0 @ sk_C_1 ) ) )
    | ~ ( m1_pre_topc @ sk_C_1 @ sk_D )
    | ( v2_struct_0 @ sk_B ) ),
    inference('sup-',[status(thm)],['4','17'])).

thf('19',plain,(
    m1_pre_topc @ sk_C_1 @ sk_D ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('20',plain,(
    m1_subset_1 @ sk_E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( u1_struct_0 @ sk_D ) @ ( u1_struct_0 @ sk_B ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(d4_tmap_1,axiom,(
    ! [A: $i] :
      ( ( ~ ( v2_struct_0 @ A )
        & ( v2_pre_topc @ A )
        & ( l1_pre_topc @ A ) )
     => ! [B: $i] :
          ( ( ~ ( v2_struct_0 @ B )
            & ( v2_pre_topc @ B )
            & ( l1_pre_topc @ B ) )
         => ! [C: $i] :
              ( ( ( v1_funct_1 @ C )
                & ( v1_funct_2 @ C @ ( u1_struct_0 @ A ) @ ( u1_struct_0 @ B ) )
                & ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( u1_struct_0 @ A ) @ ( u1_struct_0 @ B ) ) ) ) )
             => ! [D: $i] :
                  ( ( m1_pre_topc @ D @ A )
                 => ( ( k2_tmap_1 @ A @ B @ C @ D )
                    = ( k2_partfun1 @ ( u1_struct_0 @ A ) @ ( u1_struct_0 @ B ) @ C @ ( u1_struct_0 @ D ) ) ) ) ) ) ) )).

thf('21',plain,(
    ! [X20: $i,X21: $i,X22: $i,X23: $i] :
      ( ( v2_struct_0 @ X20 )
      | ~ ( v2_pre_topc @ X20 )
      | ~ ( l1_pre_topc @ X20 )
      | ~ ( m1_pre_topc @ X21 @ X22 )
      | ( ( k2_tmap_1 @ X22 @ X20 @ X23 @ X21 )
        = ( k2_partfun1 @ ( u1_struct_0 @ X22 ) @ ( u1_struct_0 @ X20 ) @ X23 @ ( u1_struct_0 @ X21 ) ) )
      | ~ ( m1_subset_1 @ X23 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( u1_struct_0 @ X22 ) @ ( u1_struct_0 @ X20 ) ) ) )
      | ~ ( v1_funct_2 @ X23 @ ( u1_struct_0 @ X22 ) @ ( u1_struct_0 @ X20 ) )
      | ~ ( v1_funct_1 @ X23 )
      | ~ ( l1_pre_topc @ X22 )
      | ~ ( v2_pre_topc @ X22 )
      | ( v2_struct_0 @ X22 ) ) ),
    inference(cnf,[status(esa)],[d4_tmap_1])).

thf('22',plain,(
    ! [X0: $i] :
      ( ( v2_struct_0 @ sk_D )
      | ~ ( v2_pre_topc @ sk_D )
      | ~ ( l1_pre_topc @ sk_D )
      | ~ ( v1_funct_1 @ sk_E )
      | ~ ( v1_funct_2 @ sk_E @ ( u1_struct_0 @ sk_D ) @ ( u1_struct_0 @ sk_B ) )
      | ( ( k2_tmap_1 @ sk_D @ sk_B @ sk_E @ X0 )
        = ( k2_partfun1 @ ( u1_struct_0 @ sk_D ) @ ( u1_struct_0 @ sk_B ) @ sk_E @ ( u1_struct_0 @ X0 ) ) )
      | ~ ( m1_pre_topc @ X0 @ sk_D )
      | ~ ( l1_pre_topc @ sk_B )
      | ~ ( v2_pre_topc @ sk_B )
      | ( v2_struct_0 @ sk_B ) ) ),
    inference('sup-',[status(thm)],['20','21'])).

thf('23',plain,(
    m1_pre_topc @ sk_D @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(cc1_pre_topc,axiom,(
    ! [A: $i] :
      ( ( ( v2_pre_topc @ A )
        & ( l1_pre_topc @ A ) )
     => ! [B: $i] :
          ( ( m1_pre_topc @ B @ A )
         => ( v2_pre_topc @ B ) ) ) )).

thf('24',plain,(
    ! [X7: $i,X8: $i] :
      ( ~ ( m1_pre_topc @ X7 @ X8 )
      | ( v2_pre_topc @ X7 )
      | ~ ( l1_pre_topc @ X8 )
      | ~ ( v2_pre_topc @ X8 ) ) ),
    inference(cnf,[status(esa)],[cc1_pre_topc])).

thf('25',plain,
    ( ~ ( v2_pre_topc @ sk_A )
    | ~ ( l1_pre_topc @ sk_A )
    | ( v2_pre_topc @ sk_D ) ),
    inference('sup-',[status(thm)],['23','24'])).

thf('26',plain,(
    v2_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('27',plain,(
    l1_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('28',plain,(
    v2_pre_topc @ sk_D ),
    inference(demod,[status(thm)],['25','26','27'])).

thf('29',plain,(
    m1_pre_topc @ sk_D @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(dt_m1_pre_topc,axiom,(
    ! [A: $i] :
      ( ( l1_pre_topc @ A )
     => ! [B: $i] :
          ( ( m1_pre_topc @ B @ A )
         => ( l1_pre_topc @ B ) ) ) )).

thf('30',plain,(
    ! [X9: $i,X10: $i] :
      ( ~ ( m1_pre_topc @ X9 @ X10 )
      | ( l1_pre_topc @ X9 )
      | ~ ( l1_pre_topc @ X10 ) ) ),
    inference(cnf,[status(esa)],[dt_m1_pre_topc])).

thf('31',plain,
    ( ~ ( l1_pre_topc @ sk_A )
    | ( l1_pre_topc @ sk_D ) ),
    inference('sup-',[status(thm)],['29','30'])).

thf('32',plain,(
    l1_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('33',plain,(
    l1_pre_topc @ sk_D ),
    inference(demod,[status(thm)],['31','32'])).

thf('34',plain,(
    v1_funct_1 @ sk_E ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('35',plain,(
    v1_funct_2 @ sk_E @ ( u1_struct_0 @ sk_D ) @ ( u1_struct_0 @ sk_B ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('36',plain,(
    l1_pre_topc @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('37',plain,(
    v2_pre_topc @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('38',plain,(
    ! [X0: $i] :
      ( ( v2_struct_0 @ sk_D )
      | ( ( k2_tmap_1 @ sk_D @ sk_B @ sk_E @ X0 )
        = ( k2_partfun1 @ ( u1_struct_0 @ sk_D ) @ ( u1_struct_0 @ sk_B ) @ sk_E @ ( u1_struct_0 @ X0 ) ) )
      | ~ ( m1_pre_topc @ X0 @ sk_D )
      | ( v2_struct_0 @ sk_B ) ) ),
    inference(demod,[status(thm)],['22','28','33','34','35','36','37'])).

thf('39',plain,
    ( ( v2_struct_0 @ sk_B )
    | ( ( k2_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_C_1 )
      = ( k2_partfun1 @ ( u1_struct_0 @ sk_D ) @ ( u1_struct_0 @ sk_B ) @ sk_E @ ( u1_struct_0 @ sk_C_1 ) ) )
    | ( v2_struct_0 @ sk_D ) ),
    inference('sup-',[status(thm)],['19','38'])).

thf('40',plain,(
    ~ ( v2_struct_0 @ sk_B ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('41',plain,
    ( ( v2_struct_0 @ sk_D )
    | ( ( k2_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_C_1 )
      = ( k2_partfun1 @ ( u1_struct_0 @ sk_D ) @ ( u1_struct_0 @ sk_B ) @ sk_E @ ( u1_struct_0 @ sk_C_1 ) ) ) ),
    inference(clc,[status(thm)],['39','40'])).

thf('42',plain,(
    ~ ( v2_struct_0 @ sk_D ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('43',plain,
    ( ( k2_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_C_1 )
    = ( k2_partfun1 @ ( u1_struct_0 @ sk_D ) @ ( u1_struct_0 @ sk_B ) @ sk_E @ ( u1_struct_0 @ sk_C_1 ) ) ),
    inference(clc,[status(thm)],['41','42'])).

thf('44',plain,(
    m1_pre_topc @ sk_C_1 @ sk_D ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('45',plain,
    ( ( v2_struct_0 @ sk_A )
    | ( ( k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C_1 @ sk_E )
      = ( k2_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_C_1 ) )
    | ( v2_struct_0 @ sk_B ) ),
    inference(demod,[status(thm)],['18','43','44'])).

thf('46',plain,(
    ~ ( v2_struct_0 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('47',plain,
    ( ( v2_struct_0 @ sk_B )
    | ( ( k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C_1 @ sk_E )
      = ( k2_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_C_1 ) ) ),
    inference(clc,[status(thm)],['45','46'])).

thf('48',plain,(
    ~ ( v2_struct_0 @ sk_B ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('49',plain,
    ( ( k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C_1 @ sk_E )
    = ( k2_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_C_1 ) ),
    inference(clc,[status(thm)],['47','48'])).

thf('50',plain,
    ( ( r1_tmap_1 @ sk_C_1 @ sk_B @ ( k2_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_C_1 ) @ sk_H )
   <= ( r1_tmap_1 @ sk_C_1 @ sk_B @ ( k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C_1 @ sk_E ) @ sk_H ) ),
    inference(demod,[status(thm)],['3','49'])).

thf('51',plain,
    ( ~ ( r1_tmap_1 @ sk_C_1 @ sk_B @ ( k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C_1 @ sk_E ) @ sk_H )
    | ~ ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_G ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('52',plain,(
    sk_G = sk_H ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('53',plain,
    ( ~ ( r1_tmap_1 @ sk_C_1 @ sk_B @ ( k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C_1 @ sk_E ) @ sk_H )
    | ~ ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H ) ),
    inference(demod,[status(thm)],['51','52'])).

thf('54',plain,
    ( ~ ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H )
    | ~ ( r1_tmap_1 @ sk_C_1 @ sk_B @ ( k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C_1 @ sk_E ) @ sk_H ) ),
    inference(split,[status(esa)],['53'])).

thf('55',plain,(
    m1_subset_1 @ sk_H @ ( u1_struct_0 @ sk_C_1 ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('56',plain,
    ( ( r1_tmap_1 @ sk_C_1 @ sk_B @ ( k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C_1 @ sk_E ) @ sk_H )
    | ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_G ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('57',plain,(
    sk_G = sk_H ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('58',plain,
    ( ( r1_tmap_1 @ sk_C_1 @ sk_B @ ( k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C_1 @ sk_E ) @ sk_H )
    | ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H ) ),
    inference(demod,[status(thm)],['56','57'])).

thf('59',plain,
    ( ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H )
   <= ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H ) ),
    inference(split,[status(esa)],['58'])).

thf('60',plain,(
    m1_subset_1 @ sk_E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( u1_struct_0 @ sk_D ) @ ( u1_struct_0 @ sk_B ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t64_tmap_1,axiom,(
    ! [A: $i] :
      ( ( ~ ( v2_struct_0 @ A )
        & ( v2_pre_topc @ A )
        & ( l1_pre_topc @ A ) )
     => ! [B: $i] :
          ( ( ~ ( v2_struct_0 @ B )
            & ( v2_pre_topc @ B )
            & ( l1_pre_topc @ B ) )
         => ! [C: $i] :
              ( ( ( v1_funct_1 @ C )
                & ( v1_funct_2 @ C @ ( u1_struct_0 @ B ) @ ( u1_struct_0 @ A ) )
                & ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( u1_struct_0 @ B ) @ ( u1_struct_0 @ A ) ) ) ) )
             => ! [D: $i] :
                  ( ( ~ ( v2_struct_0 @ D )
                    & ( m1_pre_topc @ D @ B ) )
                 => ! [E: $i] :
                      ( ( m1_subset_1 @ E @ ( u1_struct_0 @ B ) )
                     => ! [F: $i] :
                          ( ( m1_subset_1 @ F @ ( u1_struct_0 @ D ) )
                         => ( ( ( E = F )
                              & ( r1_tmap_1 @ B @ A @ C @ E ) )
                           => ( r1_tmap_1 @ D @ A @ ( k2_tmap_1 @ B @ A @ C @ D ) @ F ) ) ) ) ) ) ) ) )).

thf('61',plain,(
    ! [X29: $i,X30: $i,X31: $i,X32: $i,X33: $i,X34: $i] :
      ( ( v2_struct_0 @ X29 )
      | ~ ( v2_pre_topc @ X29 )
      | ~ ( l1_pre_topc @ X29 )
      | ( v2_struct_0 @ X30 )
      | ~ ( m1_pre_topc @ X30 @ X29 )
      | ~ ( m1_subset_1 @ X31 @ ( u1_struct_0 @ X30 ) )
      | ( r1_tmap_1 @ X30 @ X32 @ ( k2_tmap_1 @ X29 @ X32 @ X33 @ X30 ) @ X31 )
      | ( X34 != X31 )
      | ~ ( r1_tmap_1 @ X29 @ X32 @ X33 @ X34 )
      | ~ ( m1_subset_1 @ X34 @ ( u1_struct_0 @ X29 ) )
      | ~ ( m1_subset_1 @ X33 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( u1_struct_0 @ X29 ) @ ( u1_struct_0 @ X32 ) ) ) )
      | ~ ( v1_funct_2 @ X33 @ ( u1_struct_0 @ X29 ) @ ( u1_struct_0 @ X32 ) )
      | ~ ( v1_funct_1 @ X33 )
      | ~ ( l1_pre_topc @ X32 )
      | ~ ( v2_pre_topc @ X32 )
      | ( v2_struct_0 @ X32 ) ) ),
    inference(cnf,[status(esa)],[t64_tmap_1])).

thf('62',plain,(
    ! [X29: $i,X30: $i,X31: $i,X32: $i,X33: $i] :
      ( ( v2_struct_0 @ X32 )
      | ~ ( v2_pre_topc @ X32 )
      | ~ ( l1_pre_topc @ X32 )
      | ~ ( v1_funct_1 @ X33 )
      | ~ ( v1_funct_2 @ X33 @ ( u1_struct_0 @ X29 ) @ ( u1_struct_0 @ X32 ) )
      | ~ ( m1_subset_1 @ X33 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( u1_struct_0 @ X29 ) @ ( u1_struct_0 @ X32 ) ) ) )
      | ~ ( m1_subset_1 @ X31 @ ( u1_struct_0 @ X29 ) )
      | ~ ( r1_tmap_1 @ X29 @ X32 @ X33 @ X31 )
      | ( r1_tmap_1 @ X30 @ X32 @ ( k2_tmap_1 @ X29 @ X32 @ X33 @ X30 ) @ X31 )
      | ~ ( m1_subset_1 @ X31 @ ( u1_struct_0 @ X30 ) )
      | ~ ( m1_pre_topc @ X30 @ X29 )
      | ( v2_struct_0 @ X30 )
      | ~ ( l1_pre_topc @ X29 )
      | ~ ( v2_pre_topc @ X29 )
      | ( v2_struct_0 @ X29 ) ) ),
    inference(simplify,[status(thm)],['61'])).

thf('63',plain,(
    ! [X0: $i,X1: $i] :
      ( ( v2_struct_0 @ sk_D )
      | ~ ( v2_pre_topc @ sk_D )
      | ~ ( l1_pre_topc @ sk_D )
      | ( v2_struct_0 @ X0 )
      | ~ ( m1_pre_topc @ X0 @ sk_D )
      | ~ ( m1_subset_1 @ X1 @ ( u1_struct_0 @ X0 ) )
      | ( r1_tmap_1 @ X0 @ sk_B @ ( k2_tmap_1 @ sk_D @ sk_B @ sk_E @ X0 ) @ X1 )
      | ~ ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ X1 )
      | ~ ( m1_subset_1 @ X1 @ ( u1_struct_0 @ sk_D ) )
      | ~ ( v1_funct_2 @ sk_E @ ( u1_struct_0 @ sk_D ) @ ( u1_struct_0 @ sk_B ) )
      | ~ ( v1_funct_1 @ sk_E )
      | ~ ( l1_pre_topc @ sk_B )
      | ~ ( v2_pre_topc @ sk_B )
      | ( v2_struct_0 @ sk_B ) ) ),
    inference('sup-',[status(thm)],['60','62'])).

thf('64',plain,(
    v2_pre_topc @ sk_D ),
    inference(demod,[status(thm)],['25','26','27'])).

thf('65',plain,(
    l1_pre_topc @ sk_D ),
    inference(demod,[status(thm)],['31','32'])).

thf('66',plain,(
    v1_funct_2 @ sk_E @ ( u1_struct_0 @ sk_D ) @ ( u1_struct_0 @ sk_B ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('67',plain,(
    v1_funct_1 @ sk_E ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('68',plain,(
    l1_pre_topc @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('69',plain,(
    v2_pre_topc @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('70',plain,(
    ! [X0: $i,X1: $i] :
      ( ( v2_struct_0 @ sk_D )
      | ( v2_struct_0 @ X0 )
      | ~ ( m1_pre_topc @ X0 @ sk_D )
      | ~ ( m1_subset_1 @ X1 @ ( u1_struct_0 @ X0 ) )
      | ( r1_tmap_1 @ X0 @ sk_B @ ( k2_tmap_1 @ sk_D @ sk_B @ sk_E @ X0 ) @ X1 )
      | ~ ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ X1 )
      | ~ ( m1_subset_1 @ X1 @ ( u1_struct_0 @ sk_D ) )
      | ( v2_struct_0 @ sk_B ) ) ),
    inference(demod,[status(thm)],['63','64','65','66','67','68','69'])).

thf('71',plain,
    ( ! [X0: $i] :
        ( ( v2_struct_0 @ sk_B )
        | ~ ( m1_subset_1 @ sk_H @ ( u1_struct_0 @ sk_D ) )
        | ( r1_tmap_1 @ X0 @ sk_B @ ( k2_tmap_1 @ sk_D @ sk_B @ sk_E @ X0 ) @ sk_H )
        | ~ ( m1_subset_1 @ sk_H @ ( u1_struct_0 @ X0 ) )
        | ~ ( m1_pre_topc @ X0 @ sk_D )
        | ( v2_struct_0 @ X0 )
        | ( v2_struct_0 @ sk_D ) )
   <= ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H ) ),
    inference('sup-',[status(thm)],['59','70'])).

thf('72',plain,(
    m1_subset_1 @ sk_G @ ( u1_struct_0 @ sk_D ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('73',plain,(
    sk_G = sk_H ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('74',plain,(
    m1_subset_1 @ sk_H @ ( u1_struct_0 @ sk_D ) ),
    inference(demod,[status(thm)],['72','73'])).

thf('75',plain,
    ( ! [X0: $i] :
        ( ( v2_struct_0 @ sk_B )
        | ( r1_tmap_1 @ X0 @ sk_B @ ( k2_tmap_1 @ sk_D @ sk_B @ sk_E @ X0 ) @ sk_H )
        | ~ ( m1_subset_1 @ sk_H @ ( u1_struct_0 @ X0 ) )
        | ~ ( m1_pre_topc @ X0 @ sk_D )
        | ( v2_struct_0 @ X0 )
        | ( v2_struct_0 @ sk_D ) )
   <= ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H ) ),
    inference(demod,[status(thm)],['71','74'])).

thf('76',plain,
    ( ( ( v2_struct_0 @ sk_D )
      | ( v2_struct_0 @ sk_C_1 )
      | ~ ( m1_pre_topc @ sk_C_1 @ sk_D )
      | ( r1_tmap_1 @ sk_C_1 @ sk_B @ ( k2_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_C_1 ) @ sk_H )
      | ( v2_struct_0 @ sk_B ) )
   <= ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H ) ),
    inference('sup-',[status(thm)],['55','75'])).

thf('77',plain,(
    m1_pre_topc @ sk_C_1 @ sk_D ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('78',plain,
    ( ( ( v2_struct_0 @ sk_D )
      | ( v2_struct_0 @ sk_C_1 )
      | ( r1_tmap_1 @ sk_C_1 @ sk_B @ ( k2_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_C_1 ) @ sk_H )
      | ( v2_struct_0 @ sk_B ) )
   <= ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H ) ),
    inference(demod,[status(thm)],['76','77'])).

thf('79',plain,
    ( ( k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C_1 @ sk_E )
    = ( k2_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_C_1 ) ),
    inference(clc,[status(thm)],['47','48'])).

thf('80',plain,
    ( ~ ( r1_tmap_1 @ sk_C_1 @ sk_B @ ( k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C_1 @ sk_E ) @ sk_H )
    | ~ ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_G ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('81',plain,
    ( ~ ( r1_tmap_1 @ sk_C_1 @ sk_B @ ( k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C_1 @ sk_E ) @ sk_H )
   <= ~ ( r1_tmap_1 @ sk_C_1 @ sk_B @ ( k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C_1 @ sk_E ) @ sk_H ) ),
    inference(split,[status(esa)],['80'])).

thf('82',plain,
    ( ~ ( r1_tmap_1 @ sk_C_1 @ sk_B @ ( k2_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_C_1 ) @ sk_H )
   <= ~ ( r1_tmap_1 @ sk_C_1 @ sk_B @ ( k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C_1 @ sk_E ) @ sk_H ) ),
    inference('sup-',[status(thm)],['79','81'])).

thf('83',plain,
    ( ( ( v2_struct_0 @ sk_B )
      | ( v2_struct_0 @ sk_C_1 )
      | ( v2_struct_0 @ sk_D ) )
   <= ( ~ ( r1_tmap_1 @ sk_C_1 @ sk_B @ ( k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C_1 @ sk_E ) @ sk_H )
      & ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H ) ) ),
    inference('sup-',[status(thm)],['78','82'])).

thf('84',plain,(
    ~ ( v2_struct_0 @ sk_B ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('85',plain,
    ( ( ( v2_struct_0 @ sk_D )
      | ( v2_struct_0 @ sk_C_1 ) )
   <= ( ~ ( r1_tmap_1 @ sk_C_1 @ sk_B @ ( k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C_1 @ sk_E ) @ sk_H )
      & ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H ) ) ),
    inference(clc,[status(thm)],['83','84'])).

thf('86',plain,(
    ~ ( v2_struct_0 @ sk_D ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('87',plain,
    ( ( v2_struct_0 @ sk_C_1 )
   <= ( ~ ( r1_tmap_1 @ sk_C_1 @ sk_B @ ( k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C_1 @ sk_E ) @ sk_H )
      & ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H ) ) ),
    inference(clc,[status(thm)],['85','86'])).

thf('88',plain,(
    ~ ( v2_struct_0 @ sk_C_1 ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('89',plain,
    ( ( r1_tmap_1 @ sk_C_1 @ sk_B @ ( k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C_1 @ sk_E ) @ sk_H )
    | ~ ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H ) ),
    inference('sup-',[status(thm)],['87','88'])).

thf('90',plain,
    ( ( r1_tmap_1 @ sk_C_1 @ sk_B @ ( k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C_1 @ sk_E ) @ sk_H )
    | ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H ) ),
    inference(split,[status(esa)],['58'])).

thf('91',plain,(
    r1_tmap_1 @ sk_C_1 @ sk_B @ ( k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C_1 @ sk_E ) @ sk_H ),
    inference('sat_resolution*',[status(thm)],['54','89','90'])).

thf('92',plain,(
    r1_tmap_1 @ sk_C_1 @ sk_B @ ( k2_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_C_1 ) @ sk_H ),
    inference(simpl_trail,[status(thm)],['50','91'])).

thf('93',plain,
    ( ( k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C_1 @ sk_E )
    = ( k2_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_C_1 ) ),
    inference(clc,[status(thm)],['47','48'])).

thf('94',plain,(
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

thf('95',plain,(
    ! [X38: $i,X39: $i,X40: $i,X41: $i,X42: $i,X43: $i,X44: $i,X45: $i] :
      ( ( v2_struct_0 @ X38 )
      | ~ ( v2_pre_topc @ X38 )
      | ~ ( l1_pre_topc @ X38 )
      | ( v2_struct_0 @ X39 )
      | ~ ( m1_pre_topc @ X39 @ X40 )
      | ~ ( m1_pre_topc @ X41 @ X39 )
      | ~ ( m1_subset_1 @ X42 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X39 ) ) )
      | ~ ( m1_subset_1 @ X43 @ ( u1_struct_0 @ X41 ) )
      | ~ ( r1_tmap_1 @ X41 @ X38 @ ( k3_tmap_1 @ X40 @ X38 @ X39 @ X41 @ X44 ) @ X43 )
      | ( r1_tmap_1 @ X39 @ X38 @ X44 @ X45 )
      | ( X45 != X43 )
      | ~ ( m1_connsp_2 @ X42 @ X39 @ X45 )
      | ~ ( r1_tarski @ X42 @ ( u1_struct_0 @ X41 ) )
      | ~ ( m1_subset_1 @ X45 @ ( u1_struct_0 @ X39 ) )
      | ~ ( m1_subset_1 @ X44 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( u1_struct_0 @ X39 ) @ ( u1_struct_0 @ X38 ) ) ) )
      | ~ ( v1_funct_2 @ X44 @ ( u1_struct_0 @ X39 ) @ ( u1_struct_0 @ X38 ) )
      | ~ ( v1_funct_1 @ X44 )
      | ~ ( m1_pre_topc @ X41 @ X40 )
      | ( v2_struct_0 @ X41 )
      | ~ ( l1_pre_topc @ X40 )
      | ~ ( v2_pre_topc @ X40 )
      | ( v2_struct_0 @ X40 ) ) ),
    inference(cnf,[status(esa)],[t83_tmap_1])).

thf('96',plain,(
    ! [X38: $i,X39: $i,X40: $i,X41: $i,X42: $i,X43: $i,X44: $i] :
      ( ( v2_struct_0 @ X40 )
      | ~ ( v2_pre_topc @ X40 )
      | ~ ( l1_pre_topc @ X40 )
      | ( v2_struct_0 @ X41 )
      | ~ ( m1_pre_topc @ X41 @ X40 )
      | ~ ( v1_funct_1 @ X44 )
      | ~ ( v1_funct_2 @ X44 @ ( u1_struct_0 @ X39 ) @ ( u1_struct_0 @ X38 ) )
      | ~ ( m1_subset_1 @ X44 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( u1_struct_0 @ X39 ) @ ( u1_struct_0 @ X38 ) ) ) )
      | ~ ( m1_subset_1 @ X43 @ ( u1_struct_0 @ X39 ) )
      | ~ ( r1_tarski @ X42 @ ( u1_struct_0 @ X41 ) )
      | ~ ( m1_connsp_2 @ X42 @ X39 @ X43 )
      | ( r1_tmap_1 @ X39 @ X38 @ X44 @ X43 )
      | ~ ( r1_tmap_1 @ X41 @ X38 @ ( k3_tmap_1 @ X40 @ X38 @ X39 @ X41 @ X44 ) @ X43 )
      | ~ ( m1_subset_1 @ X43 @ ( u1_struct_0 @ X41 ) )
      | ~ ( m1_subset_1 @ X42 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X39 ) ) )
      | ~ ( m1_pre_topc @ X41 @ X39 )
      | ~ ( m1_pre_topc @ X39 @ X40 )
      | ( v2_struct_0 @ X39 )
      | ~ ( l1_pre_topc @ X38 )
      | ~ ( v2_pre_topc @ X38 )
      | ( v2_struct_0 @ X38 ) ) ),
    inference(simplify,[status(thm)],['95'])).

thf('97',plain,(
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
    inference('sup-',[status(thm)],['94','96'])).

thf('98',plain,(
    v2_pre_topc @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('99',plain,(
    l1_pre_topc @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('100',plain,(
    v1_funct_2 @ sk_E @ ( u1_struct_0 @ sk_D ) @ ( u1_struct_0 @ sk_B ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('101',plain,(
    v1_funct_1 @ sk_E ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('102',plain,(
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
    inference(demod,[status(thm)],['97','98','99','100','101'])).

thf('103',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( r1_tmap_1 @ sk_C_1 @ sk_B @ ( k2_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_C_1 ) @ X0 )
      | ( v2_struct_0 @ sk_A )
      | ~ ( v2_pre_topc @ sk_A )
      | ~ ( l1_pre_topc @ sk_A )
      | ( v2_struct_0 @ sk_C_1 )
      | ~ ( m1_pre_topc @ sk_C_1 @ sk_A )
      | ~ ( m1_subset_1 @ X0 @ ( u1_struct_0 @ sk_D ) )
      | ~ ( r1_tarski @ X1 @ ( u1_struct_0 @ sk_C_1 ) )
      | ~ ( m1_connsp_2 @ X1 @ sk_D @ X0 )
      | ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ X0 )
      | ~ ( m1_subset_1 @ X0 @ ( u1_struct_0 @ sk_C_1 ) )
      | ~ ( m1_subset_1 @ X1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_D ) ) )
      | ~ ( m1_pre_topc @ sk_C_1 @ sk_D )
      | ~ ( m1_pre_topc @ sk_D @ sk_A )
      | ( v2_struct_0 @ sk_D )
      | ( v2_struct_0 @ sk_B ) ) ),
    inference('sup-',[status(thm)],['93','102'])).

thf('104',plain,(
    v2_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('105',plain,(
    l1_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('106',plain,(
    m1_pre_topc @ sk_C_1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('107',plain,(
    m1_pre_topc @ sk_C_1 @ sk_D ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('108',plain,(
    m1_pre_topc @ sk_D @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('109',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( r1_tmap_1 @ sk_C_1 @ sk_B @ ( k2_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_C_1 ) @ X0 )
      | ( v2_struct_0 @ sk_A )
      | ( v2_struct_0 @ sk_C_1 )
      | ~ ( m1_subset_1 @ X0 @ ( u1_struct_0 @ sk_D ) )
      | ~ ( r1_tarski @ X1 @ ( u1_struct_0 @ sk_C_1 ) )
      | ~ ( m1_connsp_2 @ X1 @ sk_D @ X0 )
      | ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ X0 )
      | ~ ( m1_subset_1 @ X0 @ ( u1_struct_0 @ sk_C_1 ) )
      | ~ ( m1_subset_1 @ X1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_D ) ) )
      | ( v2_struct_0 @ sk_D )
      | ( v2_struct_0 @ sk_B ) ) ),
    inference(demod,[status(thm)],['103','104','105','106','107','108'])).

thf('110',plain,(
    ! [X0: $i] :
      ( ( v2_struct_0 @ sk_B )
      | ( v2_struct_0 @ sk_D )
      | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_D ) ) )
      | ~ ( m1_subset_1 @ sk_H @ ( u1_struct_0 @ sk_C_1 ) )
      | ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H )
      | ~ ( m1_connsp_2 @ X0 @ sk_D @ sk_H )
      | ~ ( r1_tarski @ X0 @ ( u1_struct_0 @ sk_C_1 ) )
      | ~ ( m1_subset_1 @ sk_H @ ( u1_struct_0 @ sk_D ) )
      | ( v2_struct_0 @ sk_C_1 )
      | ( v2_struct_0 @ sk_A ) ) ),
    inference('sup-',[status(thm)],['92','109'])).

thf('111',plain,(
    m1_subset_1 @ sk_H @ ( u1_struct_0 @ sk_C_1 ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('112',plain,(
    m1_subset_1 @ sk_H @ ( u1_struct_0 @ sk_D ) ),
    inference(demod,[status(thm)],['72','73'])).

thf('113',plain,(
    ! [X0: $i] :
      ( ( v2_struct_0 @ sk_B )
      | ( v2_struct_0 @ sk_D )
      | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_D ) ) )
      | ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H )
      | ~ ( m1_connsp_2 @ X0 @ sk_D @ sk_H )
      | ~ ( r1_tarski @ X0 @ ( u1_struct_0 @ sk_C_1 ) )
      | ( v2_struct_0 @ sk_C_1 )
      | ( v2_struct_0 @ sk_A ) ) ),
    inference(demod,[status(thm)],['110','111','112'])).

thf('114',plain,
    ( ( v2_struct_0 @ sk_A )
    | ( v2_struct_0 @ sk_C_1 )
    | ~ ( r1_tarski @ sk_F @ ( u1_struct_0 @ sk_C_1 ) )
    | ~ ( m1_connsp_2 @ sk_F @ sk_D @ sk_H )
    | ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H )
    | ( v2_struct_0 @ sk_D )
    | ( v2_struct_0 @ sk_B ) ),
    inference('sup-',[status(thm)],['1','113'])).

thf('115',plain,(
    r1_tarski @ sk_F @ ( u1_struct_0 @ sk_C_1 ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('116',plain,(
    r2_hidden @ sk_G @ sk_F ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('117',plain,(
    sk_G = sk_H ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('118',plain,(
    r2_hidden @ sk_H @ sk_F ),
    inference(demod,[status(thm)],['116','117'])).

thf('119',plain,(
    m1_subset_1 @ sk_F @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_D ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('120',plain,(
    m1_subset_1 @ sk_F @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_D ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t56_tops_1,axiom,(
    ! [A: $i] :
      ( ( l1_pre_topc @ A )
     => ! [B: $i] :
          ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) )
         => ! [C: $i] :
              ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) )
             => ( ( ( v3_pre_topc @ B @ A )
                  & ( r1_tarski @ B @ C ) )
               => ( r1_tarski @ B @ ( k1_tops_1 @ A @ C ) ) ) ) ) ) )).

thf('121',plain,(
    ! [X14: $i,X15: $i,X16: $i] :
      ( ~ ( m1_subset_1 @ X14 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X15 ) ) )
      | ~ ( v3_pre_topc @ X14 @ X15 )
      | ~ ( r1_tarski @ X14 @ X16 )
      | ( r1_tarski @ X14 @ ( k1_tops_1 @ X15 @ X16 ) )
      | ~ ( m1_subset_1 @ X16 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X15 ) ) )
      | ~ ( l1_pre_topc @ X15 ) ) ),
    inference(cnf,[status(esa)],[t56_tops_1])).

thf('122',plain,(
    ! [X0: $i] :
      ( ~ ( l1_pre_topc @ sk_D )
      | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_D ) ) )
      | ( r1_tarski @ sk_F @ ( k1_tops_1 @ sk_D @ X0 ) )
      | ~ ( r1_tarski @ sk_F @ X0 )
      | ~ ( v3_pre_topc @ sk_F @ sk_D ) ) ),
    inference('sup-',[status(thm)],['120','121'])).

thf('123',plain,(
    l1_pre_topc @ sk_D ),
    inference(demod,[status(thm)],['31','32'])).

thf('124',plain,(
    v3_pre_topc @ sk_F @ sk_D ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('125',plain,(
    ! [X0: $i] :
      ( ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_D ) ) )
      | ( r1_tarski @ sk_F @ ( k1_tops_1 @ sk_D @ X0 ) )
      | ~ ( r1_tarski @ sk_F @ X0 ) ) ),
    inference(demod,[status(thm)],['122','123','124'])).

thf('126',plain,
    ( ~ ( r1_tarski @ sk_F @ sk_F )
    | ( r1_tarski @ sk_F @ ( k1_tops_1 @ sk_D @ sk_F ) ) ),
    inference('sup-',[status(thm)],['119','125'])).

thf(d10_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ( A = B )
    <=> ( ( r1_tarski @ A @ B )
        & ( r1_tarski @ B @ A ) ) ) )).

thf('127',plain,(
    ! [X4: $i,X5: $i] :
      ( ( r1_tarski @ X4 @ X5 )
      | ( X4 != X5 ) ) ),
    inference(cnf,[status(esa)],[d10_xboole_0])).

thf('128',plain,(
    ! [X5: $i] :
      ( r1_tarski @ X5 @ X5 ) ),
    inference(simplify,[status(thm)],['127'])).

thf('129',plain,(
    r1_tarski @ sk_F @ ( k1_tops_1 @ sk_D @ sk_F ) ),
    inference(demod,[status(thm)],['126','128'])).

thf(d3_tarski,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_tarski @ A @ B )
    <=> ! [C: $i] :
          ( ( r2_hidden @ C @ A )
         => ( r2_hidden @ C @ B ) ) ) )).

thf('130',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( r2_hidden @ X0 @ X1 )
      | ( r2_hidden @ X0 @ X2 )
      | ~ ( r1_tarski @ X1 @ X2 ) ) ),
    inference(cnf,[status(esa)],[d3_tarski])).

thf('131',plain,(
    ! [X0: $i] :
      ( ( r2_hidden @ X0 @ ( k1_tops_1 @ sk_D @ sk_F ) )
      | ~ ( r2_hidden @ X0 @ sk_F ) ) ),
    inference('sup-',[status(thm)],['129','130'])).

thf('132',plain,(
    r2_hidden @ sk_H @ ( k1_tops_1 @ sk_D @ sk_F ) ),
    inference('sup-',[status(thm)],['118','131'])).

thf('133',plain,(
    m1_subset_1 @ sk_F @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_D ) ) ),
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

thf('134',plain,(
    ! [X17: $i,X18: $i,X19: $i] :
      ( ~ ( m1_subset_1 @ X17 @ ( u1_struct_0 @ X18 ) )
      | ~ ( r2_hidden @ X17 @ ( k1_tops_1 @ X18 @ X19 ) )
      | ( m1_connsp_2 @ X19 @ X18 @ X17 )
      | ~ ( m1_subset_1 @ X19 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X18 ) ) )
      | ~ ( l1_pre_topc @ X18 )
      | ~ ( v2_pre_topc @ X18 )
      | ( v2_struct_0 @ X18 ) ) ),
    inference(cnf,[status(esa)],[d1_connsp_2])).

thf('135',plain,(
    ! [X0: $i] :
      ( ( v2_struct_0 @ sk_D )
      | ~ ( v2_pre_topc @ sk_D )
      | ~ ( l1_pre_topc @ sk_D )
      | ( m1_connsp_2 @ sk_F @ sk_D @ X0 )
      | ~ ( r2_hidden @ X0 @ ( k1_tops_1 @ sk_D @ sk_F ) )
      | ~ ( m1_subset_1 @ X0 @ ( u1_struct_0 @ sk_D ) ) ) ),
    inference('sup-',[status(thm)],['133','134'])).

thf('136',plain,(
    v2_pre_topc @ sk_D ),
    inference(demod,[status(thm)],['25','26','27'])).

thf('137',plain,(
    l1_pre_topc @ sk_D ),
    inference(demod,[status(thm)],['31','32'])).

thf('138',plain,(
    ! [X0: $i] :
      ( ( v2_struct_0 @ sk_D )
      | ( m1_connsp_2 @ sk_F @ sk_D @ X0 )
      | ~ ( r2_hidden @ X0 @ ( k1_tops_1 @ sk_D @ sk_F ) )
      | ~ ( m1_subset_1 @ X0 @ ( u1_struct_0 @ sk_D ) ) ) ),
    inference(demod,[status(thm)],['135','136','137'])).

thf('139',plain,
    ( ~ ( m1_subset_1 @ sk_H @ ( u1_struct_0 @ sk_D ) )
    | ( m1_connsp_2 @ sk_F @ sk_D @ sk_H )
    | ( v2_struct_0 @ sk_D ) ),
    inference('sup-',[status(thm)],['132','138'])).

thf('140',plain,(
    m1_subset_1 @ sk_H @ ( u1_struct_0 @ sk_D ) ),
    inference(demod,[status(thm)],['72','73'])).

thf('141',plain,
    ( ( m1_connsp_2 @ sk_F @ sk_D @ sk_H )
    | ( v2_struct_0 @ sk_D ) ),
    inference(demod,[status(thm)],['139','140'])).

thf('142',plain,(
    ~ ( v2_struct_0 @ sk_D ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('143',plain,(
    m1_connsp_2 @ sk_F @ sk_D @ sk_H ),
    inference(clc,[status(thm)],['141','142'])).

thf('144',plain,
    ( ( v2_struct_0 @ sk_A )
    | ( v2_struct_0 @ sk_C_1 )
    | ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H )
    | ( v2_struct_0 @ sk_D )
    | ( v2_struct_0 @ sk_B ) ),
    inference(demod,[status(thm)],['114','115','143'])).

thf('145',plain,
    ( ~ ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_G )
   <= ~ ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_G ) ),
    inference(split,[status(esa)],['80'])).

thf('146',plain,(
    sk_G = sk_H ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('147',plain,
    ( ~ ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H )
   <= ~ ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_G ) ),
    inference(demod,[status(thm)],['145','146'])).

thf('148',plain,
    ( ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_G )
   <= ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_G ) ),
    inference(split,[status(esa)],['2'])).

thf('149',plain,(
    sk_G = sk_H ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('150',plain,
    ( ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H )
   <= ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_G ) ),
    inference(demod,[status(thm)],['148','149'])).

thf('151',plain,
    ( ~ ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H )
   <= ~ ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H ) ),
    inference(split,[status(esa)],['53'])).

thf('152',plain,
    ( ~ ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_G )
    | ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H ) ),
    inference('sup-',[status(thm)],['150','151'])).

thf('153',plain,(
    ~ ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_G ) ),
    inference('sat_resolution*',[status(thm)],['54','89','152'])).

thf('154',plain,(
    ~ ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H ) ),
    inference(simpl_trail,[status(thm)],['147','153'])).

thf('155',plain,
    ( ( v2_struct_0 @ sk_B )
    | ( v2_struct_0 @ sk_D )
    | ( v2_struct_0 @ sk_C_1 )
    | ( v2_struct_0 @ sk_A ) ),
    inference('sup-',[status(thm)],['144','154'])).

thf('156',plain,(
    ~ ( v2_struct_0 @ sk_D ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('157',plain,
    ( ( v2_struct_0 @ sk_A )
    | ( v2_struct_0 @ sk_C_1 )
    | ( v2_struct_0 @ sk_B ) ),
    inference('sup-',[status(thm)],['155','156'])).

thf('158',plain,(
    ~ ( v2_struct_0 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('159',plain,
    ( ( v2_struct_0 @ sk_B )
    | ( v2_struct_0 @ sk_C_1 ) ),
    inference(clc,[status(thm)],['157','158'])).

thf('160',plain,(
    ~ ( v2_struct_0 @ sk_B ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('161',plain,(
    v2_struct_0 @ sk_C_1 ),
    inference(clc,[status(thm)],['159','160'])).

thf('162',plain,(
    $false ),
    inference(demod,[status(thm)],['0','161'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.06/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.06/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.UOZuq8QgDW
% 0.13/0.34  % Computer   : n009.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 12:16:41 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running portfolio for 600 s
% 0.13/0.34  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.13/0.34  % Number of cores: 8
% 0.13/0.35  % Python version: Python 3.6.8
% 0.13/0.35  % Running in FO mode
% 0.20/0.53  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.20/0.53  % Solved by: fo/fo7.sh
% 0.20/0.53  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.20/0.53  % done 110 iterations in 0.065s
% 0.20/0.53  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.20/0.53  % SZS output start Refutation
% 0.20/0.53  thf(l1_pre_topc_type, type, l1_pre_topc: $i > $o).
% 0.20/0.53  thf(m1_pre_topc_type, type, m1_pre_topc: $i > $i > $o).
% 0.20/0.53  thf(v3_pre_topc_type, type, v3_pre_topc: $i > $i > $o).
% 0.20/0.53  thf(sk_B_type, type, sk_B: $i).
% 0.20/0.53  thf(k3_tmap_1_type, type, k3_tmap_1: $i > $i > $i > $i > $i > $i).
% 0.20/0.53  thf(k2_partfun1_type, type, k2_partfun1: $i > $i > $i > $i > $i).
% 0.20/0.53  thf(r1_tmap_1_type, type, r1_tmap_1: $i > $i > $i > $i > $o).
% 0.20/0.53  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.20/0.53  thf(v1_funct_1_type, type, v1_funct_1: $i > $o).
% 0.20/0.53  thf(k1_zfmisc_1_type, type, k1_zfmisc_1: $i > $i).
% 0.20/0.53  thf(m1_subset_1_type, type, m1_subset_1: $i > $i > $o).
% 0.20/0.53  thf(sk_E_type, type, sk_E: $i).
% 0.20/0.53  thf(sk_D_type, type, sk_D: $i).
% 0.20/0.53  thf(k2_tmap_1_type, type, k2_tmap_1: $i > $i > $i > $i > $i).
% 0.20/0.53  thf(sk_C_1_type, type, sk_C_1: $i).
% 0.20/0.53  thf(sk_A_type, type, sk_A: $i).
% 0.20/0.53  thf(k1_tops_1_type, type, k1_tops_1: $i > $i > $i).
% 0.20/0.53  thf(m1_connsp_2_type, type, m1_connsp_2: $i > $i > $i > $o).
% 0.20/0.53  thf(sk_F_type, type, sk_F: $i).
% 0.20/0.53  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.20/0.53  thf(v1_funct_2_type, type, v1_funct_2: $i > $i > $i > $o).
% 0.20/0.53  thf(u1_struct_0_type, type, u1_struct_0: $i > $i).
% 0.20/0.53  thf(v2_struct_0_type, type, v2_struct_0: $i > $o).
% 0.20/0.53  thf(v2_pre_topc_type, type, v2_pre_topc: $i > $o).
% 0.20/0.53  thf(k2_zfmisc_1_type, type, k2_zfmisc_1: $i > $i > $i).
% 0.20/0.53  thf(sk_H_type, type, sk_H: $i).
% 0.20/0.53  thf(sk_G_type, type, sk_G: $i).
% 0.20/0.53  thf(t84_tmap_1, conjecture,
% 0.20/0.53    (![A:$i]:
% 0.20/0.53     ( ( ( ~( v2_struct_0 @ A ) ) & ( v2_pre_topc @ A ) & ( l1_pre_topc @ A ) ) =>
% 0.20/0.53       ( ![B:$i]:
% 0.20/0.53         ( ( ( ~( v2_struct_0 @ B ) ) & ( v2_pre_topc @ B ) & 
% 0.20/0.53             ( l1_pre_topc @ B ) ) =>
% 0.20/0.53           ( ![C:$i]:
% 0.20/0.53             ( ( ( ~( v2_struct_0 @ C ) ) & ( m1_pre_topc @ C @ A ) ) =>
% 0.20/0.53               ( ![D:$i]:
% 0.20/0.53                 ( ( ( ~( v2_struct_0 @ D ) ) & ( m1_pre_topc @ D @ A ) ) =>
% 0.20/0.53                   ( ![E:$i]:
% 0.20/0.53                     ( ( ( v1_funct_1 @ E ) & 
% 0.20/0.53                         ( v1_funct_2 @
% 0.20/0.53                           E @ ( u1_struct_0 @ D ) @ ( u1_struct_0 @ B ) ) & 
% 0.20/0.53                         ( m1_subset_1 @
% 0.20/0.53                           E @ 
% 0.20/0.53                           ( k1_zfmisc_1 @
% 0.20/0.53                             ( k2_zfmisc_1 @
% 0.20/0.53                               ( u1_struct_0 @ D ) @ ( u1_struct_0 @ B ) ) ) ) ) =>
% 0.20/0.53                       ( ( m1_pre_topc @ C @ D ) =>
% 0.20/0.53                         ( ![F:$i]:
% 0.20/0.53                           ( ( m1_subset_1 @
% 0.20/0.53                               F @ ( k1_zfmisc_1 @ ( u1_struct_0 @ D ) ) ) =>
% 0.20/0.53                             ( ![G:$i]:
% 0.20/0.53                               ( ( m1_subset_1 @ G @ ( u1_struct_0 @ D ) ) =>
% 0.20/0.53                                 ( ![H:$i]:
% 0.20/0.53                                   ( ( m1_subset_1 @ H @ ( u1_struct_0 @ C ) ) =>
% 0.20/0.53                                     ( ( ( v3_pre_topc @ F @ D ) & 
% 0.20/0.53                                         ( r2_hidden @ G @ F ) & 
% 0.20/0.53                                         ( r1_tarski @ F @ ( u1_struct_0 @ C ) ) & 
% 0.20/0.53                                         ( ( G ) = ( H ) ) ) =>
% 0.20/0.53                                       ( ( r1_tmap_1 @ D @ B @ E @ G ) <=>
% 0.20/0.53                                         ( r1_tmap_1 @
% 0.20/0.53                                           C @ B @ 
% 0.20/0.53                                           ( k3_tmap_1 @ A @ B @ D @ C @ E ) @ 
% 0.20/0.53                                           H ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ))).
% 0.20/0.53  thf(zf_stmt_0, negated_conjecture,
% 0.20/0.53    (~( ![A:$i]:
% 0.20/0.53        ( ( ( ~( v2_struct_0 @ A ) ) & ( v2_pre_topc @ A ) & 
% 0.20/0.53            ( l1_pre_topc @ A ) ) =>
% 0.20/0.53          ( ![B:$i]:
% 0.20/0.53            ( ( ( ~( v2_struct_0 @ B ) ) & ( v2_pre_topc @ B ) & 
% 0.20/0.53                ( l1_pre_topc @ B ) ) =>
% 0.20/0.53              ( ![C:$i]:
% 0.20/0.53                ( ( ( ~( v2_struct_0 @ C ) ) & ( m1_pre_topc @ C @ A ) ) =>
% 0.20/0.53                  ( ![D:$i]:
% 0.20/0.53                    ( ( ( ~( v2_struct_0 @ D ) ) & ( m1_pre_topc @ D @ A ) ) =>
% 0.20/0.53                      ( ![E:$i]:
% 0.20/0.53                        ( ( ( v1_funct_1 @ E ) & 
% 0.20/0.53                            ( v1_funct_2 @
% 0.20/0.53                              E @ ( u1_struct_0 @ D ) @ ( u1_struct_0 @ B ) ) & 
% 0.20/0.53                            ( m1_subset_1 @
% 0.20/0.53                              E @ 
% 0.20/0.53                              ( k1_zfmisc_1 @
% 0.20/0.53                                ( k2_zfmisc_1 @
% 0.20/0.53                                  ( u1_struct_0 @ D ) @ ( u1_struct_0 @ B ) ) ) ) ) =>
% 0.20/0.53                          ( ( m1_pre_topc @ C @ D ) =>
% 0.20/0.53                            ( ![F:$i]:
% 0.20/0.53                              ( ( m1_subset_1 @
% 0.20/0.53                                  F @ ( k1_zfmisc_1 @ ( u1_struct_0 @ D ) ) ) =>
% 0.20/0.53                                ( ![G:$i]:
% 0.20/0.53                                  ( ( m1_subset_1 @ G @ ( u1_struct_0 @ D ) ) =>
% 0.20/0.53                                    ( ![H:$i]:
% 0.20/0.53                                      ( ( m1_subset_1 @ H @ ( u1_struct_0 @ C ) ) =>
% 0.20/0.53                                        ( ( ( v3_pre_topc @ F @ D ) & 
% 0.20/0.53                                            ( r2_hidden @ G @ F ) & 
% 0.20/0.53                                            ( r1_tarski @
% 0.20/0.53                                              F @ ( u1_struct_0 @ C ) ) & 
% 0.20/0.53                                            ( ( G ) = ( H ) ) ) =>
% 0.20/0.53                                          ( ( r1_tmap_1 @ D @ B @ E @ G ) <=>
% 0.20/0.53                                            ( r1_tmap_1 @
% 0.20/0.53                                              C @ B @ 
% 0.20/0.53                                              ( k3_tmap_1 @ A @ B @ D @ C @ E ) @ 
% 0.20/0.53                                              H ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )),
% 0.20/0.53    inference('cnf.neg', [status(esa)], [t84_tmap_1])).
% 0.20/0.53  thf('0', plain, (~ (v2_struct_0 @ sk_C_1)),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf('1', plain,
% 0.20/0.53      ((m1_subset_1 @ sk_F @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_D)))),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf('2', plain,
% 0.20/0.53      (((r1_tmap_1 @ sk_C_1 @ sk_B @ 
% 0.20/0.53         (k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C_1 @ sk_E) @ sk_H)
% 0.20/0.53        | (r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_G))),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf('3', plain,
% 0.20/0.53      (((r1_tmap_1 @ sk_C_1 @ sk_B @ 
% 0.20/0.53         (k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C_1 @ sk_E) @ sk_H))
% 0.20/0.53         <= (((r1_tmap_1 @ sk_C_1 @ sk_B @ 
% 0.20/0.53               (k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C_1 @ sk_E) @ sk_H)))),
% 0.20/0.53      inference('split', [status(esa)], ['2'])).
% 0.20/0.53  thf('4', plain, ((m1_pre_topc @ sk_C_1 @ sk_A)),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf('5', plain, ((m1_pre_topc @ sk_D @ sk_A)),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf('6', plain,
% 0.20/0.53      ((m1_subset_1 @ sk_E @ 
% 0.20/0.53        (k1_zfmisc_1 @ 
% 0.20/0.53         (k2_zfmisc_1 @ (u1_struct_0 @ sk_D) @ (u1_struct_0 @ sk_B))))),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf(d5_tmap_1, axiom,
% 0.20/0.53    (![A:$i]:
% 0.20/0.53     ( ( ( ~( v2_struct_0 @ A ) ) & ( v2_pre_topc @ A ) & ( l1_pre_topc @ A ) ) =>
% 0.20/0.53       ( ![B:$i]:
% 0.20/0.53         ( ( ( ~( v2_struct_0 @ B ) ) & ( v2_pre_topc @ B ) & 
% 0.20/0.53             ( l1_pre_topc @ B ) ) =>
% 0.20/0.53           ( ![C:$i]:
% 0.20/0.53             ( ( m1_pre_topc @ C @ A ) =>
% 0.20/0.53               ( ![D:$i]:
% 0.20/0.53                 ( ( m1_pre_topc @ D @ A ) =>
% 0.20/0.53                   ( ![E:$i]:
% 0.20/0.53                     ( ( ( v1_funct_1 @ E ) & 
% 0.20/0.53                         ( v1_funct_2 @
% 0.20/0.53                           E @ ( u1_struct_0 @ C ) @ ( u1_struct_0 @ B ) ) & 
% 0.20/0.53                         ( m1_subset_1 @
% 0.20/0.53                           E @ 
% 0.20/0.53                           ( k1_zfmisc_1 @
% 0.20/0.53                             ( k2_zfmisc_1 @
% 0.20/0.53                               ( u1_struct_0 @ C ) @ ( u1_struct_0 @ B ) ) ) ) ) =>
% 0.20/0.53                       ( ( m1_pre_topc @ D @ C ) =>
% 0.20/0.53                         ( ( k3_tmap_1 @ A @ B @ C @ D @ E ) =
% 0.20/0.53                           ( k2_partfun1 @
% 0.20/0.53                             ( u1_struct_0 @ C ) @ ( u1_struct_0 @ B ) @ E @ 
% 0.20/0.53                             ( u1_struct_0 @ D ) ) ) ) ) ) ) ) ) ) ) ) ))).
% 0.20/0.53  thf('7', plain,
% 0.20/0.53      (![X24 : $i, X25 : $i, X26 : $i, X27 : $i, X28 : $i]:
% 0.20/0.53         ((v2_struct_0 @ X24)
% 0.20/0.53          | ~ (v2_pre_topc @ X24)
% 0.20/0.53          | ~ (l1_pre_topc @ X24)
% 0.20/0.53          | ~ (m1_pre_topc @ X25 @ X26)
% 0.20/0.53          | ~ (m1_pre_topc @ X25 @ X27)
% 0.20/0.53          | ((k3_tmap_1 @ X26 @ X24 @ X27 @ X25 @ X28)
% 0.20/0.53              = (k2_partfun1 @ (u1_struct_0 @ X27) @ (u1_struct_0 @ X24) @ 
% 0.20/0.53                 X28 @ (u1_struct_0 @ X25)))
% 0.20/0.53          | ~ (m1_subset_1 @ X28 @ 
% 0.20/0.53               (k1_zfmisc_1 @ 
% 0.20/0.53                (k2_zfmisc_1 @ (u1_struct_0 @ X27) @ (u1_struct_0 @ X24))))
% 0.20/0.53          | ~ (v1_funct_2 @ X28 @ (u1_struct_0 @ X27) @ (u1_struct_0 @ X24))
% 0.20/0.53          | ~ (v1_funct_1 @ X28)
% 0.20/0.53          | ~ (m1_pre_topc @ X27 @ X26)
% 0.20/0.53          | ~ (l1_pre_topc @ X26)
% 0.20/0.53          | ~ (v2_pre_topc @ X26)
% 0.20/0.53          | (v2_struct_0 @ X26))),
% 0.20/0.53      inference('cnf', [status(esa)], [d5_tmap_1])).
% 0.20/0.53  thf('8', plain,
% 0.20/0.53      (![X0 : $i, X1 : $i]:
% 0.20/0.53         ((v2_struct_0 @ X0)
% 0.20/0.53          | ~ (v2_pre_topc @ X0)
% 0.20/0.53          | ~ (l1_pre_topc @ X0)
% 0.20/0.53          | ~ (m1_pre_topc @ sk_D @ X0)
% 0.20/0.53          | ~ (v1_funct_1 @ sk_E)
% 0.20/0.53          | ~ (v1_funct_2 @ sk_E @ (u1_struct_0 @ sk_D) @ (u1_struct_0 @ sk_B))
% 0.20/0.53          | ((k3_tmap_1 @ X0 @ sk_B @ sk_D @ X1 @ sk_E)
% 0.20/0.53              = (k2_partfun1 @ (u1_struct_0 @ sk_D) @ (u1_struct_0 @ sk_B) @ 
% 0.20/0.53                 sk_E @ (u1_struct_0 @ X1)))
% 0.20/0.53          | ~ (m1_pre_topc @ X1 @ sk_D)
% 0.20/0.53          | ~ (m1_pre_topc @ X1 @ X0)
% 0.20/0.53          | ~ (l1_pre_topc @ sk_B)
% 0.20/0.53          | ~ (v2_pre_topc @ sk_B)
% 0.20/0.53          | (v2_struct_0 @ sk_B))),
% 0.20/0.53      inference('sup-', [status(thm)], ['6', '7'])).
% 0.20/0.53  thf('9', plain, ((v1_funct_1 @ sk_E)),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf('10', plain,
% 0.20/0.53      ((v1_funct_2 @ sk_E @ (u1_struct_0 @ sk_D) @ (u1_struct_0 @ sk_B))),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf('11', plain, ((l1_pre_topc @ sk_B)),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf('12', plain, ((v2_pre_topc @ sk_B)),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf('13', plain,
% 0.20/0.53      (![X0 : $i, X1 : $i]:
% 0.20/0.53         ((v2_struct_0 @ X0)
% 0.20/0.53          | ~ (v2_pre_topc @ X0)
% 0.20/0.53          | ~ (l1_pre_topc @ X0)
% 0.20/0.53          | ~ (m1_pre_topc @ sk_D @ X0)
% 0.20/0.53          | ((k3_tmap_1 @ X0 @ sk_B @ sk_D @ X1 @ sk_E)
% 0.20/0.53              = (k2_partfun1 @ (u1_struct_0 @ sk_D) @ (u1_struct_0 @ sk_B) @ 
% 0.20/0.53                 sk_E @ (u1_struct_0 @ X1)))
% 0.20/0.53          | ~ (m1_pre_topc @ X1 @ sk_D)
% 0.20/0.53          | ~ (m1_pre_topc @ X1 @ X0)
% 0.20/0.53          | (v2_struct_0 @ sk_B))),
% 0.20/0.53      inference('demod', [status(thm)], ['8', '9', '10', '11', '12'])).
% 0.20/0.53  thf('14', plain,
% 0.20/0.53      (![X0 : $i]:
% 0.20/0.53         ((v2_struct_0 @ sk_B)
% 0.20/0.53          | ~ (m1_pre_topc @ X0 @ sk_A)
% 0.20/0.53          | ~ (m1_pre_topc @ X0 @ sk_D)
% 0.20/0.53          | ((k3_tmap_1 @ sk_A @ sk_B @ sk_D @ X0 @ sk_E)
% 0.20/0.53              = (k2_partfun1 @ (u1_struct_0 @ sk_D) @ (u1_struct_0 @ sk_B) @ 
% 0.20/0.53                 sk_E @ (u1_struct_0 @ X0)))
% 0.20/0.53          | ~ (l1_pre_topc @ sk_A)
% 0.20/0.53          | ~ (v2_pre_topc @ sk_A)
% 0.20/0.53          | (v2_struct_0 @ sk_A))),
% 0.20/0.53      inference('sup-', [status(thm)], ['5', '13'])).
% 0.20/0.53  thf('15', plain, ((l1_pre_topc @ sk_A)),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf('16', plain, ((v2_pre_topc @ sk_A)),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf('17', plain,
% 0.20/0.53      (![X0 : $i]:
% 0.20/0.53         ((v2_struct_0 @ sk_B)
% 0.20/0.53          | ~ (m1_pre_topc @ X0 @ sk_A)
% 0.20/0.53          | ~ (m1_pre_topc @ X0 @ sk_D)
% 0.20/0.53          | ((k3_tmap_1 @ sk_A @ sk_B @ sk_D @ X0 @ sk_E)
% 0.20/0.53              = (k2_partfun1 @ (u1_struct_0 @ sk_D) @ (u1_struct_0 @ sk_B) @ 
% 0.20/0.53                 sk_E @ (u1_struct_0 @ X0)))
% 0.20/0.53          | (v2_struct_0 @ sk_A))),
% 0.20/0.53      inference('demod', [status(thm)], ['14', '15', '16'])).
% 0.20/0.53  thf('18', plain,
% 0.20/0.53      (((v2_struct_0 @ sk_A)
% 0.20/0.53        | ((k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C_1 @ sk_E)
% 0.20/0.53            = (k2_partfun1 @ (u1_struct_0 @ sk_D) @ (u1_struct_0 @ sk_B) @ 
% 0.20/0.53               sk_E @ (u1_struct_0 @ sk_C_1)))
% 0.20/0.53        | ~ (m1_pre_topc @ sk_C_1 @ sk_D)
% 0.20/0.53        | (v2_struct_0 @ sk_B))),
% 0.20/0.53      inference('sup-', [status(thm)], ['4', '17'])).
% 0.20/0.53  thf('19', plain, ((m1_pre_topc @ sk_C_1 @ sk_D)),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf('20', plain,
% 0.20/0.53      ((m1_subset_1 @ sk_E @ 
% 0.20/0.53        (k1_zfmisc_1 @ 
% 0.20/0.53         (k2_zfmisc_1 @ (u1_struct_0 @ sk_D) @ (u1_struct_0 @ sk_B))))),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf(d4_tmap_1, axiom,
% 0.20/0.53    (![A:$i]:
% 0.20/0.53     ( ( ( ~( v2_struct_0 @ A ) ) & ( v2_pre_topc @ A ) & ( l1_pre_topc @ A ) ) =>
% 0.20/0.53       ( ![B:$i]:
% 0.20/0.53         ( ( ( ~( v2_struct_0 @ B ) ) & ( v2_pre_topc @ B ) & 
% 0.20/0.53             ( l1_pre_topc @ B ) ) =>
% 0.20/0.53           ( ![C:$i]:
% 0.20/0.53             ( ( ( v1_funct_1 @ C ) & 
% 0.20/0.53                 ( v1_funct_2 @ C @ ( u1_struct_0 @ A ) @ ( u1_struct_0 @ B ) ) & 
% 0.20/0.53                 ( m1_subset_1 @
% 0.20/0.53                   C @ 
% 0.20/0.53                   ( k1_zfmisc_1 @
% 0.20/0.53                     ( k2_zfmisc_1 @ ( u1_struct_0 @ A ) @ ( u1_struct_0 @ B ) ) ) ) ) =>
% 0.20/0.53               ( ![D:$i]:
% 0.20/0.53                 ( ( m1_pre_topc @ D @ A ) =>
% 0.20/0.53                   ( ( k2_tmap_1 @ A @ B @ C @ D ) =
% 0.20/0.53                     ( k2_partfun1 @
% 0.20/0.53                       ( u1_struct_0 @ A ) @ ( u1_struct_0 @ B ) @ C @ 
% 0.20/0.53                       ( u1_struct_0 @ D ) ) ) ) ) ) ) ) ) ))).
% 0.20/0.53  thf('21', plain,
% 0.20/0.53      (![X20 : $i, X21 : $i, X22 : $i, X23 : $i]:
% 0.20/0.53         ((v2_struct_0 @ X20)
% 0.20/0.53          | ~ (v2_pre_topc @ X20)
% 0.20/0.53          | ~ (l1_pre_topc @ X20)
% 0.20/0.53          | ~ (m1_pre_topc @ X21 @ X22)
% 0.20/0.53          | ((k2_tmap_1 @ X22 @ X20 @ X23 @ X21)
% 0.20/0.53              = (k2_partfun1 @ (u1_struct_0 @ X22) @ (u1_struct_0 @ X20) @ 
% 0.20/0.53                 X23 @ (u1_struct_0 @ X21)))
% 0.20/0.53          | ~ (m1_subset_1 @ X23 @ 
% 0.20/0.53               (k1_zfmisc_1 @ 
% 0.20/0.53                (k2_zfmisc_1 @ (u1_struct_0 @ X22) @ (u1_struct_0 @ X20))))
% 0.20/0.53          | ~ (v1_funct_2 @ X23 @ (u1_struct_0 @ X22) @ (u1_struct_0 @ X20))
% 0.20/0.53          | ~ (v1_funct_1 @ X23)
% 0.20/0.53          | ~ (l1_pre_topc @ X22)
% 0.20/0.53          | ~ (v2_pre_topc @ X22)
% 0.20/0.53          | (v2_struct_0 @ X22))),
% 0.20/0.53      inference('cnf', [status(esa)], [d4_tmap_1])).
% 0.20/0.53  thf('22', plain,
% 0.20/0.53      (![X0 : $i]:
% 0.20/0.53         ((v2_struct_0 @ sk_D)
% 0.20/0.53          | ~ (v2_pre_topc @ sk_D)
% 0.20/0.53          | ~ (l1_pre_topc @ sk_D)
% 0.20/0.53          | ~ (v1_funct_1 @ sk_E)
% 0.20/0.53          | ~ (v1_funct_2 @ sk_E @ (u1_struct_0 @ sk_D) @ (u1_struct_0 @ sk_B))
% 0.20/0.53          | ((k2_tmap_1 @ sk_D @ sk_B @ sk_E @ X0)
% 0.20/0.53              = (k2_partfun1 @ (u1_struct_0 @ sk_D) @ (u1_struct_0 @ sk_B) @ 
% 0.20/0.53                 sk_E @ (u1_struct_0 @ X0)))
% 0.20/0.53          | ~ (m1_pre_topc @ X0 @ sk_D)
% 0.20/0.53          | ~ (l1_pre_topc @ sk_B)
% 0.20/0.53          | ~ (v2_pre_topc @ sk_B)
% 0.20/0.53          | (v2_struct_0 @ sk_B))),
% 0.20/0.53      inference('sup-', [status(thm)], ['20', '21'])).
% 0.20/0.53  thf('23', plain, ((m1_pre_topc @ sk_D @ sk_A)),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf(cc1_pre_topc, axiom,
% 0.20/0.53    (![A:$i]:
% 0.20/0.53     ( ( ( v2_pre_topc @ A ) & ( l1_pre_topc @ A ) ) =>
% 0.20/0.53       ( ![B:$i]: ( ( m1_pre_topc @ B @ A ) => ( v2_pre_topc @ B ) ) ) ))).
% 0.20/0.53  thf('24', plain,
% 0.20/0.53      (![X7 : $i, X8 : $i]:
% 0.20/0.53         (~ (m1_pre_topc @ X7 @ X8)
% 0.20/0.53          | (v2_pre_topc @ X7)
% 0.20/0.53          | ~ (l1_pre_topc @ X8)
% 0.20/0.53          | ~ (v2_pre_topc @ X8))),
% 0.20/0.53      inference('cnf', [status(esa)], [cc1_pre_topc])).
% 0.20/0.53  thf('25', plain,
% 0.20/0.53      ((~ (v2_pre_topc @ sk_A) | ~ (l1_pre_topc @ sk_A) | (v2_pre_topc @ sk_D))),
% 0.20/0.53      inference('sup-', [status(thm)], ['23', '24'])).
% 0.20/0.53  thf('26', plain, ((v2_pre_topc @ sk_A)),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf('27', plain, ((l1_pre_topc @ sk_A)),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf('28', plain, ((v2_pre_topc @ sk_D)),
% 0.20/0.53      inference('demod', [status(thm)], ['25', '26', '27'])).
% 0.20/0.53  thf('29', plain, ((m1_pre_topc @ sk_D @ sk_A)),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf(dt_m1_pre_topc, axiom,
% 0.20/0.53    (![A:$i]:
% 0.20/0.53     ( ( l1_pre_topc @ A ) =>
% 0.20/0.53       ( ![B:$i]: ( ( m1_pre_topc @ B @ A ) => ( l1_pre_topc @ B ) ) ) ))).
% 0.20/0.53  thf('30', plain,
% 0.20/0.53      (![X9 : $i, X10 : $i]:
% 0.20/0.53         (~ (m1_pre_topc @ X9 @ X10)
% 0.20/0.53          | (l1_pre_topc @ X9)
% 0.20/0.53          | ~ (l1_pre_topc @ X10))),
% 0.20/0.53      inference('cnf', [status(esa)], [dt_m1_pre_topc])).
% 0.20/0.53  thf('31', plain, ((~ (l1_pre_topc @ sk_A) | (l1_pre_topc @ sk_D))),
% 0.20/0.53      inference('sup-', [status(thm)], ['29', '30'])).
% 0.20/0.53  thf('32', plain, ((l1_pre_topc @ sk_A)),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf('33', plain, ((l1_pre_topc @ sk_D)),
% 0.20/0.53      inference('demod', [status(thm)], ['31', '32'])).
% 0.20/0.53  thf('34', plain, ((v1_funct_1 @ sk_E)),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf('35', plain,
% 0.20/0.53      ((v1_funct_2 @ sk_E @ (u1_struct_0 @ sk_D) @ (u1_struct_0 @ sk_B))),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf('36', plain, ((l1_pre_topc @ sk_B)),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf('37', plain, ((v2_pre_topc @ sk_B)),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf('38', plain,
% 0.20/0.53      (![X0 : $i]:
% 0.20/0.53         ((v2_struct_0 @ sk_D)
% 0.20/0.53          | ((k2_tmap_1 @ sk_D @ sk_B @ sk_E @ X0)
% 0.20/0.53              = (k2_partfun1 @ (u1_struct_0 @ sk_D) @ (u1_struct_0 @ sk_B) @ 
% 0.20/0.53                 sk_E @ (u1_struct_0 @ X0)))
% 0.20/0.53          | ~ (m1_pre_topc @ X0 @ sk_D)
% 0.20/0.53          | (v2_struct_0 @ sk_B))),
% 0.20/0.53      inference('demod', [status(thm)],
% 0.20/0.53                ['22', '28', '33', '34', '35', '36', '37'])).
% 0.20/0.53  thf('39', plain,
% 0.20/0.53      (((v2_struct_0 @ sk_B)
% 0.20/0.53        | ((k2_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_C_1)
% 0.20/0.53            = (k2_partfun1 @ (u1_struct_0 @ sk_D) @ (u1_struct_0 @ sk_B) @ 
% 0.20/0.53               sk_E @ (u1_struct_0 @ sk_C_1)))
% 0.20/0.53        | (v2_struct_0 @ sk_D))),
% 0.20/0.53      inference('sup-', [status(thm)], ['19', '38'])).
% 0.20/0.53  thf('40', plain, (~ (v2_struct_0 @ sk_B)),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf('41', plain,
% 0.20/0.53      (((v2_struct_0 @ sk_D)
% 0.20/0.53        | ((k2_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_C_1)
% 0.20/0.53            = (k2_partfun1 @ (u1_struct_0 @ sk_D) @ (u1_struct_0 @ sk_B) @ 
% 0.20/0.53               sk_E @ (u1_struct_0 @ sk_C_1))))),
% 0.20/0.53      inference('clc', [status(thm)], ['39', '40'])).
% 0.20/0.53  thf('42', plain, (~ (v2_struct_0 @ sk_D)),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf('43', plain,
% 0.20/0.53      (((k2_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_C_1)
% 0.20/0.53         = (k2_partfun1 @ (u1_struct_0 @ sk_D) @ (u1_struct_0 @ sk_B) @ sk_E @ 
% 0.20/0.53            (u1_struct_0 @ sk_C_1)))),
% 0.20/0.53      inference('clc', [status(thm)], ['41', '42'])).
% 0.20/0.53  thf('44', plain, ((m1_pre_topc @ sk_C_1 @ sk_D)),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf('45', plain,
% 0.20/0.53      (((v2_struct_0 @ sk_A)
% 0.20/0.53        | ((k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C_1 @ sk_E)
% 0.20/0.53            = (k2_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_C_1))
% 0.20/0.53        | (v2_struct_0 @ sk_B))),
% 0.20/0.53      inference('demod', [status(thm)], ['18', '43', '44'])).
% 0.20/0.53  thf('46', plain, (~ (v2_struct_0 @ sk_A)),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf('47', plain,
% 0.20/0.53      (((v2_struct_0 @ sk_B)
% 0.20/0.53        | ((k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C_1 @ sk_E)
% 0.20/0.53            = (k2_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_C_1)))),
% 0.20/0.53      inference('clc', [status(thm)], ['45', '46'])).
% 0.20/0.53  thf('48', plain, (~ (v2_struct_0 @ sk_B)),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf('49', plain,
% 0.20/0.53      (((k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C_1 @ sk_E)
% 0.20/0.53         = (k2_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_C_1))),
% 0.20/0.53      inference('clc', [status(thm)], ['47', '48'])).
% 0.20/0.53  thf('50', plain,
% 0.20/0.53      (((r1_tmap_1 @ sk_C_1 @ sk_B @ 
% 0.20/0.53         (k2_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_C_1) @ sk_H))
% 0.20/0.53         <= (((r1_tmap_1 @ sk_C_1 @ sk_B @ 
% 0.20/0.53               (k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C_1 @ sk_E) @ sk_H)))),
% 0.20/0.53      inference('demod', [status(thm)], ['3', '49'])).
% 0.20/0.53  thf('51', plain,
% 0.20/0.53      ((~ (r1_tmap_1 @ sk_C_1 @ sk_B @ 
% 0.20/0.53           (k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C_1 @ sk_E) @ sk_H)
% 0.20/0.53        | ~ (r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_G))),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf('52', plain, (((sk_G) = (sk_H))),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf('53', plain,
% 0.20/0.53      ((~ (r1_tmap_1 @ sk_C_1 @ sk_B @ 
% 0.20/0.53           (k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C_1 @ sk_E) @ sk_H)
% 0.20/0.53        | ~ (r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H))),
% 0.20/0.53      inference('demod', [status(thm)], ['51', '52'])).
% 0.20/0.53  thf('54', plain,
% 0.20/0.53      (~ ((r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H)) | 
% 0.20/0.53       ~
% 0.20/0.53       ((r1_tmap_1 @ sk_C_1 @ sk_B @ 
% 0.20/0.53         (k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C_1 @ sk_E) @ sk_H))),
% 0.20/0.53      inference('split', [status(esa)], ['53'])).
% 0.20/0.53  thf('55', plain, ((m1_subset_1 @ sk_H @ (u1_struct_0 @ sk_C_1))),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf('56', plain,
% 0.20/0.53      (((r1_tmap_1 @ sk_C_1 @ sk_B @ 
% 0.20/0.53         (k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C_1 @ sk_E) @ sk_H)
% 0.20/0.53        | (r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_G))),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf('57', plain, (((sk_G) = (sk_H))),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf('58', plain,
% 0.20/0.53      (((r1_tmap_1 @ sk_C_1 @ sk_B @ 
% 0.20/0.53         (k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C_1 @ sk_E) @ sk_H)
% 0.20/0.53        | (r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H))),
% 0.20/0.53      inference('demod', [status(thm)], ['56', '57'])).
% 0.20/0.53  thf('59', plain,
% 0.20/0.53      (((r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H))
% 0.20/0.53         <= (((r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H)))),
% 0.20/0.53      inference('split', [status(esa)], ['58'])).
% 0.20/0.53  thf('60', plain,
% 0.20/0.53      ((m1_subset_1 @ sk_E @ 
% 0.20/0.53        (k1_zfmisc_1 @ 
% 0.20/0.53         (k2_zfmisc_1 @ (u1_struct_0 @ sk_D) @ (u1_struct_0 @ sk_B))))),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf(t64_tmap_1, axiom,
% 0.20/0.53    (![A:$i]:
% 0.20/0.53     ( ( ( ~( v2_struct_0 @ A ) ) & ( v2_pre_topc @ A ) & ( l1_pre_topc @ A ) ) =>
% 0.20/0.53       ( ![B:$i]:
% 0.20/0.53         ( ( ( ~( v2_struct_0 @ B ) ) & ( v2_pre_topc @ B ) & 
% 0.20/0.53             ( l1_pre_topc @ B ) ) =>
% 0.20/0.53           ( ![C:$i]:
% 0.20/0.53             ( ( ( v1_funct_1 @ C ) & 
% 0.20/0.53                 ( v1_funct_2 @ C @ ( u1_struct_0 @ B ) @ ( u1_struct_0 @ A ) ) & 
% 0.20/0.53                 ( m1_subset_1 @
% 0.20/0.53                   C @ 
% 0.20/0.53                   ( k1_zfmisc_1 @
% 0.20/0.53                     ( k2_zfmisc_1 @ ( u1_struct_0 @ B ) @ ( u1_struct_0 @ A ) ) ) ) ) =>
% 0.20/0.53               ( ![D:$i]:
% 0.20/0.53                 ( ( ( ~( v2_struct_0 @ D ) ) & ( m1_pre_topc @ D @ B ) ) =>
% 0.20/0.53                   ( ![E:$i]:
% 0.20/0.53                     ( ( m1_subset_1 @ E @ ( u1_struct_0 @ B ) ) =>
% 0.20/0.53                       ( ![F:$i]:
% 0.20/0.53                         ( ( m1_subset_1 @ F @ ( u1_struct_0 @ D ) ) =>
% 0.20/0.53                           ( ( ( ( E ) = ( F ) ) & 
% 0.20/0.53                               ( r1_tmap_1 @ B @ A @ C @ E ) ) =>
% 0.20/0.53                             ( r1_tmap_1 @
% 0.20/0.53                               D @ A @ ( k2_tmap_1 @ B @ A @ C @ D ) @ F ) ) ) ) ) ) ) ) ) ) ) ) ))).
% 0.20/0.53  thf('61', plain,
% 0.20/0.53      (![X29 : $i, X30 : $i, X31 : $i, X32 : $i, X33 : $i, X34 : $i]:
% 0.20/0.53         ((v2_struct_0 @ X29)
% 0.20/0.53          | ~ (v2_pre_topc @ X29)
% 0.20/0.53          | ~ (l1_pre_topc @ X29)
% 0.20/0.53          | (v2_struct_0 @ X30)
% 0.20/0.53          | ~ (m1_pre_topc @ X30 @ X29)
% 0.20/0.53          | ~ (m1_subset_1 @ X31 @ (u1_struct_0 @ X30))
% 0.20/0.53          | (r1_tmap_1 @ X30 @ X32 @ (k2_tmap_1 @ X29 @ X32 @ X33 @ X30) @ X31)
% 0.20/0.53          | ((X34) != (X31))
% 0.20/0.53          | ~ (r1_tmap_1 @ X29 @ X32 @ X33 @ X34)
% 0.20/0.53          | ~ (m1_subset_1 @ X34 @ (u1_struct_0 @ X29))
% 0.20/0.53          | ~ (m1_subset_1 @ X33 @ 
% 0.20/0.53               (k1_zfmisc_1 @ 
% 0.20/0.53                (k2_zfmisc_1 @ (u1_struct_0 @ X29) @ (u1_struct_0 @ X32))))
% 0.20/0.53          | ~ (v1_funct_2 @ X33 @ (u1_struct_0 @ X29) @ (u1_struct_0 @ X32))
% 0.20/0.53          | ~ (v1_funct_1 @ X33)
% 0.20/0.53          | ~ (l1_pre_topc @ X32)
% 0.20/0.53          | ~ (v2_pre_topc @ X32)
% 0.20/0.53          | (v2_struct_0 @ X32))),
% 0.20/0.53      inference('cnf', [status(esa)], [t64_tmap_1])).
% 0.20/0.53  thf('62', plain,
% 0.20/0.53      (![X29 : $i, X30 : $i, X31 : $i, X32 : $i, X33 : $i]:
% 0.20/0.53         ((v2_struct_0 @ X32)
% 0.20/0.53          | ~ (v2_pre_topc @ X32)
% 0.20/0.53          | ~ (l1_pre_topc @ X32)
% 0.20/0.53          | ~ (v1_funct_1 @ X33)
% 0.20/0.53          | ~ (v1_funct_2 @ X33 @ (u1_struct_0 @ X29) @ (u1_struct_0 @ X32))
% 0.20/0.53          | ~ (m1_subset_1 @ X33 @ 
% 0.20/0.53               (k1_zfmisc_1 @ 
% 0.20/0.53                (k2_zfmisc_1 @ (u1_struct_0 @ X29) @ (u1_struct_0 @ X32))))
% 0.20/0.53          | ~ (m1_subset_1 @ X31 @ (u1_struct_0 @ X29))
% 0.20/0.53          | ~ (r1_tmap_1 @ X29 @ X32 @ X33 @ X31)
% 0.20/0.53          | (r1_tmap_1 @ X30 @ X32 @ (k2_tmap_1 @ X29 @ X32 @ X33 @ X30) @ X31)
% 0.20/0.53          | ~ (m1_subset_1 @ X31 @ (u1_struct_0 @ X30))
% 0.20/0.53          | ~ (m1_pre_topc @ X30 @ X29)
% 0.20/0.53          | (v2_struct_0 @ X30)
% 0.20/0.53          | ~ (l1_pre_topc @ X29)
% 0.20/0.53          | ~ (v2_pre_topc @ X29)
% 0.20/0.53          | (v2_struct_0 @ X29))),
% 0.20/0.53      inference('simplify', [status(thm)], ['61'])).
% 0.20/0.53  thf('63', plain,
% 0.20/0.53      (![X0 : $i, X1 : $i]:
% 0.20/0.53         ((v2_struct_0 @ sk_D)
% 0.20/0.53          | ~ (v2_pre_topc @ sk_D)
% 0.20/0.53          | ~ (l1_pre_topc @ sk_D)
% 0.20/0.53          | (v2_struct_0 @ X0)
% 0.20/0.53          | ~ (m1_pre_topc @ X0 @ sk_D)
% 0.20/0.53          | ~ (m1_subset_1 @ X1 @ (u1_struct_0 @ X0))
% 0.20/0.53          | (r1_tmap_1 @ X0 @ sk_B @ (k2_tmap_1 @ sk_D @ sk_B @ sk_E @ X0) @ X1)
% 0.20/0.53          | ~ (r1_tmap_1 @ sk_D @ sk_B @ sk_E @ X1)
% 0.20/0.53          | ~ (m1_subset_1 @ X1 @ (u1_struct_0 @ sk_D))
% 0.20/0.53          | ~ (v1_funct_2 @ sk_E @ (u1_struct_0 @ sk_D) @ (u1_struct_0 @ sk_B))
% 0.20/0.53          | ~ (v1_funct_1 @ sk_E)
% 0.20/0.53          | ~ (l1_pre_topc @ sk_B)
% 0.20/0.53          | ~ (v2_pre_topc @ sk_B)
% 0.20/0.53          | (v2_struct_0 @ sk_B))),
% 0.20/0.53      inference('sup-', [status(thm)], ['60', '62'])).
% 0.20/0.53  thf('64', plain, ((v2_pre_topc @ sk_D)),
% 0.20/0.53      inference('demod', [status(thm)], ['25', '26', '27'])).
% 0.20/0.53  thf('65', plain, ((l1_pre_topc @ sk_D)),
% 0.20/0.53      inference('demod', [status(thm)], ['31', '32'])).
% 0.20/0.53  thf('66', plain,
% 0.20/0.53      ((v1_funct_2 @ sk_E @ (u1_struct_0 @ sk_D) @ (u1_struct_0 @ sk_B))),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf('67', plain, ((v1_funct_1 @ sk_E)),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf('68', plain, ((l1_pre_topc @ sk_B)),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf('69', plain, ((v2_pre_topc @ sk_B)),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf('70', plain,
% 0.20/0.53      (![X0 : $i, X1 : $i]:
% 0.20/0.53         ((v2_struct_0 @ sk_D)
% 0.20/0.53          | (v2_struct_0 @ X0)
% 0.20/0.53          | ~ (m1_pre_topc @ X0 @ sk_D)
% 0.20/0.53          | ~ (m1_subset_1 @ X1 @ (u1_struct_0 @ X0))
% 0.20/0.53          | (r1_tmap_1 @ X0 @ sk_B @ (k2_tmap_1 @ sk_D @ sk_B @ sk_E @ X0) @ X1)
% 0.20/0.53          | ~ (r1_tmap_1 @ sk_D @ sk_B @ sk_E @ X1)
% 0.20/0.53          | ~ (m1_subset_1 @ X1 @ (u1_struct_0 @ sk_D))
% 0.20/0.53          | (v2_struct_0 @ sk_B))),
% 0.20/0.53      inference('demod', [status(thm)],
% 0.20/0.53                ['63', '64', '65', '66', '67', '68', '69'])).
% 0.20/0.53  thf('71', plain,
% 0.20/0.53      ((![X0 : $i]:
% 0.20/0.53          ((v2_struct_0 @ sk_B)
% 0.20/0.53           | ~ (m1_subset_1 @ sk_H @ (u1_struct_0 @ sk_D))
% 0.20/0.53           | (r1_tmap_1 @ X0 @ sk_B @ (k2_tmap_1 @ sk_D @ sk_B @ sk_E @ X0) @ 
% 0.20/0.53              sk_H)
% 0.20/0.53           | ~ (m1_subset_1 @ sk_H @ (u1_struct_0 @ X0))
% 0.20/0.53           | ~ (m1_pre_topc @ X0 @ sk_D)
% 0.20/0.53           | (v2_struct_0 @ X0)
% 0.20/0.53           | (v2_struct_0 @ sk_D)))
% 0.20/0.53         <= (((r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H)))),
% 0.20/0.53      inference('sup-', [status(thm)], ['59', '70'])).
% 0.20/0.53  thf('72', plain, ((m1_subset_1 @ sk_G @ (u1_struct_0 @ sk_D))),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf('73', plain, (((sk_G) = (sk_H))),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf('74', plain, ((m1_subset_1 @ sk_H @ (u1_struct_0 @ sk_D))),
% 0.20/0.53      inference('demod', [status(thm)], ['72', '73'])).
% 0.20/0.53  thf('75', plain,
% 0.20/0.53      ((![X0 : $i]:
% 0.20/0.53          ((v2_struct_0 @ sk_B)
% 0.20/0.53           | (r1_tmap_1 @ X0 @ sk_B @ (k2_tmap_1 @ sk_D @ sk_B @ sk_E @ X0) @ 
% 0.20/0.53              sk_H)
% 0.20/0.53           | ~ (m1_subset_1 @ sk_H @ (u1_struct_0 @ X0))
% 0.20/0.53           | ~ (m1_pre_topc @ X0 @ sk_D)
% 0.20/0.53           | (v2_struct_0 @ X0)
% 0.20/0.53           | (v2_struct_0 @ sk_D)))
% 0.20/0.53         <= (((r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H)))),
% 0.20/0.53      inference('demod', [status(thm)], ['71', '74'])).
% 0.20/0.53  thf('76', plain,
% 0.20/0.53      ((((v2_struct_0 @ sk_D)
% 0.20/0.53         | (v2_struct_0 @ sk_C_1)
% 0.20/0.53         | ~ (m1_pre_topc @ sk_C_1 @ sk_D)
% 0.20/0.53         | (r1_tmap_1 @ sk_C_1 @ sk_B @ 
% 0.20/0.53            (k2_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_C_1) @ sk_H)
% 0.20/0.53         | (v2_struct_0 @ sk_B)))
% 0.20/0.53         <= (((r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H)))),
% 0.20/0.53      inference('sup-', [status(thm)], ['55', '75'])).
% 0.20/0.53  thf('77', plain, ((m1_pre_topc @ sk_C_1 @ sk_D)),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf('78', plain,
% 0.20/0.53      ((((v2_struct_0 @ sk_D)
% 0.20/0.53         | (v2_struct_0 @ sk_C_1)
% 0.20/0.53         | (r1_tmap_1 @ sk_C_1 @ sk_B @ 
% 0.20/0.53            (k2_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_C_1) @ sk_H)
% 0.20/0.53         | (v2_struct_0 @ sk_B)))
% 0.20/0.53         <= (((r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H)))),
% 0.20/0.53      inference('demod', [status(thm)], ['76', '77'])).
% 0.20/0.53  thf('79', plain,
% 0.20/0.53      (((k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C_1 @ sk_E)
% 0.20/0.53         = (k2_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_C_1))),
% 0.20/0.53      inference('clc', [status(thm)], ['47', '48'])).
% 0.20/0.53  thf('80', plain,
% 0.20/0.53      ((~ (r1_tmap_1 @ sk_C_1 @ sk_B @ 
% 0.20/0.53           (k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C_1 @ sk_E) @ sk_H)
% 0.20/0.53        | ~ (r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_G))),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf('81', plain,
% 0.20/0.53      ((~ (r1_tmap_1 @ sk_C_1 @ sk_B @ 
% 0.20/0.53           (k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C_1 @ sk_E) @ sk_H))
% 0.20/0.53         <= (~
% 0.20/0.53             ((r1_tmap_1 @ sk_C_1 @ sk_B @ 
% 0.20/0.53               (k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C_1 @ sk_E) @ sk_H)))),
% 0.20/0.53      inference('split', [status(esa)], ['80'])).
% 0.20/0.53  thf('82', plain,
% 0.20/0.53      ((~ (r1_tmap_1 @ sk_C_1 @ sk_B @ 
% 0.20/0.53           (k2_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_C_1) @ sk_H))
% 0.20/0.53         <= (~
% 0.20/0.53             ((r1_tmap_1 @ sk_C_1 @ sk_B @ 
% 0.20/0.53               (k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C_1 @ sk_E) @ sk_H)))),
% 0.20/0.53      inference('sup-', [status(thm)], ['79', '81'])).
% 0.20/0.53  thf('83', plain,
% 0.20/0.53      ((((v2_struct_0 @ sk_B) | (v2_struct_0 @ sk_C_1) | (v2_struct_0 @ sk_D)))
% 0.20/0.53         <= (~
% 0.20/0.53             ((r1_tmap_1 @ sk_C_1 @ sk_B @ 
% 0.20/0.53               (k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C_1 @ sk_E) @ sk_H)) & 
% 0.20/0.53             ((r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H)))),
% 0.20/0.53      inference('sup-', [status(thm)], ['78', '82'])).
% 0.20/0.53  thf('84', plain, (~ (v2_struct_0 @ sk_B)),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf('85', plain,
% 0.20/0.53      ((((v2_struct_0 @ sk_D) | (v2_struct_0 @ sk_C_1)))
% 0.20/0.53         <= (~
% 0.20/0.53             ((r1_tmap_1 @ sk_C_1 @ sk_B @ 
% 0.20/0.53               (k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C_1 @ sk_E) @ sk_H)) & 
% 0.20/0.53             ((r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H)))),
% 0.20/0.53      inference('clc', [status(thm)], ['83', '84'])).
% 0.20/0.53  thf('86', plain, (~ (v2_struct_0 @ sk_D)),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf('87', plain,
% 0.20/0.53      (((v2_struct_0 @ sk_C_1))
% 0.20/0.53         <= (~
% 0.20/0.53             ((r1_tmap_1 @ sk_C_1 @ sk_B @ 
% 0.20/0.53               (k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C_1 @ sk_E) @ sk_H)) & 
% 0.20/0.53             ((r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H)))),
% 0.20/0.53      inference('clc', [status(thm)], ['85', '86'])).
% 0.20/0.53  thf('88', plain, (~ (v2_struct_0 @ sk_C_1)),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf('89', plain,
% 0.20/0.53      (((r1_tmap_1 @ sk_C_1 @ sk_B @ 
% 0.20/0.53         (k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C_1 @ sk_E) @ sk_H)) | 
% 0.20/0.53       ~ ((r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H))),
% 0.20/0.53      inference('sup-', [status(thm)], ['87', '88'])).
% 0.20/0.53  thf('90', plain,
% 0.20/0.53      (((r1_tmap_1 @ sk_C_1 @ sk_B @ 
% 0.20/0.53         (k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C_1 @ sk_E) @ sk_H)) | 
% 0.20/0.53       ((r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H))),
% 0.20/0.53      inference('split', [status(esa)], ['58'])).
% 0.20/0.53  thf('91', plain,
% 0.20/0.53      (((r1_tmap_1 @ sk_C_1 @ sk_B @ 
% 0.20/0.53         (k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C_1 @ sk_E) @ sk_H))),
% 0.20/0.53      inference('sat_resolution*', [status(thm)], ['54', '89', '90'])).
% 0.20/0.53  thf('92', plain,
% 0.20/0.53      ((r1_tmap_1 @ sk_C_1 @ sk_B @ 
% 0.20/0.53        (k2_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_C_1) @ sk_H)),
% 0.20/0.53      inference('simpl_trail', [status(thm)], ['50', '91'])).
% 0.20/0.53  thf('93', plain,
% 0.20/0.53      (((k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C_1 @ sk_E)
% 0.20/0.53         = (k2_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_C_1))),
% 0.20/0.53      inference('clc', [status(thm)], ['47', '48'])).
% 0.20/0.53  thf('94', plain,
% 0.20/0.53      ((m1_subset_1 @ sk_E @ 
% 0.20/0.53        (k1_zfmisc_1 @ 
% 0.20/0.53         (k2_zfmisc_1 @ (u1_struct_0 @ sk_D) @ (u1_struct_0 @ sk_B))))),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf(t83_tmap_1, axiom,
% 0.20/0.53    (![A:$i]:
% 0.20/0.53     ( ( ( ~( v2_struct_0 @ A ) ) & ( v2_pre_topc @ A ) & ( l1_pre_topc @ A ) ) =>
% 0.20/0.53       ( ![B:$i]:
% 0.20/0.53         ( ( ( ~( v2_struct_0 @ B ) ) & ( v2_pre_topc @ B ) & 
% 0.20/0.53             ( l1_pre_topc @ B ) ) =>
% 0.20/0.53           ( ![C:$i]:
% 0.20/0.53             ( ( ( ~( v2_struct_0 @ C ) ) & ( m1_pre_topc @ C @ A ) ) =>
% 0.20/0.53               ( ![D:$i]:
% 0.20/0.53                 ( ( ( ~( v2_struct_0 @ D ) ) & ( m1_pre_topc @ D @ A ) ) =>
% 0.20/0.53                   ( ![E:$i]:
% 0.20/0.53                     ( ( ( v1_funct_1 @ E ) & 
% 0.20/0.53                         ( v1_funct_2 @
% 0.20/0.53                           E @ ( u1_struct_0 @ D ) @ ( u1_struct_0 @ B ) ) & 
% 0.20/0.53                         ( m1_subset_1 @
% 0.20/0.53                           E @ 
% 0.20/0.53                           ( k1_zfmisc_1 @
% 0.20/0.53                             ( k2_zfmisc_1 @
% 0.20/0.53                               ( u1_struct_0 @ D ) @ ( u1_struct_0 @ B ) ) ) ) ) =>
% 0.20/0.53                       ( ( m1_pre_topc @ C @ D ) =>
% 0.20/0.53                         ( ![F:$i]:
% 0.20/0.53                           ( ( m1_subset_1 @
% 0.20/0.53                               F @ ( k1_zfmisc_1 @ ( u1_struct_0 @ D ) ) ) =>
% 0.20/0.53                             ( ![G:$i]:
% 0.20/0.53                               ( ( m1_subset_1 @ G @ ( u1_struct_0 @ D ) ) =>
% 0.20/0.53                                 ( ![H:$i]:
% 0.20/0.53                                   ( ( m1_subset_1 @ H @ ( u1_struct_0 @ C ) ) =>
% 0.20/0.53                                     ( ( ( r1_tarski @ F @ ( u1_struct_0 @ C ) ) & 
% 0.20/0.53                                         ( m1_connsp_2 @ F @ D @ G ) & 
% 0.20/0.53                                         ( ( G ) = ( H ) ) ) =>
% 0.20/0.53                                       ( ( r1_tmap_1 @ D @ B @ E @ G ) <=>
% 0.20/0.53                                         ( r1_tmap_1 @
% 0.20/0.53                                           C @ B @ 
% 0.20/0.53                                           ( k3_tmap_1 @ A @ B @ D @ C @ E ) @ 
% 0.20/0.53                                           H ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ))).
% 0.20/0.53  thf('95', plain,
% 0.20/0.53      (![X38 : $i, X39 : $i, X40 : $i, X41 : $i, X42 : $i, X43 : $i, X44 : $i, 
% 0.20/0.53         X45 : $i]:
% 0.20/0.53         ((v2_struct_0 @ X38)
% 0.20/0.53          | ~ (v2_pre_topc @ X38)
% 0.20/0.53          | ~ (l1_pre_topc @ X38)
% 0.20/0.53          | (v2_struct_0 @ X39)
% 0.20/0.53          | ~ (m1_pre_topc @ X39 @ X40)
% 0.20/0.53          | ~ (m1_pre_topc @ X41 @ X39)
% 0.20/0.53          | ~ (m1_subset_1 @ X42 @ (k1_zfmisc_1 @ (u1_struct_0 @ X39)))
% 0.20/0.53          | ~ (m1_subset_1 @ X43 @ (u1_struct_0 @ X41))
% 0.20/0.53          | ~ (r1_tmap_1 @ X41 @ X38 @ 
% 0.20/0.53               (k3_tmap_1 @ X40 @ X38 @ X39 @ X41 @ X44) @ X43)
% 0.20/0.53          | (r1_tmap_1 @ X39 @ X38 @ X44 @ X45)
% 0.20/0.53          | ((X45) != (X43))
% 0.20/0.53          | ~ (m1_connsp_2 @ X42 @ X39 @ X45)
% 0.20/0.53          | ~ (r1_tarski @ X42 @ (u1_struct_0 @ X41))
% 0.20/0.53          | ~ (m1_subset_1 @ X45 @ (u1_struct_0 @ X39))
% 0.20/0.53          | ~ (m1_subset_1 @ X44 @ 
% 0.20/0.53               (k1_zfmisc_1 @ 
% 0.20/0.53                (k2_zfmisc_1 @ (u1_struct_0 @ X39) @ (u1_struct_0 @ X38))))
% 0.20/0.53          | ~ (v1_funct_2 @ X44 @ (u1_struct_0 @ X39) @ (u1_struct_0 @ X38))
% 0.20/0.53          | ~ (v1_funct_1 @ X44)
% 0.20/0.53          | ~ (m1_pre_topc @ X41 @ X40)
% 0.20/0.53          | (v2_struct_0 @ X41)
% 0.20/0.53          | ~ (l1_pre_topc @ X40)
% 0.20/0.53          | ~ (v2_pre_topc @ X40)
% 0.20/0.53          | (v2_struct_0 @ X40))),
% 0.20/0.53      inference('cnf', [status(esa)], [t83_tmap_1])).
% 0.20/0.53  thf('96', plain,
% 0.20/0.53      (![X38 : $i, X39 : $i, X40 : $i, X41 : $i, X42 : $i, X43 : $i, X44 : $i]:
% 0.20/0.53         ((v2_struct_0 @ X40)
% 0.20/0.53          | ~ (v2_pre_topc @ X40)
% 0.20/0.53          | ~ (l1_pre_topc @ X40)
% 0.20/0.53          | (v2_struct_0 @ X41)
% 0.20/0.53          | ~ (m1_pre_topc @ X41 @ X40)
% 0.20/0.53          | ~ (v1_funct_1 @ X44)
% 0.20/0.53          | ~ (v1_funct_2 @ X44 @ (u1_struct_0 @ X39) @ (u1_struct_0 @ X38))
% 0.20/0.53          | ~ (m1_subset_1 @ X44 @ 
% 0.20/0.53               (k1_zfmisc_1 @ 
% 0.20/0.53                (k2_zfmisc_1 @ (u1_struct_0 @ X39) @ (u1_struct_0 @ X38))))
% 0.20/0.53          | ~ (m1_subset_1 @ X43 @ (u1_struct_0 @ X39))
% 0.20/0.53          | ~ (r1_tarski @ X42 @ (u1_struct_0 @ X41))
% 0.20/0.53          | ~ (m1_connsp_2 @ X42 @ X39 @ X43)
% 0.20/0.53          | (r1_tmap_1 @ X39 @ X38 @ X44 @ X43)
% 0.20/0.53          | ~ (r1_tmap_1 @ X41 @ X38 @ 
% 0.20/0.53               (k3_tmap_1 @ X40 @ X38 @ X39 @ X41 @ X44) @ X43)
% 0.20/0.53          | ~ (m1_subset_1 @ X43 @ (u1_struct_0 @ X41))
% 0.20/0.53          | ~ (m1_subset_1 @ X42 @ (k1_zfmisc_1 @ (u1_struct_0 @ X39)))
% 0.20/0.53          | ~ (m1_pre_topc @ X41 @ X39)
% 0.20/0.53          | ~ (m1_pre_topc @ X39 @ X40)
% 0.20/0.53          | (v2_struct_0 @ X39)
% 0.20/0.53          | ~ (l1_pre_topc @ X38)
% 0.20/0.53          | ~ (v2_pre_topc @ X38)
% 0.20/0.53          | (v2_struct_0 @ X38))),
% 0.20/0.53      inference('simplify', [status(thm)], ['95'])).
% 0.20/0.53  thf('97', plain,
% 0.20/0.53      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i]:
% 0.20/0.53         ((v2_struct_0 @ sk_B)
% 0.20/0.53          | ~ (v2_pre_topc @ sk_B)
% 0.20/0.53          | ~ (l1_pre_topc @ sk_B)
% 0.20/0.53          | (v2_struct_0 @ sk_D)
% 0.20/0.53          | ~ (m1_pre_topc @ sk_D @ X0)
% 0.20/0.53          | ~ (m1_pre_topc @ X1 @ sk_D)
% 0.20/0.53          | ~ (m1_subset_1 @ X2 @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_D)))
% 0.20/0.53          | ~ (m1_subset_1 @ X3 @ (u1_struct_0 @ X1))
% 0.20/0.53          | ~ (r1_tmap_1 @ X1 @ sk_B @ 
% 0.20/0.53               (k3_tmap_1 @ X0 @ sk_B @ sk_D @ X1 @ sk_E) @ X3)
% 0.20/0.53          | (r1_tmap_1 @ sk_D @ sk_B @ sk_E @ X3)
% 0.20/0.53          | ~ (m1_connsp_2 @ X2 @ sk_D @ X3)
% 0.20/0.53          | ~ (r1_tarski @ X2 @ (u1_struct_0 @ X1))
% 0.20/0.53          | ~ (m1_subset_1 @ X3 @ (u1_struct_0 @ sk_D))
% 0.20/0.53          | ~ (v1_funct_2 @ sk_E @ (u1_struct_0 @ sk_D) @ (u1_struct_0 @ sk_B))
% 0.20/0.53          | ~ (v1_funct_1 @ sk_E)
% 0.20/0.53          | ~ (m1_pre_topc @ X1 @ X0)
% 0.20/0.53          | (v2_struct_0 @ X1)
% 0.20/0.53          | ~ (l1_pre_topc @ X0)
% 0.20/0.53          | ~ (v2_pre_topc @ X0)
% 0.20/0.53          | (v2_struct_0 @ X0))),
% 0.20/0.53      inference('sup-', [status(thm)], ['94', '96'])).
% 0.20/0.53  thf('98', plain, ((v2_pre_topc @ sk_B)),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf('99', plain, ((l1_pre_topc @ sk_B)),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf('100', plain,
% 0.20/0.53      ((v1_funct_2 @ sk_E @ (u1_struct_0 @ sk_D) @ (u1_struct_0 @ sk_B))),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf('101', plain, ((v1_funct_1 @ sk_E)),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf('102', plain,
% 0.20/0.53      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i]:
% 0.20/0.53         ((v2_struct_0 @ sk_B)
% 0.20/0.53          | (v2_struct_0 @ sk_D)
% 0.20/0.53          | ~ (m1_pre_topc @ sk_D @ X0)
% 0.20/0.53          | ~ (m1_pre_topc @ X1 @ sk_D)
% 0.20/0.53          | ~ (m1_subset_1 @ X2 @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_D)))
% 0.20/0.53          | ~ (m1_subset_1 @ X3 @ (u1_struct_0 @ X1))
% 0.20/0.53          | ~ (r1_tmap_1 @ X1 @ sk_B @ 
% 0.20/0.53               (k3_tmap_1 @ X0 @ sk_B @ sk_D @ X1 @ sk_E) @ X3)
% 0.20/0.53          | (r1_tmap_1 @ sk_D @ sk_B @ sk_E @ X3)
% 0.20/0.53          | ~ (m1_connsp_2 @ X2 @ sk_D @ X3)
% 0.20/0.53          | ~ (r1_tarski @ X2 @ (u1_struct_0 @ X1))
% 0.20/0.53          | ~ (m1_subset_1 @ X3 @ (u1_struct_0 @ sk_D))
% 0.20/0.53          | ~ (m1_pre_topc @ X1 @ X0)
% 0.20/0.53          | (v2_struct_0 @ X1)
% 0.20/0.53          | ~ (l1_pre_topc @ X0)
% 0.20/0.53          | ~ (v2_pre_topc @ X0)
% 0.20/0.53          | (v2_struct_0 @ X0))),
% 0.20/0.53      inference('demod', [status(thm)], ['97', '98', '99', '100', '101'])).
% 0.20/0.53  thf('103', plain,
% 0.20/0.53      (![X0 : $i, X1 : $i]:
% 0.20/0.53         (~ (r1_tmap_1 @ sk_C_1 @ sk_B @ 
% 0.20/0.53             (k2_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_C_1) @ X0)
% 0.20/0.53          | (v2_struct_0 @ sk_A)
% 0.20/0.53          | ~ (v2_pre_topc @ sk_A)
% 0.20/0.53          | ~ (l1_pre_topc @ sk_A)
% 0.20/0.53          | (v2_struct_0 @ sk_C_1)
% 0.20/0.53          | ~ (m1_pre_topc @ sk_C_1 @ sk_A)
% 0.20/0.53          | ~ (m1_subset_1 @ X0 @ (u1_struct_0 @ sk_D))
% 0.20/0.53          | ~ (r1_tarski @ X1 @ (u1_struct_0 @ sk_C_1))
% 0.20/0.53          | ~ (m1_connsp_2 @ X1 @ sk_D @ X0)
% 0.20/0.53          | (r1_tmap_1 @ sk_D @ sk_B @ sk_E @ X0)
% 0.20/0.53          | ~ (m1_subset_1 @ X0 @ (u1_struct_0 @ sk_C_1))
% 0.20/0.53          | ~ (m1_subset_1 @ X1 @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_D)))
% 0.20/0.53          | ~ (m1_pre_topc @ sk_C_1 @ sk_D)
% 0.20/0.53          | ~ (m1_pre_topc @ sk_D @ sk_A)
% 0.20/0.53          | (v2_struct_0 @ sk_D)
% 0.20/0.53          | (v2_struct_0 @ sk_B))),
% 0.20/0.53      inference('sup-', [status(thm)], ['93', '102'])).
% 0.20/0.53  thf('104', plain, ((v2_pre_topc @ sk_A)),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf('105', plain, ((l1_pre_topc @ sk_A)),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf('106', plain, ((m1_pre_topc @ sk_C_1 @ sk_A)),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf('107', plain, ((m1_pre_topc @ sk_C_1 @ sk_D)),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf('108', plain, ((m1_pre_topc @ sk_D @ sk_A)),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf('109', plain,
% 0.20/0.53      (![X0 : $i, X1 : $i]:
% 0.20/0.53         (~ (r1_tmap_1 @ sk_C_1 @ sk_B @ 
% 0.20/0.53             (k2_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_C_1) @ X0)
% 0.20/0.53          | (v2_struct_0 @ sk_A)
% 0.20/0.53          | (v2_struct_0 @ sk_C_1)
% 0.20/0.53          | ~ (m1_subset_1 @ X0 @ (u1_struct_0 @ sk_D))
% 0.20/0.53          | ~ (r1_tarski @ X1 @ (u1_struct_0 @ sk_C_1))
% 0.20/0.53          | ~ (m1_connsp_2 @ X1 @ sk_D @ X0)
% 0.20/0.53          | (r1_tmap_1 @ sk_D @ sk_B @ sk_E @ X0)
% 0.20/0.53          | ~ (m1_subset_1 @ X0 @ (u1_struct_0 @ sk_C_1))
% 0.20/0.53          | ~ (m1_subset_1 @ X1 @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_D)))
% 0.20/0.53          | (v2_struct_0 @ sk_D)
% 0.20/0.53          | (v2_struct_0 @ sk_B))),
% 0.20/0.53      inference('demod', [status(thm)],
% 0.20/0.53                ['103', '104', '105', '106', '107', '108'])).
% 0.20/0.53  thf('110', plain,
% 0.20/0.53      (![X0 : $i]:
% 0.20/0.53         ((v2_struct_0 @ sk_B)
% 0.20/0.53          | (v2_struct_0 @ sk_D)
% 0.20/0.53          | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_D)))
% 0.20/0.53          | ~ (m1_subset_1 @ sk_H @ (u1_struct_0 @ sk_C_1))
% 0.20/0.53          | (r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H)
% 0.20/0.53          | ~ (m1_connsp_2 @ X0 @ sk_D @ sk_H)
% 0.20/0.53          | ~ (r1_tarski @ X0 @ (u1_struct_0 @ sk_C_1))
% 0.20/0.53          | ~ (m1_subset_1 @ sk_H @ (u1_struct_0 @ sk_D))
% 0.20/0.53          | (v2_struct_0 @ sk_C_1)
% 0.20/0.53          | (v2_struct_0 @ sk_A))),
% 0.20/0.53      inference('sup-', [status(thm)], ['92', '109'])).
% 0.20/0.53  thf('111', plain, ((m1_subset_1 @ sk_H @ (u1_struct_0 @ sk_C_1))),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf('112', plain, ((m1_subset_1 @ sk_H @ (u1_struct_0 @ sk_D))),
% 0.20/0.53      inference('demod', [status(thm)], ['72', '73'])).
% 0.20/0.53  thf('113', plain,
% 0.20/0.53      (![X0 : $i]:
% 0.20/0.53         ((v2_struct_0 @ sk_B)
% 0.20/0.53          | (v2_struct_0 @ sk_D)
% 0.20/0.53          | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_D)))
% 0.20/0.53          | (r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H)
% 0.20/0.53          | ~ (m1_connsp_2 @ X0 @ sk_D @ sk_H)
% 0.20/0.53          | ~ (r1_tarski @ X0 @ (u1_struct_0 @ sk_C_1))
% 0.20/0.53          | (v2_struct_0 @ sk_C_1)
% 0.20/0.53          | (v2_struct_0 @ sk_A))),
% 0.20/0.53      inference('demod', [status(thm)], ['110', '111', '112'])).
% 0.20/0.53  thf('114', plain,
% 0.20/0.53      (((v2_struct_0 @ sk_A)
% 0.20/0.53        | (v2_struct_0 @ sk_C_1)
% 0.20/0.53        | ~ (r1_tarski @ sk_F @ (u1_struct_0 @ sk_C_1))
% 0.20/0.53        | ~ (m1_connsp_2 @ sk_F @ sk_D @ sk_H)
% 0.20/0.53        | (r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H)
% 0.20/0.53        | (v2_struct_0 @ sk_D)
% 0.20/0.53        | (v2_struct_0 @ sk_B))),
% 0.20/0.53      inference('sup-', [status(thm)], ['1', '113'])).
% 0.20/0.53  thf('115', plain, ((r1_tarski @ sk_F @ (u1_struct_0 @ sk_C_1))),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf('116', plain, ((r2_hidden @ sk_G @ sk_F)),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf('117', plain, (((sk_G) = (sk_H))),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf('118', plain, ((r2_hidden @ sk_H @ sk_F)),
% 0.20/0.53      inference('demod', [status(thm)], ['116', '117'])).
% 0.20/0.53  thf('119', plain,
% 0.20/0.53      ((m1_subset_1 @ sk_F @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_D)))),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf('120', plain,
% 0.20/0.53      ((m1_subset_1 @ sk_F @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_D)))),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf(t56_tops_1, axiom,
% 0.20/0.53    (![A:$i]:
% 0.20/0.53     ( ( l1_pre_topc @ A ) =>
% 0.20/0.53       ( ![B:$i]:
% 0.20/0.53         ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) =>
% 0.20/0.53           ( ![C:$i]:
% 0.20/0.53             ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) =>
% 0.20/0.53               ( ( ( v3_pre_topc @ B @ A ) & ( r1_tarski @ B @ C ) ) =>
% 0.20/0.53                 ( r1_tarski @ B @ ( k1_tops_1 @ A @ C ) ) ) ) ) ) ) ))).
% 0.20/0.53  thf('121', plain,
% 0.20/0.53      (![X14 : $i, X15 : $i, X16 : $i]:
% 0.20/0.53         (~ (m1_subset_1 @ X14 @ (k1_zfmisc_1 @ (u1_struct_0 @ X15)))
% 0.20/0.53          | ~ (v3_pre_topc @ X14 @ X15)
% 0.20/0.53          | ~ (r1_tarski @ X14 @ X16)
% 0.20/0.53          | (r1_tarski @ X14 @ (k1_tops_1 @ X15 @ X16))
% 0.20/0.53          | ~ (m1_subset_1 @ X16 @ (k1_zfmisc_1 @ (u1_struct_0 @ X15)))
% 0.20/0.53          | ~ (l1_pre_topc @ X15))),
% 0.20/0.53      inference('cnf', [status(esa)], [t56_tops_1])).
% 0.20/0.53  thf('122', plain,
% 0.20/0.53      (![X0 : $i]:
% 0.20/0.53         (~ (l1_pre_topc @ sk_D)
% 0.20/0.53          | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_D)))
% 0.20/0.53          | (r1_tarski @ sk_F @ (k1_tops_1 @ sk_D @ X0))
% 0.20/0.53          | ~ (r1_tarski @ sk_F @ X0)
% 0.20/0.53          | ~ (v3_pre_topc @ sk_F @ sk_D))),
% 0.20/0.53      inference('sup-', [status(thm)], ['120', '121'])).
% 0.20/0.53  thf('123', plain, ((l1_pre_topc @ sk_D)),
% 0.20/0.53      inference('demod', [status(thm)], ['31', '32'])).
% 0.20/0.53  thf('124', plain, ((v3_pre_topc @ sk_F @ sk_D)),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf('125', plain,
% 0.20/0.53      (![X0 : $i]:
% 0.20/0.53         (~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_D)))
% 0.20/0.53          | (r1_tarski @ sk_F @ (k1_tops_1 @ sk_D @ X0))
% 0.20/0.53          | ~ (r1_tarski @ sk_F @ X0))),
% 0.20/0.53      inference('demod', [status(thm)], ['122', '123', '124'])).
% 0.20/0.53  thf('126', plain,
% 0.20/0.53      ((~ (r1_tarski @ sk_F @ sk_F)
% 0.20/0.53        | (r1_tarski @ sk_F @ (k1_tops_1 @ sk_D @ sk_F)))),
% 0.20/0.53      inference('sup-', [status(thm)], ['119', '125'])).
% 0.20/0.53  thf(d10_xboole_0, axiom,
% 0.20/0.53    (![A:$i,B:$i]:
% 0.20/0.53     ( ( ( A ) = ( B ) ) <=> ( ( r1_tarski @ A @ B ) & ( r1_tarski @ B @ A ) ) ))).
% 0.20/0.53  thf('127', plain,
% 0.20/0.53      (![X4 : $i, X5 : $i]: ((r1_tarski @ X4 @ X5) | ((X4) != (X5)))),
% 0.20/0.53      inference('cnf', [status(esa)], [d10_xboole_0])).
% 0.20/0.53  thf('128', plain, (![X5 : $i]: (r1_tarski @ X5 @ X5)),
% 0.20/0.53      inference('simplify', [status(thm)], ['127'])).
% 0.20/0.53  thf('129', plain, ((r1_tarski @ sk_F @ (k1_tops_1 @ sk_D @ sk_F))),
% 0.20/0.53      inference('demod', [status(thm)], ['126', '128'])).
% 0.20/0.53  thf(d3_tarski, axiom,
% 0.20/0.53    (![A:$i,B:$i]:
% 0.20/0.53     ( ( r1_tarski @ A @ B ) <=>
% 0.20/0.53       ( ![C:$i]: ( ( r2_hidden @ C @ A ) => ( r2_hidden @ C @ B ) ) ) ))).
% 0.20/0.53  thf('130', plain,
% 0.20/0.53      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.20/0.53         (~ (r2_hidden @ X0 @ X1)
% 0.20/0.53          | (r2_hidden @ X0 @ X2)
% 0.20/0.53          | ~ (r1_tarski @ X1 @ X2))),
% 0.20/0.53      inference('cnf', [status(esa)], [d3_tarski])).
% 0.20/0.53  thf('131', plain,
% 0.20/0.53      (![X0 : $i]:
% 0.20/0.53         ((r2_hidden @ X0 @ (k1_tops_1 @ sk_D @ sk_F))
% 0.20/0.53          | ~ (r2_hidden @ X0 @ sk_F))),
% 0.20/0.53      inference('sup-', [status(thm)], ['129', '130'])).
% 0.20/0.53  thf('132', plain, ((r2_hidden @ sk_H @ (k1_tops_1 @ sk_D @ sk_F))),
% 0.20/0.53      inference('sup-', [status(thm)], ['118', '131'])).
% 0.20/0.53  thf('133', plain,
% 0.20/0.53      ((m1_subset_1 @ sk_F @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_D)))),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf(d1_connsp_2, axiom,
% 0.20/0.53    (![A:$i]:
% 0.20/0.53     ( ( ( ~( v2_struct_0 @ A ) ) & ( v2_pre_topc @ A ) & ( l1_pre_topc @ A ) ) =>
% 0.20/0.53       ( ![B:$i]:
% 0.20/0.53         ( ( m1_subset_1 @ B @ ( u1_struct_0 @ A ) ) =>
% 0.20/0.53           ( ![C:$i]:
% 0.20/0.53             ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) =>
% 0.20/0.53               ( ( m1_connsp_2 @ C @ A @ B ) <=>
% 0.20/0.53                 ( r2_hidden @ B @ ( k1_tops_1 @ A @ C ) ) ) ) ) ) ) ))).
% 0.20/0.53  thf('134', plain,
% 0.20/0.53      (![X17 : $i, X18 : $i, X19 : $i]:
% 0.20/0.53         (~ (m1_subset_1 @ X17 @ (u1_struct_0 @ X18))
% 0.20/0.53          | ~ (r2_hidden @ X17 @ (k1_tops_1 @ X18 @ X19))
% 0.20/0.53          | (m1_connsp_2 @ X19 @ X18 @ X17)
% 0.20/0.53          | ~ (m1_subset_1 @ X19 @ (k1_zfmisc_1 @ (u1_struct_0 @ X18)))
% 0.20/0.53          | ~ (l1_pre_topc @ X18)
% 0.20/0.53          | ~ (v2_pre_topc @ X18)
% 0.20/0.53          | (v2_struct_0 @ X18))),
% 0.20/0.53      inference('cnf', [status(esa)], [d1_connsp_2])).
% 0.20/0.53  thf('135', plain,
% 0.20/0.53      (![X0 : $i]:
% 0.20/0.53         ((v2_struct_0 @ sk_D)
% 0.20/0.53          | ~ (v2_pre_topc @ sk_D)
% 0.20/0.53          | ~ (l1_pre_topc @ sk_D)
% 0.20/0.53          | (m1_connsp_2 @ sk_F @ sk_D @ X0)
% 0.20/0.53          | ~ (r2_hidden @ X0 @ (k1_tops_1 @ sk_D @ sk_F))
% 0.20/0.53          | ~ (m1_subset_1 @ X0 @ (u1_struct_0 @ sk_D)))),
% 0.20/0.53      inference('sup-', [status(thm)], ['133', '134'])).
% 0.20/0.53  thf('136', plain, ((v2_pre_topc @ sk_D)),
% 0.20/0.53      inference('demod', [status(thm)], ['25', '26', '27'])).
% 0.20/0.53  thf('137', plain, ((l1_pre_topc @ sk_D)),
% 0.20/0.53      inference('demod', [status(thm)], ['31', '32'])).
% 0.20/0.53  thf('138', plain,
% 0.20/0.53      (![X0 : $i]:
% 0.20/0.53         ((v2_struct_0 @ sk_D)
% 0.20/0.53          | (m1_connsp_2 @ sk_F @ sk_D @ X0)
% 0.20/0.53          | ~ (r2_hidden @ X0 @ (k1_tops_1 @ sk_D @ sk_F))
% 0.20/0.53          | ~ (m1_subset_1 @ X0 @ (u1_struct_0 @ sk_D)))),
% 0.20/0.53      inference('demod', [status(thm)], ['135', '136', '137'])).
% 0.20/0.53  thf('139', plain,
% 0.20/0.53      ((~ (m1_subset_1 @ sk_H @ (u1_struct_0 @ sk_D))
% 0.20/0.53        | (m1_connsp_2 @ sk_F @ sk_D @ sk_H)
% 0.20/0.53        | (v2_struct_0 @ sk_D))),
% 0.20/0.53      inference('sup-', [status(thm)], ['132', '138'])).
% 0.20/0.53  thf('140', plain, ((m1_subset_1 @ sk_H @ (u1_struct_0 @ sk_D))),
% 0.20/0.53      inference('demod', [status(thm)], ['72', '73'])).
% 0.20/0.53  thf('141', plain,
% 0.20/0.53      (((m1_connsp_2 @ sk_F @ sk_D @ sk_H) | (v2_struct_0 @ sk_D))),
% 0.20/0.53      inference('demod', [status(thm)], ['139', '140'])).
% 0.20/0.53  thf('142', plain, (~ (v2_struct_0 @ sk_D)),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf('143', plain, ((m1_connsp_2 @ sk_F @ sk_D @ sk_H)),
% 0.20/0.53      inference('clc', [status(thm)], ['141', '142'])).
% 0.20/0.53  thf('144', plain,
% 0.20/0.53      (((v2_struct_0 @ sk_A)
% 0.20/0.53        | (v2_struct_0 @ sk_C_1)
% 0.20/0.53        | (r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H)
% 0.20/0.53        | (v2_struct_0 @ sk_D)
% 0.20/0.53        | (v2_struct_0 @ sk_B))),
% 0.20/0.53      inference('demod', [status(thm)], ['114', '115', '143'])).
% 0.20/0.53  thf('145', plain,
% 0.20/0.53      ((~ (r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_G))
% 0.20/0.53         <= (~ ((r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_G)))),
% 0.20/0.53      inference('split', [status(esa)], ['80'])).
% 0.20/0.53  thf('146', plain, (((sk_G) = (sk_H))),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf('147', plain,
% 0.20/0.53      ((~ (r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H))
% 0.20/0.53         <= (~ ((r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_G)))),
% 0.20/0.53      inference('demod', [status(thm)], ['145', '146'])).
% 0.20/0.53  thf('148', plain,
% 0.20/0.53      (((r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_G))
% 0.20/0.53         <= (((r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_G)))),
% 0.20/0.53      inference('split', [status(esa)], ['2'])).
% 0.20/0.53  thf('149', plain, (((sk_G) = (sk_H))),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf('150', plain,
% 0.20/0.53      (((r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H))
% 0.20/0.53         <= (((r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_G)))),
% 0.20/0.53      inference('demod', [status(thm)], ['148', '149'])).
% 0.20/0.53  thf('151', plain,
% 0.20/0.53      ((~ (r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H))
% 0.20/0.53         <= (~ ((r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H)))),
% 0.20/0.53      inference('split', [status(esa)], ['53'])).
% 0.20/0.53  thf('152', plain,
% 0.20/0.53      (~ ((r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_G)) | 
% 0.20/0.53       ((r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H))),
% 0.20/0.53      inference('sup-', [status(thm)], ['150', '151'])).
% 0.20/0.53  thf('153', plain, (~ ((r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_G))),
% 0.20/0.53      inference('sat_resolution*', [status(thm)], ['54', '89', '152'])).
% 0.20/0.53  thf('154', plain, (~ (r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H)),
% 0.20/0.53      inference('simpl_trail', [status(thm)], ['147', '153'])).
% 0.20/0.53  thf('155', plain,
% 0.20/0.53      (((v2_struct_0 @ sk_B)
% 0.20/0.53        | (v2_struct_0 @ sk_D)
% 0.20/0.53        | (v2_struct_0 @ sk_C_1)
% 0.20/0.53        | (v2_struct_0 @ sk_A))),
% 0.20/0.53      inference('sup-', [status(thm)], ['144', '154'])).
% 0.20/0.53  thf('156', plain, (~ (v2_struct_0 @ sk_D)),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf('157', plain,
% 0.20/0.53      (((v2_struct_0 @ sk_A) | (v2_struct_0 @ sk_C_1) | (v2_struct_0 @ sk_B))),
% 0.20/0.53      inference('sup-', [status(thm)], ['155', '156'])).
% 0.20/0.53  thf('158', plain, (~ (v2_struct_0 @ sk_A)),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf('159', plain, (((v2_struct_0 @ sk_B) | (v2_struct_0 @ sk_C_1))),
% 0.20/0.53      inference('clc', [status(thm)], ['157', '158'])).
% 0.20/0.53  thf('160', plain, (~ (v2_struct_0 @ sk_B)),
% 0.20/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.53  thf('161', plain, ((v2_struct_0 @ sk_C_1)),
% 0.20/0.53      inference('clc', [status(thm)], ['159', '160'])).
% 0.20/0.53  thf('162', plain, ($false), inference('demod', [status(thm)], ['0', '161'])).
% 0.20/0.53  
% 0.20/0.53  % SZS output end Refutation
% 0.20/0.53  
% 0.20/0.54  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
