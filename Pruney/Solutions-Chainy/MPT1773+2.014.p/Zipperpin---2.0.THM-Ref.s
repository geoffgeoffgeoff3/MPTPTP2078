%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.2DuFRqmaLO

% Computer   : n014.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 14:10:16 EST 2020

% Result     : Theorem 0.21s
% Output     : Refutation 0.21s
% Verified   : 
% Statistics : Number of formulae       :  147 ( 400 expanded)
%              Number of leaves         :   30 ( 122 expanded)
%              Depth                    :   26
%              Number of atoms          : 1853 (17810 expanded)
%              Number of equality atoms :   12 ( 207 expanded)
%              Maximal formula depth    :   32 (   7 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(u1_struct_0_type,type,(
    u1_struct_0: $i > $i )).

thf(m1_pre_topc_type,type,(
    m1_pre_topc: $i > $i > $o )).

thf(k3_tmap_1_type,type,(
    k3_tmap_1: $i > $i > $i > $i > $i > $i )).

thf(m1_connsp_2_type,type,(
    m1_connsp_2: $i > $i > $i > $o )).

thf(r1_tmap_1_type,type,(
    r1_tmap_1: $i > $i > $i > $i > $o )).

thf(v2_pre_topc_type,type,(
    v2_pre_topc: $i > $o )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(v1_funct_1_type,type,(
    v1_funct_1: $i > $o )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(sk_F_type,type,(
    sk_F: $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(v1_funct_2_type,type,(
    v1_funct_2: $i > $i > $i > $o )).

thf(sk_E_type,type,(
    sk_E: $i )).

thf(l1_pre_topc_type,type,(
    l1_pre_topc: $i > $o )).

thf(k2_zfmisc_1_type,type,(
    k2_zfmisc_1: $i > $i > $i )).

thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(sk_G_type,type,(
    sk_G: $i )).

thf(sk_C_type,type,(
    sk_C: $i )).

thf(v3_pre_topc_type,type,(
    v3_pre_topc: $i > $i > $o )).

thf(sk_H_type,type,(
    sk_H: $i )).

thf(v2_struct_0_type,type,(
    v2_struct_0: $i > $o )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(sk_D_type,type,(
    sk_D: $i )).

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
    ~ ( v2_struct_0 @ sk_C ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('1',plain,(
    m1_subset_1 @ sk_F @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_D ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('2',plain,
    ( ( r1_tmap_1 @ sk_C @ sk_B @ ( k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C @ sk_E ) @ sk_H )
    | ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_G ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('3',plain,
    ( ( r1_tmap_1 @ sk_C @ sk_B @ ( k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C @ sk_E ) @ sk_H )
   <= ( r1_tmap_1 @ sk_C @ sk_B @ ( k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C @ sk_E ) @ sk_H ) ),
    inference(split,[status(esa)],['2'])).

thf('4',plain,
    ( ~ ( r1_tmap_1 @ sk_C @ sk_B @ ( k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C @ sk_E ) @ sk_H )
    | ~ ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_G ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('5',plain,(
    sk_G = sk_H ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('6',plain,
    ( ~ ( r1_tmap_1 @ sk_C @ sk_B @ ( k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C @ sk_E ) @ sk_H )
    | ~ ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H ) ),
    inference(demod,[status(thm)],['4','5'])).

thf('7',plain,
    ( ~ ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H )
    | ~ ( r1_tmap_1 @ sk_C @ sk_B @ ( k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C @ sk_E ) @ sk_H ) ),
    inference(split,[status(esa)],['6'])).

thf('8',plain,
    ( ( r1_tmap_1 @ sk_C @ sk_B @ ( k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C @ sk_E ) @ sk_H )
    | ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_G ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('9',plain,(
    sk_G = sk_H ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('10',plain,
    ( ( r1_tmap_1 @ sk_C @ sk_B @ ( k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C @ sk_E ) @ sk_H )
    | ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H ) ),
    inference(demod,[status(thm)],['8','9'])).

thf('11',plain,
    ( ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H )
   <= ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H ) ),
    inference(split,[status(esa)],['10'])).

thf('12',plain,
    ( ~ ( r1_tmap_1 @ sk_C @ sk_B @ ( k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C @ sk_E ) @ sk_H )
    | ~ ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_G ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('13',plain,
    ( ~ ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_G )
   <= ~ ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_G ) ),
    inference(split,[status(esa)],['12'])).

thf('14',plain,(
    sk_G = sk_H ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('15',plain,
    ( ~ ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H )
   <= ~ ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_G ) ),
    inference(demod,[status(thm)],['13','14'])).

thf('16',plain,
    ( ~ ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H )
    | ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_G ) ),
    inference('sup-',[status(thm)],['11','15'])).

thf('17',plain,(
    m1_pre_topc @ sk_C @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('18',plain,(
    m1_subset_1 @ sk_H @ ( u1_struct_0 @ sk_C ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('19',plain,
    ( ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_G )
   <= ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_G ) ),
    inference(split,[status(esa)],['2'])).

thf('20',plain,(
    sk_G = sk_H ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('21',plain,
    ( ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H )
   <= ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_G ) ),
    inference(demod,[status(thm)],['19','20'])).

thf('22',plain,(
    m1_subset_1 @ sk_E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( u1_struct_0 @ sk_D ) @ ( u1_struct_0 @ sk_B ) ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t81_tmap_1,axiom,(
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
                        & ( v1_funct_2 @ E @ ( u1_struct_0 @ C ) @ ( u1_struct_0 @ B ) )
                        & ( m1_subset_1 @ E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( u1_struct_0 @ C ) @ ( u1_struct_0 @ B ) ) ) ) )
                     => ! [F: $i] :
                          ( ( m1_subset_1 @ F @ ( u1_struct_0 @ C ) )
                         => ! [G: $i] :
                              ( ( m1_subset_1 @ G @ ( u1_struct_0 @ D ) )
                             => ( ( ( F = G )
                                  & ( m1_pre_topc @ D @ C )
                                  & ( r1_tmap_1 @ C @ B @ E @ F ) )
                               => ( r1_tmap_1 @ D @ B @ ( k3_tmap_1 @ A @ B @ C @ D @ E ) @ G ) ) ) ) ) ) ) ) ) )).

thf('23',plain,(
    ! [X7: $i,X8: $i,X9: $i,X10: $i,X11: $i,X12: $i,X13: $i] :
      ( ( v2_struct_0 @ X7 )
      | ~ ( v2_pre_topc @ X7 )
      | ~ ( l1_pre_topc @ X7 )
      | ( v2_struct_0 @ X8 )
      | ~ ( m1_pre_topc @ X8 @ X9 )
      | ~ ( m1_subset_1 @ X10 @ ( u1_struct_0 @ X11 ) )
      | ~ ( m1_pre_topc @ X8 @ X11 )
      | ~ ( r1_tmap_1 @ X11 @ X7 @ X12 @ X10 )
      | ( X10 != X13 )
      | ( r1_tmap_1 @ X8 @ X7 @ ( k3_tmap_1 @ X9 @ X7 @ X11 @ X8 @ X12 ) @ X13 )
      | ~ ( m1_subset_1 @ X13 @ ( u1_struct_0 @ X8 ) )
      | ~ ( m1_subset_1 @ X12 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( u1_struct_0 @ X11 ) @ ( u1_struct_0 @ X7 ) ) ) )
      | ~ ( v1_funct_2 @ X12 @ ( u1_struct_0 @ X11 ) @ ( u1_struct_0 @ X7 ) )
      | ~ ( v1_funct_1 @ X12 )
      | ~ ( m1_pre_topc @ X11 @ X9 )
      | ( v2_struct_0 @ X11 )
      | ~ ( l1_pre_topc @ X9 )
      | ~ ( v2_pre_topc @ X9 )
      | ( v2_struct_0 @ X9 ) ) ),
    inference(cnf,[status(esa)],[t81_tmap_1])).

thf('24',plain,(
    ! [X7: $i,X8: $i,X9: $i,X11: $i,X12: $i,X13: $i] :
      ( ( v2_struct_0 @ X9 )
      | ~ ( v2_pre_topc @ X9 )
      | ~ ( l1_pre_topc @ X9 )
      | ( v2_struct_0 @ X11 )
      | ~ ( m1_pre_topc @ X11 @ X9 )
      | ~ ( v1_funct_1 @ X12 )
      | ~ ( v1_funct_2 @ X12 @ ( u1_struct_0 @ X11 ) @ ( u1_struct_0 @ X7 ) )
      | ~ ( m1_subset_1 @ X12 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( u1_struct_0 @ X11 ) @ ( u1_struct_0 @ X7 ) ) ) )
      | ~ ( m1_subset_1 @ X13 @ ( u1_struct_0 @ X8 ) )
      | ( r1_tmap_1 @ X8 @ X7 @ ( k3_tmap_1 @ X9 @ X7 @ X11 @ X8 @ X12 ) @ X13 )
      | ~ ( r1_tmap_1 @ X11 @ X7 @ X12 @ X13 )
      | ~ ( m1_pre_topc @ X8 @ X11 )
      | ~ ( m1_subset_1 @ X13 @ ( u1_struct_0 @ X11 ) )
      | ~ ( m1_pre_topc @ X8 @ X9 )
      | ( v2_struct_0 @ X8 )
      | ~ ( l1_pre_topc @ X7 )
      | ~ ( v2_pre_topc @ X7 )
      | ( v2_struct_0 @ X7 ) ) ),
    inference(simplify,[status(thm)],['23'])).

thf('25',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( v2_struct_0 @ sk_B )
      | ~ ( v2_pre_topc @ sk_B )
      | ~ ( l1_pre_topc @ sk_B )
      | ( v2_struct_0 @ X0 )
      | ~ ( m1_pre_topc @ X0 @ X1 )
      | ~ ( m1_subset_1 @ X2 @ ( u1_struct_0 @ sk_D ) )
      | ~ ( m1_pre_topc @ X0 @ sk_D )
      | ~ ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ X2 )
      | ( r1_tmap_1 @ X0 @ sk_B @ ( k3_tmap_1 @ X1 @ sk_B @ sk_D @ X0 @ sk_E ) @ X2 )
      | ~ ( m1_subset_1 @ X2 @ ( u1_struct_0 @ X0 ) )
      | ~ ( v1_funct_2 @ sk_E @ ( u1_struct_0 @ sk_D ) @ ( u1_struct_0 @ sk_B ) )
      | ~ ( v1_funct_1 @ sk_E )
      | ~ ( m1_pre_topc @ sk_D @ X1 )
      | ( v2_struct_0 @ sk_D )
      | ~ ( l1_pre_topc @ X1 )
      | ~ ( v2_pre_topc @ X1 )
      | ( v2_struct_0 @ X1 ) ) ),
    inference('sup-',[status(thm)],['22','24'])).

thf('26',plain,(
    v2_pre_topc @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('27',plain,(
    l1_pre_topc @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('28',plain,(
    v1_funct_2 @ sk_E @ ( u1_struct_0 @ sk_D ) @ ( u1_struct_0 @ sk_B ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('29',plain,(
    v1_funct_1 @ sk_E ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('30',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( v2_struct_0 @ sk_B )
      | ( v2_struct_0 @ X0 )
      | ~ ( m1_pre_topc @ X0 @ X1 )
      | ~ ( m1_subset_1 @ X2 @ ( u1_struct_0 @ sk_D ) )
      | ~ ( m1_pre_topc @ X0 @ sk_D )
      | ~ ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ X2 )
      | ( r1_tmap_1 @ X0 @ sk_B @ ( k3_tmap_1 @ X1 @ sk_B @ sk_D @ X0 @ sk_E ) @ X2 )
      | ~ ( m1_subset_1 @ X2 @ ( u1_struct_0 @ X0 ) )
      | ~ ( m1_pre_topc @ sk_D @ X1 )
      | ( v2_struct_0 @ sk_D )
      | ~ ( l1_pre_topc @ X1 )
      | ~ ( v2_pre_topc @ X1 )
      | ( v2_struct_0 @ X1 ) ) ),
    inference(demod,[status(thm)],['25','26','27','28','29'])).

thf('31',plain,
    ( ! [X0: $i,X1: $i] :
        ( ( v2_struct_0 @ X0 )
        | ~ ( v2_pre_topc @ X0 )
        | ~ ( l1_pre_topc @ X0 )
        | ( v2_struct_0 @ sk_D )
        | ~ ( m1_pre_topc @ sk_D @ X0 )
        | ~ ( m1_subset_1 @ sk_H @ ( u1_struct_0 @ X1 ) )
        | ( r1_tmap_1 @ X1 @ sk_B @ ( k3_tmap_1 @ X0 @ sk_B @ sk_D @ X1 @ sk_E ) @ sk_H )
        | ~ ( m1_pre_topc @ X1 @ sk_D )
        | ~ ( m1_subset_1 @ sk_H @ ( u1_struct_0 @ sk_D ) )
        | ~ ( m1_pre_topc @ X1 @ X0 )
        | ( v2_struct_0 @ X1 )
        | ( v2_struct_0 @ sk_B ) )
   <= ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_G ) ),
    inference('sup-',[status(thm)],['21','30'])).

thf('32',plain,(
    m1_subset_1 @ sk_G @ ( u1_struct_0 @ sk_D ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('33',plain,(
    sk_G = sk_H ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('34',plain,(
    m1_subset_1 @ sk_H @ ( u1_struct_0 @ sk_D ) ),
    inference(demod,[status(thm)],['32','33'])).

thf('35',plain,
    ( ! [X0: $i,X1: $i] :
        ( ( v2_struct_0 @ X0 )
        | ~ ( v2_pre_topc @ X0 )
        | ~ ( l1_pre_topc @ X0 )
        | ( v2_struct_0 @ sk_D )
        | ~ ( m1_pre_topc @ sk_D @ X0 )
        | ~ ( m1_subset_1 @ sk_H @ ( u1_struct_0 @ X1 ) )
        | ( r1_tmap_1 @ X1 @ sk_B @ ( k3_tmap_1 @ X0 @ sk_B @ sk_D @ X1 @ sk_E ) @ sk_H )
        | ~ ( m1_pre_topc @ X1 @ sk_D )
        | ~ ( m1_pre_topc @ X1 @ X0 )
        | ( v2_struct_0 @ X1 )
        | ( v2_struct_0 @ sk_B ) )
   <= ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_G ) ),
    inference(demod,[status(thm)],['31','34'])).

thf('36',plain,
    ( ! [X0: $i] :
        ( ( v2_struct_0 @ sk_B )
        | ( v2_struct_0 @ sk_C )
        | ~ ( m1_pre_topc @ sk_C @ X0 )
        | ~ ( m1_pre_topc @ sk_C @ sk_D )
        | ( r1_tmap_1 @ sk_C @ sk_B @ ( k3_tmap_1 @ X0 @ sk_B @ sk_D @ sk_C @ sk_E ) @ sk_H )
        | ~ ( m1_pre_topc @ sk_D @ X0 )
        | ( v2_struct_0 @ sk_D )
        | ~ ( l1_pre_topc @ X0 )
        | ~ ( v2_pre_topc @ X0 )
        | ( v2_struct_0 @ X0 ) )
   <= ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_G ) ),
    inference('sup-',[status(thm)],['18','35'])).

thf('37',plain,(
    m1_pre_topc @ sk_C @ sk_D ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('38',plain,
    ( ! [X0: $i] :
        ( ( v2_struct_0 @ sk_B )
        | ( v2_struct_0 @ sk_C )
        | ~ ( m1_pre_topc @ sk_C @ X0 )
        | ( r1_tmap_1 @ sk_C @ sk_B @ ( k3_tmap_1 @ X0 @ sk_B @ sk_D @ sk_C @ sk_E ) @ sk_H )
        | ~ ( m1_pre_topc @ sk_D @ X0 )
        | ( v2_struct_0 @ sk_D )
        | ~ ( l1_pre_topc @ X0 )
        | ~ ( v2_pre_topc @ X0 )
        | ( v2_struct_0 @ X0 ) )
   <= ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_G ) ),
    inference(demod,[status(thm)],['36','37'])).

thf('39',plain,
    ( ( ( v2_struct_0 @ sk_A )
      | ~ ( v2_pre_topc @ sk_A )
      | ~ ( l1_pre_topc @ sk_A )
      | ( v2_struct_0 @ sk_D )
      | ~ ( m1_pre_topc @ sk_D @ sk_A )
      | ( r1_tmap_1 @ sk_C @ sk_B @ ( k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C @ sk_E ) @ sk_H )
      | ( v2_struct_0 @ sk_C )
      | ( v2_struct_0 @ sk_B ) )
   <= ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_G ) ),
    inference('sup-',[status(thm)],['17','38'])).

thf('40',plain,(
    v2_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('41',plain,(
    l1_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('42',plain,(
    m1_pre_topc @ sk_D @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('43',plain,
    ( ( ( v2_struct_0 @ sk_A )
      | ( v2_struct_0 @ sk_D )
      | ( r1_tmap_1 @ sk_C @ sk_B @ ( k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C @ sk_E ) @ sk_H )
      | ( v2_struct_0 @ sk_C )
      | ( v2_struct_0 @ sk_B ) )
   <= ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_G ) ),
    inference(demod,[status(thm)],['39','40','41','42'])).

thf('44',plain,
    ( ~ ( r1_tmap_1 @ sk_C @ sk_B @ ( k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C @ sk_E ) @ sk_H )
   <= ~ ( r1_tmap_1 @ sk_C @ sk_B @ ( k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C @ sk_E ) @ sk_H ) ),
    inference(split,[status(esa)],['12'])).

thf('45',plain,
    ( ( ( v2_struct_0 @ sk_B )
      | ( v2_struct_0 @ sk_C )
      | ( v2_struct_0 @ sk_D )
      | ( v2_struct_0 @ sk_A ) )
   <= ( ~ ( r1_tmap_1 @ sk_C @ sk_B @ ( k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C @ sk_E ) @ sk_H )
      & ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_G ) ) ),
    inference('sup-',[status(thm)],['43','44'])).

thf('46',plain,(
    ~ ( v2_struct_0 @ sk_D ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('47',plain,
    ( ( ( v2_struct_0 @ sk_A )
      | ( v2_struct_0 @ sk_C )
      | ( v2_struct_0 @ sk_B ) )
   <= ( ~ ( r1_tmap_1 @ sk_C @ sk_B @ ( k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C @ sk_E ) @ sk_H )
      & ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_G ) ) ),
    inference('sup-',[status(thm)],['45','46'])).

thf('48',plain,(
    ~ ( v2_struct_0 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('49',plain,
    ( ( ( v2_struct_0 @ sk_B )
      | ( v2_struct_0 @ sk_C ) )
   <= ( ~ ( r1_tmap_1 @ sk_C @ sk_B @ ( k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C @ sk_E ) @ sk_H )
      & ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_G ) ) ),
    inference(clc,[status(thm)],['47','48'])).

thf('50',plain,(
    ~ ( v2_struct_0 @ sk_B ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('51',plain,
    ( ( v2_struct_0 @ sk_C )
   <= ( ~ ( r1_tmap_1 @ sk_C @ sk_B @ ( k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C @ sk_E ) @ sk_H )
      & ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_G ) ) ),
    inference(clc,[status(thm)],['49','50'])).

thf('52',plain,(
    ~ ( v2_struct_0 @ sk_C ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('53',plain,
    ( ( r1_tmap_1 @ sk_C @ sk_B @ ( k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C @ sk_E ) @ sk_H )
    | ~ ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_G ) ),
    inference('sup-',[status(thm)],['51','52'])).

thf('54',plain,
    ( ( r1_tmap_1 @ sk_C @ sk_B @ ( k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C @ sk_E ) @ sk_H )
    | ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H ) ),
    inference(split,[status(esa)],['10'])).

thf('55',plain,(
    r1_tmap_1 @ sk_C @ sk_B @ ( k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C @ sk_E ) @ sk_H ),
    inference('sat_resolution*',[status(thm)],['7','16','53','54'])).

thf('56',plain,(
    r1_tmap_1 @ sk_C @ sk_B @ ( k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C @ sk_E ) @ sk_H ),
    inference(simpl_trail,[status(thm)],['3','55'])).

thf('57',plain,(
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

thf('58',plain,(
    ! [X14: $i,X15: $i,X16: $i,X17: $i,X18: $i,X19: $i,X20: $i,X21: $i] :
      ( ( v2_struct_0 @ X14 )
      | ~ ( v2_pre_topc @ X14 )
      | ~ ( l1_pre_topc @ X14 )
      | ( v2_struct_0 @ X15 )
      | ~ ( m1_pre_topc @ X15 @ X16 )
      | ~ ( m1_pre_topc @ X17 @ X15 )
      | ~ ( m1_subset_1 @ X18 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X15 ) ) )
      | ~ ( m1_subset_1 @ X19 @ ( u1_struct_0 @ X17 ) )
      | ~ ( r1_tmap_1 @ X17 @ X14 @ ( k3_tmap_1 @ X16 @ X14 @ X15 @ X17 @ X20 ) @ X19 )
      | ( r1_tmap_1 @ X15 @ X14 @ X20 @ X21 )
      | ( X21 != X19 )
      | ~ ( m1_connsp_2 @ X18 @ X15 @ X21 )
      | ~ ( r1_tarski @ X18 @ ( u1_struct_0 @ X17 ) )
      | ~ ( m1_subset_1 @ X21 @ ( u1_struct_0 @ X15 ) )
      | ~ ( m1_subset_1 @ X20 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( u1_struct_0 @ X15 ) @ ( u1_struct_0 @ X14 ) ) ) )
      | ~ ( v1_funct_2 @ X20 @ ( u1_struct_0 @ X15 ) @ ( u1_struct_0 @ X14 ) )
      | ~ ( v1_funct_1 @ X20 )
      | ~ ( m1_pre_topc @ X17 @ X16 )
      | ( v2_struct_0 @ X17 )
      | ~ ( l1_pre_topc @ X16 )
      | ~ ( v2_pre_topc @ X16 )
      | ( v2_struct_0 @ X16 ) ) ),
    inference(cnf,[status(esa)],[t83_tmap_1])).

thf('59',plain,(
    ! [X14: $i,X15: $i,X16: $i,X17: $i,X18: $i,X19: $i,X20: $i] :
      ( ( v2_struct_0 @ X16 )
      | ~ ( v2_pre_topc @ X16 )
      | ~ ( l1_pre_topc @ X16 )
      | ( v2_struct_0 @ X17 )
      | ~ ( m1_pre_topc @ X17 @ X16 )
      | ~ ( v1_funct_1 @ X20 )
      | ~ ( v1_funct_2 @ X20 @ ( u1_struct_0 @ X15 ) @ ( u1_struct_0 @ X14 ) )
      | ~ ( m1_subset_1 @ X20 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( u1_struct_0 @ X15 ) @ ( u1_struct_0 @ X14 ) ) ) )
      | ~ ( m1_subset_1 @ X19 @ ( u1_struct_0 @ X15 ) )
      | ~ ( r1_tarski @ X18 @ ( u1_struct_0 @ X17 ) )
      | ~ ( m1_connsp_2 @ X18 @ X15 @ X19 )
      | ( r1_tmap_1 @ X15 @ X14 @ X20 @ X19 )
      | ~ ( r1_tmap_1 @ X17 @ X14 @ ( k3_tmap_1 @ X16 @ X14 @ X15 @ X17 @ X20 ) @ X19 )
      | ~ ( m1_subset_1 @ X19 @ ( u1_struct_0 @ X17 ) )
      | ~ ( m1_subset_1 @ X18 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X15 ) ) )
      | ~ ( m1_pre_topc @ X17 @ X15 )
      | ~ ( m1_pre_topc @ X15 @ X16 )
      | ( v2_struct_0 @ X15 )
      | ~ ( l1_pre_topc @ X14 )
      | ~ ( v2_pre_topc @ X14 )
      | ( v2_struct_0 @ X14 ) ) ),
    inference(simplify,[status(thm)],['58'])).

thf('60',plain,(
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
    inference('sup-',[status(thm)],['57','59'])).

thf('61',plain,(
    v2_pre_topc @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('62',plain,(
    l1_pre_topc @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('63',plain,(
    v1_funct_2 @ sk_E @ ( u1_struct_0 @ sk_D ) @ ( u1_struct_0 @ sk_B ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('64',plain,(
    v1_funct_1 @ sk_E ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('65',plain,(
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
    inference(demod,[status(thm)],['60','61','62','63','64'])).

thf('66',plain,(
    ! [X0: $i] :
      ( ( v2_struct_0 @ sk_A )
      | ~ ( v2_pre_topc @ sk_A )
      | ~ ( l1_pre_topc @ sk_A )
      | ( v2_struct_0 @ sk_C )
      | ~ ( m1_pre_topc @ sk_C @ sk_A )
      | ~ ( m1_subset_1 @ sk_H @ ( u1_struct_0 @ sk_D ) )
      | ~ ( r1_tarski @ X0 @ ( u1_struct_0 @ sk_C ) )
      | ~ ( m1_connsp_2 @ X0 @ sk_D @ sk_H )
      | ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H )
      | ~ ( m1_subset_1 @ sk_H @ ( u1_struct_0 @ sk_C ) )
      | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_D ) ) )
      | ~ ( m1_pre_topc @ sk_C @ sk_D )
      | ~ ( m1_pre_topc @ sk_D @ sk_A )
      | ( v2_struct_0 @ sk_D )
      | ( v2_struct_0 @ sk_B ) ) ),
    inference('sup-',[status(thm)],['56','65'])).

thf('67',plain,(
    v2_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('68',plain,(
    l1_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('69',plain,(
    m1_pre_topc @ sk_C @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('70',plain,(
    m1_subset_1 @ sk_H @ ( u1_struct_0 @ sk_D ) ),
    inference(demod,[status(thm)],['32','33'])).

thf('71',plain,(
    m1_subset_1 @ sk_H @ ( u1_struct_0 @ sk_C ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('72',plain,(
    m1_pre_topc @ sk_C @ sk_D ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('73',plain,(
    m1_pre_topc @ sk_D @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('74',plain,(
    ! [X0: $i] :
      ( ( v2_struct_0 @ sk_A )
      | ( v2_struct_0 @ sk_C )
      | ~ ( r1_tarski @ X0 @ ( u1_struct_0 @ sk_C ) )
      | ~ ( m1_connsp_2 @ X0 @ sk_D @ sk_H )
      | ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H )
      | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_D ) ) )
      | ( v2_struct_0 @ sk_D )
      | ( v2_struct_0 @ sk_B ) ) ),
    inference(demod,[status(thm)],['66','67','68','69','70','71','72','73'])).

thf('75',plain,
    ( ( v2_struct_0 @ sk_B )
    | ( v2_struct_0 @ sk_D )
    | ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H )
    | ~ ( m1_connsp_2 @ sk_F @ sk_D @ sk_H )
    | ~ ( r1_tarski @ sk_F @ ( u1_struct_0 @ sk_C ) )
    | ( v2_struct_0 @ sk_C )
    | ( v2_struct_0 @ sk_A ) ),
    inference('sup-',[status(thm)],['1','74'])).

thf('76',plain,(
    m1_subset_1 @ sk_H @ ( u1_struct_0 @ sk_D ) ),
    inference(demod,[status(thm)],['32','33'])).

thf('77',plain,(
    m1_subset_1 @ sk_F @ ( k1_zfmisc_1 @ ( u1_struct_0 @ sk_D ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

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

thf('78',plain,(
    ! [X4: $i,X5: $i,X6: $i] :
      ( ~ ( m1_subset_1 @ X4 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X5 ) ) )
      | ~ ( v3_pre_topc @ X4 @ X5 )
      | ~ ( r2_hidden @ X6 @ X4 )
      | ( m1_connsp_2 @ X4 @ X5 @ X6 )
      | ~ ( m1_subset_1 @ X6 @ ( u1_struct_0 @ X5 ) )
      | ~ ( l1_pre_topc @ X5 )
      | ~ ( v2_pre_topc @ X5 )
      | ( v2_struct_0 @ X5 ) ) ),
    inference(cnf,[status(esa)],[t5_connsp_2])).

thf('79',plain,(
    ! [X0: $i] :
      ( ( v2_struct_0 @ sk_D )
      | ~ ( v2_pre_topc @ sk_D )
      | ~ ( l1_pre_topc @ sk_D )
      | ~ ( m1_subset_1 @ X0 @ ( u1_struct_0 @ sk_D ) )
      | ( m1_connsp_2 @ sk_F @ sk_D @ X0 )
      | ~ ( r2_hidden @ X0 @ sk_F )
      | ~ ( v3_pre_topc @ sk_F @ sk_D ) ) ),
    inference('sup-',[status(thm)],['77','78'])).

thf('80',plain,(
    m1_pre_topc @ sk_D @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(cc1_pre_topc,axiom,(
    ! [A: $i] :
      ( ( ( v2_pre_topc @ A )
        & ( l1_pre_topc @ A ) )
     => ! [B: $i] :
          ( ( m1_pre_topc @ B @ A )
         => ( v2_pre_topc @ B ) ) ) )).

thf('81',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( m1_pre_topc @ X0 @ X1 )
      | ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X1 )
      | ~ ( v2_pre_topc @ X1 ) ) ),
    inference(cnf,[status(esa)],[cc1_pre_topc])).

thf('82',plain,
    ( ~ ( v2_pre_topc @ sk_A )
    | ~ ( l1_pre_topc @ sk_A )
    | ( v2_pre_topc @ sk_D ) ),
    inference('sup-',[status(thm)],['80','81'])).

thf('83',plain,(
    v2_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('84',plain,(
    l1_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('85',plain,(
    v2_pre_topc @ sk_D ),
    inference(demod,[status(thm)],['82','83','84'])).

thf('86',plain,(
    m1_pre_topc @ sk_D @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(dt_m1_pre_topc,axiom,(
    ! [A: $i] :
      ( ( l1_pre_topc @ A )
     => ! [B: $i] :
          ( ( m1_pre_topc @ B @ A )
         => ( l1_pre_topc @ B ) ) ) )).

thf('87',plain,(
    ! [X2: $i,X3: $i] :
      ( ~ ( m1_pre_topc @ X2 @ X3 )
      | ( l1_pre_topc @ X2 )
      | ~ ( l1_pre_topc @ X3 ) ) ),
    inference(cnf,[status(esa)],[dt_m1_pre_topc])).

thf('88',plain,
    ( ~ ( l1_pre_topc @ sk_A )
    | ( l1_pre_topc @ sk_D ) ),
    inference('sup-',[status(thm)],['86','87'])).

thf('89',plain,(
    l1_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('90',plain,(
    l1_pre_topc @ sk_D ),
    inference(demod,[status(thm)],['88','89'])).

thf('91',plain,(
    v3_pre_topc @ sk_F @ sk_D ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('92',plain,(
    ! [X0: $i] :
      ( ( v2_struct_0 @ sk_D )
      | ~ ( m1_subset_1 @ X0 @ ( u1_struct_0 @ sk_D ) )
      | ( m1_connsp_2 @ sk_F @ sk_D @ X0 )
      | ~ ( r2_hidden @ X0 @ sk_F ) ) ),
    inference(demod,[status(thm)],['79','85','90','91'])).

thf('93',plain,
    ( ~ ( r2_hidden @ sk_H @ sk_F )
    | ( m1_connsp_2 @ sk_F @ sk_D @ sk_H )
    | ( v2_struct_0 @ sk_D ) ),
    inference('sup-',[status(thm)],['76','92'])).

thf('94',plain,(
    r2_hidden @ sk_G @ sk_F ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('95',plain,(
    sk_G = sk_H ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('96',plain,(
    r2_hidden @ sk_H @ sk_F ),
    inference(demod,[status(thm)],['94','95'])).

thf('97',plain,
    ( ( m1_connsp_2 @ sk_F @ sk_D @ sk_H )
    | ( v2_struct_0 @ sk_D ) ),
    inference(demod,[status(thm)],['93','96'])).

thf('98',plain,(
    ~ ( v2_struct_0 @ sk_D ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('99',plain,(
    m1_connsp_2 @ sk_F @ sk_D @ sk_H ),
    inference(clc,[status(thm)],['97','98'])).

thf('100',plain,(
    r1_tarski @ sk_F @ ( u1_struct_0 @ sk_C ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('101',plain,
    ( ( v2_struct_0 @ sk_B )
    | ( v2_struct_0 @ sk_D )
    | ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H )
    | ( v2_struct_0 @ sk_C )
    | ( v2_struct_0 @ sk_A ) ),
    inference(demod,[status(thm)],['75','99','100'])).

thf('102',plain,
    ( ~ ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H )
   <= ~ ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_G ) ),
    inference(demod,[status(thm)],['13','14'])).

thf('103',plain,
    ( ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H )
   <= ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_G ) ),
    inference(demod,[status(thm)],['19','20'])).

thf('104',plain,
    ( ~ ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H )
   <= ~ ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H ) ),
    inference(split,[status(esa)],['6'])).

thf('105',plain,
    ( ~ ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_G )
    | ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H ) ),
    inference('sup-',[status(thm)],['103','104'])).

thf('106',plain,(
    ~ ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_G ) ),
    inference('sat_resolution*',[status(thm)],['7','16','53','105'])).

thf('107',plain,(
    ~ ( r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H ) ),
    inference(simpl_trail,[status(thm)],['102','106'])).

thf('108',plain,
    ( ( v2_struct_0 @ sk_A )
    | ( v2_struct_0 @ sk_C )
    | ( v2_struct_0 @ sk_D )
    | ( v2_struct_0 @ sk_B ) ),
    inference('sup-',[status(thm)],['101','107'])).

thf('109',plain,(
    ~ ( v2_struct_0 @ sk_D ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('110',plain,
    ( ( v2_struct_0 @ sk_B )
    | ( v2_struct_0 @ sk_C )
    | ( v2_struct_0 @ sk_A ) ),
    inference('sup-',[status(thm)],['108','109'])).

thf('111',plain,(
    ~ ( v2_struct_0 @ sk_B ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('112',plain,
    ( ( v2_struct_0 @ sk_A )
    | ( v2_struct_0 @ sk_C ) ),
    inference(clc,[status(thm)],['110','111'])).

thf('113',plain,(
    ~ ( v2_struct_0 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('114',plain,(
    v2_struct_0 @ sk_C ),
    inference(clc,[status(thm)],['112','113'])).

thf('115',plain,(
    $false ),
    inference(demod,[status(thm)],['0','114'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.2DuFRqmaLO
% 0.13/0.34  % Computer   : n014.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 17:46:22 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running portfolio for 600 s
% 0.13/0.34  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.13/0.35  % Number of cores: 8
% 0.13/0.35  % Python version: Python 3.6.8
% 0.13/0.35  % Running in FO mode
% 0.21/0.50  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.21/0.50  % Solved by: fo/fo7.sh
% 0.21/0.50  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.21/0.50  % done 58 iterations in 0.039s
% 0.21/0.50  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.21/0.50  % SZS output start Refutation
% 0.21/0.50  thf(k1_zfmisc_1_type, type, k1_zfmisc_1: $i > $i).
% 0.21/0.50  thf(u1_struct_0_type, type, u1_struct_0: $i > $i).
% 0.21/0.50  thf(m1_pre_topc_type, type, m1_pre_topc: $i > $i > $o).
% 0.21/0.50  thf(k3_tmap_1_type, type, k3_tmap_1: $i > $i > $i > $i > $i > $i).
% 0.21/0.50  thf(m1_connsp_2_type, type, m1_connsp_2: $i > $i > $i > $o).
% 0.21/0.50  thf(r1_tmap_1_type, type, r1_tmap_1: $i > $i > $i > $i > $o).
% 0.21/0.50  thf(v2_pre_topc_type, type, v2_pre_topc: $i > $o).
% 0.21/0.50  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.21/0.50  thf(v1_funct_1_type, type, v1_funct_1: $i > $o).
% 0.21/0.50  thf(sk_B_type, type, sk_B: $i).
% 0.21/0.50  thf(sk_F_type, type, sk_F: $i).
% 0.21/0.50  thf(sk_A_type, type, sk_A: $i).
% 0.21/0.50  thf(v1_funct_2_type, type, v1_funct_2: $i > $i > $i > $o).
% 0.21/0.50  thf(sk_E_type, type, sk_E: $i).
% 0.21/0.50  thf(l1_pre_topc_type, type, l1_pre_topc: $i > $o).
% 0.21/0.50  thf(k2_zfmisc_1_type, type, k2_zfmisc_1: $i > $i > $i).
% 0.21/0.50  thf(m1_subset_1_type, type, m1_subset_1: $i > $i > $o).
% 0.21/0.50  thf(sk_G_type, type, sk_G: $i).
% 0.21/0.50  thf(sk_C_type, type, sk_C: $i).
% 0.21/0.50  thf(v3_pre_topc_type, type, v3_pre_topc: $i > $i > $o).
% 0.21/0.50  thf(sk_H_type, type, sk_H: $i).
% 0.21/0.50  thf(v2_struct_0_type, type, v2_struct_0: $i > $o).
% 0.21/0.50  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.21/0.50  thf(sk_D_type, type, sk_D: $i).
% 0.21/0.50  thf(t84_tmap_1, conjecture,
% 0.21/0.50    (![A:$i]:
% 0.21/0.50     ( ( ( ~( v2_struct_0 @ A ) ) & ( v2_pre_topc @ A ) & ( l1_pre_topc @ A ) ) =>
% 0.21/0.50       ( ![B:$i]:
% 0.21/0.50         ( ( ( ~( v2_struct_0 @ B ) ) & ( v2_pre_topc @ B ) & 
% 0.21/0.50             ( l1_pre_topc @ B ) ) =>
% 0.21/0.50           ( ![C:$i]:
% 0.21/0.50             ( ( ( ~( v2_struct_0 @ C ) ) & ( m1_pre_topc @ C @ A ) ) =>
% 0.21/0.50               ( ![D:$i]:
% 0.21/0.50                 ( ( ( ~( v2_struct_0 @ D ) ) & ( m1_pre_topc @ D @ A ) ) =>
% 0.21/0.50                   ( ![E:$i]:
% 0.21/0.50                     ( ( ( v1_funct_1 @ E ) & 
% 0.21/0.50                         ( v1_funct_2 @
% 0.21/0.50                           E @ ( u1_struct_0 @ D ) @ ( u1_struct_0 @ B ) ) & 
% 0.21/0.50                         ( m1_subset_1 @
% 0.21/0.50                           E @ 
% 0.21/0.50                           ( k1_zfmisc_1 @
% 0.21/0.50                             ( k2_zfmisc_1 @
% 0.21/0.50                               ( u1_struct_0 @ D ) @ ( u1_struct_0 @ B ) ) ) ) ) =>
% 0.21/0.50                       ( ( m1_pre_topc @ C @ D ) =>
% 0.21/0.50                         ( ![F:$i]:
% 0.21/0.50                           ( ( m1_subset_1 @
% 0.21/0.50                               F @ ( k1_zfmisc_1 @ ( u1_struct_0 @ D ) ) ) =>
% 0.21/0.50                             ( ![G:$i]:
% 0.21/0.50                               ( ( m1_subset_1 @ G @ ( u1_struct_0 @ D ) ) =>
% 0.21/0.50                                 ( ![H:$i]:
% 0.21/0.50                                   ( ( m1_subset_1 @ H @ ( u1_struct_0 @ C ) ) =>
% 0.21/0.50                                     ( ( ( v3_pre_topc @ F @ D ) & 
% 0.21/0.50                                         ( r2_hidden @ G @ F ) & 
% 0.21/0.50                                         ( r1_tarski @ F @ ( u1_struct_0 @ C ) ) & 
% 0.21/0.50                                         ( ( G ) = ( H ) ) ) =>
% 0.21/0.50                                       ( ( r1_tmap_1 @ D @ B @ E @ G ) <=>
% 0.21/0.50                                         ( r1_tmap_1 @
% 0.21/0.50                                           C @ B @ 
% 0.21/0.50                                           ( k3_tmap_1 @ A @ B @ D @ C @ E ) @ 
% 0.21/0.50                                           H ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ))).
% 0.21/0.50  thf(zf_stmt_0, negated_conjecture,
% 0.21/0.50    (~( ![A:$i]:
% 0.21/0.50        ( ( ( ~( v2_struct_0 @ A ) ) & ( v2_pre_topc @ A ) & 
% 0.21/0.50            ( l1_pre_topc @ A ) ) =>
% 0.21/0.50          ( ![B:$i]:
% 0.21/0.50            ( ( ( ~( v2_struct_0 @ B ) ) & ( v2_pre_topc @ B ) & 
% 0.21/0.50                ( l1_pre_topc @ B ) ) =>
% 0.21/0.50              ( ![C:$i]:
% 0.21/0.50                ( ( ( ~( v2_struct_0 @ C ) ) & ( m1_pre_topc @ C @ A ) ) =>
% 0.21/0.50                  ( ![D:$i]:
% 0.21/0.50                    ( ( ( ~( v2_struct_0 @ D ) ) & ( m1_pre_topc @ D @ A ) ) =>
% 0.21/0.50                      ( ![E:$i]:
% 0.21/0.50                        ( ( ( v1_funct_1 @ E ) & 
% 0.21/0.50                            ( v1_funct_2 @
% 0.21/0.50                              E @ ( u1_struct_0 @ D ) @ ( u1_struct_0 @ B ) ) & 
% 0.21/0.50                            ( m1_subset_1 @
% 0.21/0.50                              E @ 
% 0.21/0.50                              ( k1_zfmisc_1 @
% 0.21/0.50                                ( k2_zfmisc_1 @
% 0.21/0.50                                  ( u1_struct_0 @ D ) @ ( u1_struct_0 @ B ) ) ) ) ) =>
% 0.21/0.50                          ( ( m1_pre_topc @ C @ D ) =>
% 0.21/0.50                            ( ![F:$i]:
% 0.21/0.50                              ( ( m1_subset_1 @
% 0.21/0.50                                  F @ ( k1_zfmisc_1 @ ( u1_struct_0 @ D ) ) ) =>
% 0.21/0.50                                ( ![G:$i]:
% 0.21/0.50                                  ( ( m1_subset_1 @ G @ ( u1_struct_0 @ D ) ) =>
% 0.21/0.50                                    ( ![H:$i]:
% 0.21/0.50                                      ( ( m1_subset_1 @ H @ ( u1_struct_0 @ C ) ) =>
% 0.21/0.50                                        ( ( ( v3_pre_topc @ F @ D ) & 
% 0.21/0.50                                            ( r2_hidden @ G @ F ) & 
% 0.21/0.50                                            ( r1_tarski @
% 0.21/0.50                                              F @ ( u1_struct_0 @ C ) ) & 
% 0.21/0.50                                            ( ( G ) = ( H ) ) ) =>
% 0.21/0.50                                          ( ( r1_tmap_1 @ D @ B @ E @ G ) <=>
% 0.21/0.50                                            ( r1_tmap_1 @
% 0.21/0.50                                              C @ B @ 
% 0.21/0.50                                              ( k3_tmap_1 @ A @ B @ D @ C @ E ) @ 
% 0.21/0.50                                              H ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )),
% 0.21/0.50    inference('cnf.neg', [status(esa)], [t84_tmap_1])).
% 0.21/0.50  thf('0', plain, (~ (v2_struct_0 @ sk_C)),
% 0.21/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.50  thf('1', plain,
% 0.21/0.50      ((m1_subset_1 @ sk_F @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_D)))),
% 0.21/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.50  thf('2', plain,
% 0.21/0.50      (((r1_tmap_1 @ sk_C @ sk_B @ 
% 0.21/0.50         (k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C @ sk_E) @ sk_H)
% 0.21/0.50        | (r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_G))),
% 0.21/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.50  thf('3', plain,
% 0.21/0.50      (((r1_tmap_1 @ sk_C @ sk_B @ 
% 0.21/0.50         (k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C @ sk_E) @ sk_H))
% 0.21/0.50         <= (((r1_tmap_1 @ sk_C @ sk_B @ 
% 0.21/0.50               (k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C @ sk_E) @ sk_H)))),
% 0.21/0.50      inference('split', [status(esa)], ['2'])).
% 0.21/0.50  thf('4', plain,
% 0.21/0.50      ((~ (r1_tmap_1 @ sk_C @ sk_B @ 
% 0.21/0.50           (k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C @ sk_E) @ sk_H)
% 0.21/0.50        | ~ (r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_G))),
% 0.21/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.50  thf('5', plain, (((sk_G) = (sk_H))),
% 0.21/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.50  thf('6', plain,
% 0.21/0.50      ((~ (r1_tmap_1 @ sk_C @ sk_B @ 
% 0.21/0.50           (k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C @ sk_E) @ sk_H)
% 0.21/0.50        | ~ (r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H))),
% 0.21/0.50      inference('demod', [status(thm)], ['4', '5'])).
% 0.21/0.50  thf('7', plain,
% 0.21/0.50      (~ ((r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H)) | 
% 0.21/0.50       ~
% 0.21/0.50       ((r1_tmap_1 @ sk_C @ sk_B @ 
% 0.21/0.50         (k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C @ sk_E) @ sk_H))),
% 0.21/0.50      inference('split', [status(esa)], ['6'])).
% 0.21/0.50  thf('8', plain,
% 0.21/0.50      (((r1_tmap_1 @ sk_C @ sk_B @ 
% 0.21/0.50         (k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C @ sk_E) @ sk_H)
% 0.21/0.50        | (r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_G))),
% 0.21/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.50  thf('9', plain, (((sk_G) = (sk_H))),
% 0.21/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.50  thf('10', plain,
% 0.21/0.50      (((r1_tmap_1 @ sk_C @ sk_B @ 
% 0.21/0.50         (k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C @ sk_E) @ sk_H)
% 0.21/0.50        | (r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H))),
% 0.21/0.50      inference('demod', [status(thm)], ['8', '9'])).
% 0.21/0.50  thf('11', plain,
% 0.21/0.50      (((r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H))
% 0.21/0.50         <= (((r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H)))),
% 0.21/0.50      inference('split', [status(esa)], ['10'])).
% 0.21/0.50  thf('12', plain,
% 0.21/0.50      ((~ (r1_tmap_1 @ sk_C @ sk_B @ 
% 0.21/0.50           (k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C @ sk_E) @ sk_H)
% 0.21/0.50        | ~ (r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_G))),
% 0.21/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.50  thf('13', plain,
% 0.21/0.50      ((~ (r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_G))
% 0.21/0.50         <= (~ ((r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_G)))),
% 0.21/0.50      inference('split', [status(esa)], ['12'])).
% 0.21/0.50  thf('14', plain, (((sk_G) = (sk_H))),
% 0.21/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.50  thf('15', plain,
% 0.21/0.50      ((~ (r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H))
% 0.21/0.50         <= (~ ((r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_G)))),
% 0.21/0.50      inference('demod', [status(thm)], ['13', '14'])).
% 0.21/0.50  thf('16', plain,
% 0.21/0.50      (~ ((r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H)) | 
% 0.21/0.50       ((r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_G))),
% 0.21/0.50      inference('sup-', [status(thm)], ['11', '15'])).
% 0.21/0.50  thf('17', plain, ((m1_pre_topc @ sk_C @ sk_A)),
% 0.21/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.50  thf('18', plain, ((m1_subset_1 @ sk_H @ (u1_struct_0 @ sk_C))),
% 0.21/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.50  thf('19', plain,
% 0.21/0.50      (((r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_G))
% 0.21/0.50         <= (((r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_G)))),
% 0.21/0.50      inference('split', [status(esa)], ['2'])).
% 0.21/0.50  thf('20', plain, (((sk_G) = (sk_H))),
% 0.21/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.50  thf('21', plain,
% 0.21/0.50      (((r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H))
% 0.21/0.50         <= (((r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_G)))),
% 0.21/0.50      inference('demod', [status(thm)], ['19', '20'])).
% 0.21/0.50  thf('22', plain,
% 0.21/0.50      ((m1_subset_1 @ sk_E @ 
% 0.21/0.50        (k1_zfmisc_1 @ 
% 0.21/0.50         (k2_zfmisc_1 @ (u1_struct_0 @ sk_D) @ (u1_struct_0 @ sk_B))))),
% 0.21/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.50  thf(t81_tmap_1, axiom,
% 0.21/0.50    (![A:$i]:
% 0.21/0.50     ( ( ( ~( v2_struct_0 @ A ) ) & ( v2_pre_topc @ A ) & ( l1_pre_topc @ A ) ) =>
% 0.21/0.50       ( ![B:$i]:
% 0.21/0.50         ( ( ( ~( v2_struct_0 @ B ) ) & ( v2_pre_topc @ B ) & 
% 0.21/0.50             ( l1_pre_topc @ B ) ) =>
% 0.21/0.50           ( ![C:$i]:
% 0.21/0.50             ( ( ( ~( v2_struct_0 @ C ) ) & ( m1_pre_topc @ C @ A ) ) =>
% 0.21/0.50               ( ![D:$i]:
% 0.21/0.50                 ( ( ( ~( v2_struct_0 @ D ) ) & ( m1_pre_topc @ D @ A ) ) =>
% 0.21/0.50                   ( ![E:$i]:
% 0.21/0.50                     ( ( ( v1_funct_1 @ E ) & 
% 0.21/0.50                         ( v1_funct_2 @
% 0.21/0.50                           E @ ( u1_struct_0 @ C ) @ ( u1_struct_0 @ B ) ) & 
% 0.21/0.50                         ( m1_subset_1 @
% 0.21/0.50                           E @ 
% 0.21/0.50                           ( k1_zfmisc_1 @
% 0.21/0.50                             ( k2_zfmisc_1 @
% 0.21/0.50                               ( u1_struct_0 @ C ) @ ( u1_struct_0 @ B ) ) ) ) ) =>
% 0.21/0.50                       ( ![F:$i]:
% 0.21/0.50                         ( ( m1_subset_1 @ F @ ( u1_struct_0 @ C ) ) =>
% 0.21/0.50                           ( ![G:$i]:
% 0.21/0.50                             ( ( m1_subset_1 @ G @ ( u1_struct_0 @ D ) ) =>
% 0.21/0.50                               ( ( ( ( F ) = ( G ) ) & 
% 0.21/0.50                                   ( m1_pre_topc @ D @ C ) & 
% 0.21/0.50                                   ( r1_tmap_1 @ C @ B @ E @ F ) ) =>
% 0.21/0.50                                 ( r1_tmap_1 @
% 0.21/0.50                                   D @ B @ ( k3_tmap_1 @ A @ B @ C @ D @ E ) @ 
% 0.21/0.50                                   G ) ) ) ) ) ) ) ) ) ) ) ) ) ) ))).
% 0.21/0.50  thf('23', plain,
% 0.21/0.50      (![X7 : $i, X8 : $i, X9 : $i, X10 : $i, X11 : $i, X12 : $i, X13 : $i]:
% 0.21/0.50         ((v2_struct_0 @ X7)
% 0.21/0.50          | ~ (v2_pre_topc @ X7)
% 0.21/0.50          | ~ (l1_pre_topc @ X7)
% 0.21/0.50          | (v2_struct_0 @ X8)
% 0.21/0.50          | ~ (m1_pre_topc @ X8 @ X9)
% 0.21/0.50          | ~ (m1_subset_1 @ X10 @ (u1_struct_0 @ X11))
% 0.21/0.50          | ~ (m1_pre_topc @ X8 @ X11)
% 0.21/0.50          | ~ (r1_tmap_1 @ X11 @ X7 @ X12 @ X10)
% 0.21/0.50          | ((X10) != (X13))
% 0.21/0.50          | (r1_tmap_1 @ X8 @ X7 @ (k3_tmap_1 @ X9 @ X7 @ X11 @ X8 @ X12) @ X13)
% 0.21/0.50          | ~ (m1_subset_1 @ X13 @ (u1_struct_0 @ X8))
% 0.21/0.50          | ~ (m1_subset_1 @ X12 @ 
% 0.21/0.50               (k1_zfmisc_1 @ 
% 0.21/0.50                (k2_zfmisc_1 @ (u1_struct_0 @ X11) @ (u1_struct_0 @ X7))))
% 0.21/0.50          | ~ (v1_funct_2 @ X12 @ (u1_struct_0 @ X11) @ (u1_struct_0 @ X7))
% 0.21/0.50          | ~ (v1_funct_1 @ X12)
% 0.21/0.50          | ~ (m1_pre_topc @ X11 @ X9)
% 0.21/0.50          | (v2_struct_0 @ X11)
% 0.21/0.50          | ~ (l1_pre_topc @ X9)
% 0.21/0.50          | ~ (v2_pre_topc @ X9)
% 0.21/0.50          | (v2_struct_0 @ X9))),
% 0.21/0.50      inference('cnf', [status(esa)], [t81_tmap_1])).
% 0.21/0.50  thf('24', plain,
% 0.21/0.50      (![X7 : $i, X8 : $i, X9 : $i, X11 : $i, X12 : $i, X13 : $i]:
% 0.21/0.50         ((v2_struct_0 @ X9)
% 0.21/0.50          | ~ (v2_pre_topc @ X9)
% 0.21/0.50          | ~ (l1_pre_topc @ X9)
% 0.21/0.50          | (v2_struct_0 @ X11)
% 0.21/0.50          | ~ (m1_pre_topc @ X11 @ X9)
% 0.21/0.50          | ~ (v1_funct_1 @ X12)
% 0.21/0.50          | ~ (v1_funct_2 @ X12 @ (u1_struct_0 @ X11) @ (u1_struct_0 @ X7))
% 0.21/0.50          | ~ (m1_subset_1 @ X12 @ 
% 0.21/0.50               (k1_zfmisc_1 @ 
% 0.21/0.50                (k2_zfmisc_1 @ (u1_struct_0 @ X11) @ (u1_struct_0 @ X7))))
% 0.21/0.50          | ~ (m1_subset_1 @ X13 @ (u1_struct_0 @ X8))
% 0.21/0.50          | (r1_tmap_1 @ X8 @ X7 @ (k3_tmap_1 @ X9 @ X7 @ X11 @ X8 @ X12) @ X13)
% 0.21/0.50          | ~ (r1_tmap_1 @ X11 @ X7 @ X12 @ X13)
% 0.21/0.50          | ~ (m1_pre_topc @ X8 @ X11)
% 0.21/0.50          | ~ (m1_subset_1 @ X13 @ (u1_struct_0 @ X11))
% 0.21/0.50          | ~ (m1_pre_topc @ X8 @ X9)
% 0.21/0.50          | (v2_struct_0 @ X8)
% 0.21/0.50          | ~ (l1_pre_topc @ X7)
% 0.21/0.50          | ~ (v2_pre_topc @ X7)
% 0.21/0.50          | (v2_struct_0 @ X7))),
% 0.21/0.50      inference('simplify', [status(thm)], ['23'])).
% 0.21/0.50  thf('25', plain,
% 0.21/0.50      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.21/0.50         ((v2_struct_0 @ sk_B)
% 0.21/0.50          | ~ (v2_pre_topc @ sk_B)
% 0.21/0.50          | ~ (l1_pre_topc @ sk_B)
% 0.21/0.50          | (v2_struct_0 @ X0)
% 0.21/0.50          | ~ (m1_pre_topc @ X0 @ X1)
% 0.21/0.50          | ~ (m1_subset_1 @ X2 @ (u1_struct_0 @ sk_D))
% 0.21/0.50          | ~ (m1_pre_topc @ X0 @ sk_D)
% 0.21/0.50          | ~ (r1_tmap_1 @ sk_D @ sk_B @ sk_E @ X2)
% 0.21/0.50          | (r1_tmap_1 @ X0 @ sk_B @ 
% 0.21/0.50             (k3_tmap_1 @ X1 @ sk_B @ sk_D @ X0 @ sk_E) @ X2)
% 0.21/0.50          | ~ (m1_subset_1 @ X2 @ (u1_struct_0 @ X0))
% 0.21/0.50          | ~ (v1_funct_2 @ sk_E @ (u1_struct_0 @ sk_D) @ (u1_struct_0 @ sk_B))
% 0.21/0.50          | ~ (v1_funct_1 @ sk_E)
% 0.21/0.50          | ~ (m1_pre_topc @ sk_D @ X1)
% 0.21/0.50          | (v2_struct_0 @ sk_D)
% 0.21/0.50          | ~ (l1_pre_topc @ X1)
% 0.21/0.50          | ~ (v2_pre_topc @ X1)
% 0.21/0.50          | (v2_struct_0 @ X1))),
% 0.21/0.50      inference('sup-', [status(thm)], ['22', '24'])).
% 0.21/0.50  thf('26', plain, ((v2_pre_topc @ sk_B)),
% 0.21/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.50  thf('27', plain, ((l1_pre_topc @ sk_B)),
% 0.21/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.50  thf('28', plain,
% 0.21/0.50      ((v1_funct_2 @ sk_E @ (u1_struct_0 @ sk_D) @ (u1_struct_0 @ sk_B))),
% 0.21/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.50  thf('29', plain, ((v1_funct_1 @ sk_E)),
% 0.21/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.50  thf('30', plain,
% 0.21/0.50      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.21/0.50         ((v2_struct_0 @ sk_B)
% 0.21/0.50          | (v2_struct_0 @ X0)
% 0.21/0.50          | ~ (m1_pre_topc @ X0 @ X1)
% 0.21/0.50          | ~ (m1_subset_1 @ X2 @ (u1_struct_0 @ sk_D))
% 0.21/0.50          | ~ (m1_pre_topc @ X0 @ sk_D)
% 0.21/0.50          | ~ (r1_tmap_1 @ sk_D @ sk_B @ sk_E @ X2)
% 0.21/0.50          | (r1_tmap_1 @ X0 @ sk_B @ 
% 0.21/0.50             (k3_tmap_1 @ X1 @ sk_B @ sk_D @ X0 @ sk_E) @ X2)
% 0.21/0.50          | ~ (m1_subset_1 @ X2 @ (u1_struct_0 @ X0))
% 0.21/0.50          | ~ (m1_pre_topc @ sk_D @ X1)
% 0.21/0.50          | (v2_struct_0 @ sk_D)
% 0.21/0.50          | ~ (l1_pre_topc @ X1)
% 0.21/0.50          | ~ (v2_pre_topc @ X1)
% 0.21/0.50          | (v2_struct_0 @ X1))),
% 0.21/0.50      inference('demod', [status(thm)], ['25', '26', '27', '28', '29'])).
% 0.21/0.50  thf('31', plain,
% 0.21/0.50      ((![X0 : $i, X1 : $i]:
% 0.21/0.50          ((v2_struct_0 @ X0)
% 0.21/0.50           | ~ (v2_pre_topc @ X0)
% 0.21/0.50           | ~ (l1_pre_topc @ X0)
% 0.21/0.50           | (v2_struct_0 @ sk_D)
% 0.21/0.50           | ~ (m1_pre_topc @ sk_D @ X0)
% 0.21/0.50           | ~ (m1_subset_1 @ sk_H @ (u1_struct_0 @ X1))
% 0.21/0.50           | (r1_tmap_1 @ X1 @ sk_B @ 
% 0.21/0.50              (k3_tmap_1 @ X0 @ sk_B @ sk_D @ X1 @ sk_E) @ sk_H)
% 0.21/0.50           | ~ (m1_pre_topc @ X1 @ sk_D)
% 0.21/0.50           | ~ (m1_subset_1 @ sk_H @ (u1_struct_0 @ sk_D))
% 0.21/0.50           | ~ (m1_pre_topc @ X1 @ X0)
% 0.21/0.50           | (v2_struct_0 @ X1)
% 0.21/0.50           | (v2_struct_0 @ sk_B)))
% 0.21/0.50         <= (((r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_G)))),
% 0.21/0.50      inference('sup-', [status(thm)], ['21', '30'])).
% 0.21/0.50  thf('32', plain, ((m1_subset_1 @ sk_G @ (u1_struct_0 @ sk_D))),
% 0.21/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.50  thf('33', plain, (((sk_G) = (sk_H))),
% 0.21/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.50  thf('34', plain, ((m1_subset_1 @ sk_H @ (u1_struct_0 @ sk_D))),
% 0.21/0.50      inference('demod', [status(thm)], ['32', '33'])).
% 0.21/0.50  thf('35', plain,
% 0.21/0.50      ((![X0 : $i, X1 : $i]:
% 0.21/0.50          ((v2_struct_0 @ X0)
% 0.21/0.50           | ~ (v2_pre_topc @ X0)
% 0.21/0.50           | ~ (l1_pre_topc @ X0)
% 0.21/0.50           | (v2_struct_0 @ sk_D)
% 0.21/0.50           | ~ (m1_pre_topc @ sk_D @ X0)
% 0.21/0.50           | ~ (m1_subset_1 @ sk_H @ (u1_struct_0 @ X1))
% 0.21/0.50           | (r1_tmap_1 @ X1 @ sk_B @ 
% 0.21/0.50              (k3_tmap_1 @ X0 @ sk_B @ sk_D @ X1 @ sk_E) @ sk_H)
% 0.21/0.50           | ~ (m1_pre_topc @ X1 @ sk_D)
% 0.21/0.50           | ~ (m1_pre_topc @ X1 @ X0)
% 0.21/0.50           | (v2_struct_0 @ X1)
% 0.21/0.50           | (v2_struct_0 @ sk_B)))
% 0.21/0.50         <= (((r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_G)))),
% 0.21/0.50      inference('demod', [status(thm)], ['31', '34'])).
% 0.21/0.50  thf('36', plain,
% 0.21/0.50      ((![X0 : $i]:
% 0.21/0.50          ((v2_struct_0 @ sk_B)
% 0.21/0.50           | (v2_struct_0 @ sk_C)
% 0.21/0.50           | ~ (m1_pre_topc @ sk_C @ X0)
% 0.21/0.50           | ~ (m1_pre_topc @ sk_C @ sk_D)
% 0.21/0.50           | (r1_tmap_1 @ sk_C @ sk_B @ 
% 0.21/0.50              (k3_tmap_1 @ X0 @ sk_B @ sk_D @ sk_C @ sk_E) @ sk_H)
% 0.21/0.50           | ~ (m1_pre_topc @ sk_D @ X0)
% 0.21/0.50           | (v2_struct_0 @ sk_D)
% 0.21/0.50           | ~ (l1_pre_topc @ X0)
% 0.21/0.50           | ~ (v2_pre_topc @ X0)
% 0.21/0.50           | (v2_struct_0 @ X0)))
% 0.21/0.50         <= (((r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_G)))),
% 0.21/0.50      inference('sup-', [status(thm)], ['18', '35'])).
% 0.21/0.50  thf('37', plain, ((m1_pre_topc @ sk_C @ sk_D)),
% 0.21/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.50  thf('38', plain,
% 0.21/0.50      ((![X0 : $i]:
% 0.21/0.50          ((v2_struct_0 @ sk_B)
% 0.21/0.50           | (v2_struct_0 @ sk_C)
% 0.21/0.50           | ~ (m1_pre_topc @ sk_C @ X0)
% 0.21/0.50           | (r1_tmap_1 @ sk_C @ sk_B @ 
% 0.21/0.50              (k3_tmap_1 @ X0 @ sk_B @ sk_D @ sk_C @ sk_E) @ sk_H)
% 0.21/0.50           | ~ (m1_pre_topc @ sk_D @ X0)
% 0.21/0.50           | (v2_struct_0 @ sk_D)
% 0.21/0.50           | ~ (l1_pre_topc @ X0)
% 0.21/0.50           | ~ (v2_pre_topc @ X0)
% 0.21/0.50           | (v2_struct_0 @ X0)))
% 0.21/0.50         <= (((r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_G)))),
% 0.21/0.50      inference('demod', [status(thm)], ['36', '37'])).
% 0.21/0.50  thf('39', plain,
% 0.21/0.50      ((((v2_struct_0 @ sk_A)
% 0.21/0.50         | ~ (v2_pre_topc @ sk_A)
% 0.21/0.50         | ~ (l1_pre_topc @ sk_A)
% 0.21/0.50         | (v2_struct_0 @ sk_D)
% 0.21/0.50         | ~ (m1_pre_topc @ sk_D @ sk_A)
% 0.21/0.50         | (r1_tmap_1 @ sk_C @ sk_B @ 
% 0.21/0.50            (k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C @ sk_E) @ sk_H)
% 0.21/0.50         | (v2_struct_0 @ sk_C)
% 0.21/0.50         | (v2_struct_0 @ sk_B)))
% 0.21/0.50         <= (((r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_G)))),
% 0.21/0.50      inference('sup-', [status(thm)], ['17', '38'])).
% 0.21/0.50  thf('40', plain, ((v2_pre_topc @ sk_A)),
% 0.21/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.50  thf('41', plain, ((l1_pre_topc @ sk_A)),
% 0.21/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.50  thf('42', plain, ((m1_pre_topc @ sk_D @ sk_A)),
% 0.21/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.50  thf('43', plain,
% 0.21/0.50      ((((v2_struct_0 @ sk_A)
% 0.21/0.50         | (v2_struct_0 @ sk_D)
% 0.21/0.50         | (r1_tmap_1 @ sk_C @ sk_B @ 
% 0.21/0.50            (k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C @ sk_E) @ sk_H)
% 0.21/0.50         | (v2_struct_0 @ sk_C)
% 0.21/0.50         | (v2_struct_0 @ sk_B)))
% 0.21/0.50         <= (((r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_G)))),
% 0.21/0.50      inference('demod', [status(thm)], ['39', '40', '41', '42'])).
% 0.21/0.50  thf('44', plain,
% 0.21/0.50      ((~ (r1_tmap_1 @ sk_C @ sk_B @ 
% 0.21/0.50           (k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C @ sk_E) @ sk_H))
% 0.21/0.50         <= (~
% 0.21/0.50             ((r1_tmap_1 @ sk_C @ sk_B @ 
% 0.21/0.50               (k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C @ sk_E) @ sk_H)))),
% 0.21/0.50      inference('split', [status(esa)], ['12'])).
% 0.21/0.50  thf('45', plain,
% 0.21/0.50      ((((v2_struct_0 @ sk_B)
% 0.21/0.50         | (v2_struct_0 @ sk_C)
% 0.21/0.50         | (v2_struct_0 @ sk_D)
% 0.21/0.50         | (v2_struct_0 @ sk_A)))
% 0.21/0.50         <= (~
% 0.21/0.50             ((r1_tmap_1 @ sk_C @ sk_B @ 
% 0.21/0.50               (k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C @ sk_E) @ sk_H)) & 
% 0.21/0.50             ((r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_G)))),
% 0.21/0.50      inference('sup-', [status(thm)], ['43', '44'])).
% 0.21/0.50  thf('46', plain, (~ (v2_struct_0 @ sk_D)),
% 0.21/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.50  thf('47', plain,
% 0.21/0.50      ((((v2_struct_0 @ sk_A) | (v2_struct_0 @ sk_C) | (v2_struct_0 @ sk_B)))
% 0.21/0.50         <= (~
% 0.21/0.50             ((r1_tmap_1 @ sk_C @ sk_B @ 
% 0.21/0.50               (k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C @ sk_E) @ sk_H)) & 
% 0.21/0.50             ((r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_G)))),
% 0.21/0.50      inference('sup-', [status(thm)], ['45', '46'])).
% 0.21/0.50  thf('48', plain, (~ (v2_struct_0 @ sk_A)),
% 0.21/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.50  thf('49', plain,
% 0.21/0.50      ((((v2_struct_0 @ sk_B) | (v2_struct_0 @ sk_C)))
% 0.21/0.50         <= (~
% 0.21/0.50             ((r1_tmap_1 @ sk_C @ sk_B @ 
% 0.21/0.50               (k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C @ sk_E) @ sk_H)) & 
% 0.21/0.50             ((r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_G)))),
% 0.21/0.50      inference('clc', [status(thm)], ['47', '48'])).
% 0.21/0.50  thf('50', plain, (~ (v2_struct_0 @ sk_B)),
% 0.21/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.50  thf('51', plain,
% 0.21/0.50      (((v2_struct_0 @ sk_C))
% 0.21/0.50         <= (~
% 0.21/0.50             ((r1_tmap_1 @ sk_C @ sk_B @ 
% 0.21/0.50               (k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C @ sk_E) @ sk_H)) & 
% 0.21/0.50             ((r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_G)))),
% 0.21/0.50      inference('clc', [status(thm)], ['49', '50'])).
% 0.21/0.50  thf('52', plain, (~ (v2_struct_0 @ sk_C)),
% 0.21/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.50  thf('53', plain,
% 0.21/0.50      (((r1_tmap_1 @ sk_C @ sk_B @ 
% 0.21/0.50         (k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C @ sk_E) @ sk_H)) | 
% 0.21/0.50       ~ ((r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_G))),
% 0.21/0.50      inference('sup-', [status(thm)], ['51', '52'])).
% 0.21/0.50  thf('54', plain,
% 0.21/0.50      (((r1_tmap_1 @ sk_C @ sk_B @ 
% 0.21/0.50         (k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C @ sk_E) @ sk_H)) | 
% 0.21/0.50       ((r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H))),
% 0.21/0.50      inference('split', [status(esa)], ['10'])).
% 0.21/0.50  thf('55', plain,
% 0.21/0.50      (((r1_tmap_1 @ sk_C @ sk_B @ 
% 0.21/0.50         (k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C @ sk_E) @ sk_H))),
% 0.21/0.50      inference('sat_resolution*', [status(thm)], ['7', '16', '53', '54'])).
% 0.21/0.50  thf('56', plain,
% 0.21/0.50      ((r1_tmap_1 @ sk_C @ sk_B @ 
% 0.21/0.50        (k3_tmap_1 @ sk_A @ sk_B @ sk_D @ sk_C @ sk_E) @ sk_H)),
% 0.21/0.50      inference('simpl_trail', [status(thm)], ['3', '55'])).
% 0.21/0.50  thf('57', plain,
% 0.21/0.50      ((m1_subset_1 @ sk_E @ 
% 0.21/0.50        (k1_zfmisc_1 @ 
% 0.21/0.50         (k2_zfmisc_1 @ (u1_struct_0 @ sk_D) @ (u1_struct_0 @ sk_B))))),
% 0.21/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.50  thf(t83_tmap_1, axiom,
% 0.21/0.50    (![A:$i]:
% 0.21/0.50     ( ( ( ~( v2_struct_0 @ A ) ) & ( v2_pre_topc @ A ) & ( l1_pre_topc @ A ) ) =>
% 0.21/0.50       ( ![B:$i]:
% 0.21/0.50         ( ( ( ~( v2_struct_0 @ B ) ) & ( v2_pre_topc @ B ) & 
% 0.21/0.50             ( l1_pre_topc @ B ) ) =>
% 0.21/0.50           ( ![C:$i]:
% 0.21/0.50             ( ( ( ~( v2_struct_0 @ C ) ) & ( m1_pre_topc @ C @ A ) ) =>
% 0.21/0.50               ( ![D:$i]:
% 0.21/0.50                 ( ( ( ~( v2_struct_0 @ D ) ) & ( m1_pre_topc @ D @ A ) ) =>
% 0.21/0.50                   ( ![E:$i]:
% 0.21/0.50                     ( ( ( v1_funct_1 @ E ) & 
% 0.21/0.50                         ( v1_funct_2 @
% 0.21/0.50                           E @ ( u1_struct_0 @ D ) @ ( u1_struct_0 @ B ) ) & 
% 0.21/0.50                         ( m1_subset_1 @
% 0.21/0.50                           E @ 
% 0.21/0.50                           ( k1_zfmisc_1 @
% 0.21/0.50                             ( k2_zfmisc_1 @
% 0.21/0.50                               ( u1_struct_0 @ D ) @ ( u1_struct_0 @ B ) ) ) ) ) =>
% 0.21/0.50                       ( ( m1_pre_topc @ C @ D ) =>
% 0.21/0.50                         ( ![F:$i]:
% 0.21/0.50                           ( ( m1_subset_1 @
% 0.21/0.50                               F @ ( k1_zfmisc_1 @ ( u1_struct_0 @ D ) ) ) =>
% 0.21/0.50                             ( ![G:$i]:
% 0.21/0.50                               ( ( m1_subset_1 @ G @ ( u1_struct_0 @ D ) ) =>
% 0.21/0.50                                 ( ![H:$i]:
% 0.21/0.50                                   ( ( m1_subset_1 @ H @ ( u1_struct_0 @ C ) ) =>
% 0.21/0.50                                     ( ( ( r1_tarski @ F @ ( u1_struct_0 @ C ) ) & 
% 0.21/0.50                                         ( m1_connsp_2 @ F @ D @ G ) & 
% 0.21/0.50                                         ( ( G ) = ( H ) ) ) =>
% 0.21/0.50                                       ( ( r1_tmap_1 @ D @ B @ E @ G ) <=>
% 0.21/0.50                                         ( r1_tmap_1 @
% 0.21/0.50                                           C @ B @ 
% 0.21/0.50                                           ( k3_tmap_1 @ A @ B @ D @ C @ E ) @ 
% 0.21/0.50                                           H ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ))).
% 0.21/0.50  thf('58', plain,
% 0.21/0.50      (![X14 : $i, X15 : $i, X16 : $i, X17 : $i, X18 : $i, X19 : $i, X20 : $i, 
% 0.21/0.50         X21 : $i]:
% 0.21/0.50         ((v2_struct_0 @ X14)
% 0.21/0.50          | ~ (v2_pre_topc @ X14)
% 0.21/0.50          | ~ (l1_pre_topc @ X14)
% 0.21/0.50          | (v2_struct_0 @ X15)
% 0.21/0.50          | ~ (m1_pre_topc @ X15 @ X16)
% 0.21/0.50          | ~ (m1_pre_topc @ X17 @ X15)
% 0.21/0.50          | ~ (m1_subset_1 @ X18 @ (k1_zfmisc_1 @ (u1_struct_0 @ X15)))
% 0.21/0.50          | ~ (m1_subset_1 @ X19 @ (u1_struct_0 @ X17))
% 0.21/0.50          | ~ (r1_tmap_1 @ X17 @ X14 @ 
% 0.21/0.50               (k3_tmap_1 @ X16 @ X14 @ X15 @ X17 @ X20) @ X19)
% 0.21/0.50          | (r1_tmap_1 @ X15 @ X14 @ X20 @ X21)
% 0.21/0.50          | ((X21) != (X19))
% 0.21/0.50          | ~ (m1_connsp_2 @ X18 @ X15 @ X21)
% 0.21/0.50          | ~ (r1_tarski @ X18 @ (u1_struct_0 @ X17))
% 0.21/0.50          | ~ (m1_subset_1 @ X21 @ (u1_struct_0 @ X15))
% 0.21/0.50          | ~ (m1_subset_1 @ X20 @ 
% 0.21/0.50               (k1_zfmisc_1 @ 
% 0.21/0.50                (k2_zfmisc_1 @ (u1_struct_0 @ X15) @ (u1_struct_0 @ X14))))
% 0.21/0.50          | ~ (v1_funct_2 @ X20 @ (u1_struct_0 @ X15) @ (u1_struct_0 @ X14))
% 0.21/0.50          | ~ (v1_funct_1 @ X20)
% 0.21/0.50          | ~ (m1_pre_topc @ X17 @ X16)
% 0.21/0.50          | (v2_struct_0 @ X17)
% 0.21/0.50          | ~ (l1_pre_topc @ X16)
% 0.21/0.50          | ~ (v2_pre_topc @ X16)
% 0.21/0.50          | (v2_struct_0 @ X16))),
% 0.21/0.50      inference('cnf', [status(esa)], [t83_tmap_1])).
% 0.21/0.50  thf('59', plain,
% 0.21/0.50      (![X14 : $i, X15 : $i, X16 : $i, X17 : $i, X18 : $i, X19 : $i, X20 : $i]:
% 0.21/0.50         ((v2_struct_0 @ X16)
% 0.21/0.50          | ~ (v2_pre_topc @ X16)
% 0.21/0.50          | ~ (l1_pre_topc @ X16)
% 0.21/0.50          | (v2_struct_0 @ X17)
% 0.21/0.50          | ~ (m1_pre_topc @ X17 @ X16)
% 0.21/0.50          | ~ (v1_funct_1 @ X20)
% 0.21/0.50          | ~ (v1_funct_2 @ X20 @ (u1_struct_0 @ X15) @ (u1_struct_0 @ X14))
% 0.21/0.50          | ~ (m1_subset_1 @ X20 @ 
% 0.21/0.50               (k1_zfmisc_1 @ 
% 0.21/0.50                (k2_zfmisc_1 @ (u1_struct_0 @ X15) @ (u1_struct_0 @ X14))))
% 0.21/0.50          | ~ (m1_subset_1 @ X19 @ (u1_struct_0 @ X15))
% 0.21/0.50          | ~ (r1_tarski @ X18 @ (u1_struct_0 @ X17))
% 0.21/0.50          | ~ (m1_connsp_2 @ X18 @ X15 @ X19)
% 0.21/0.50          | (r1_tmap_1 @ X15 @ X14 @ X20 @ X19)
% 0.21/0.50          | ~ (r1_tmap_1 @ X17 @ X14 @ 
% 0.21/0.50               (k3_tmap_1 @ X16 @ X14 @ X15 @ X17 @ X20) @ X19)
% 0.21/0.50          | ~ (m1_subset_1 @ X19 @ (u1_struct_0 @ X17))
% 0.21/0.50          | ~ (m1_subset_1 @ X18 @ (k1_zfmisc_1 @ (u1_struct_0 @ X15)))
% 0.21/0.50          | ~ (m1_pre_topc @ X17 @ X15)
% 0.21/0.50          | ~ (m1_pre_topc @ X15 @ X16)
% 0.21/0.50          | (v2_struct_0 @ X15)
% 0.21/0.50          | ~ (l1_pre_topc @ X14)
% 0.21/0.50          | ~ (v2_pre_topc @ X14)
% 0.21/0.50          | (v2_struct_0 @ X14))),
% 0.21/0.50      inference('simplify', [status(thm)], ['58'])).
% 0.21/0.50  thf('60', plain,
% 0.21/0.50      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i]:
% 0.21/0.50         ((v2_struct_0 @ sk_B)
% 0.21/0.50          | ~ (v2_pre_topc @ sk_B)
% 0.21/0.50          | ~ (l1_pre_topc @ sk_B)
% 0.21/0.50          | (v2_struct_0 @ sk_D)
% 0.21/0.50          | ~ (m1_pre_topc @ sk_D @ X0)
% 0.21/0.50          | ~ (m1_pre_topc @ X1 @ sk_D)
% 0.21/0.50          | ~ (m1_subset_1 @ X2 @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_D)))
% 0.21/0.50          | ~ (m1_subset_1 @ X3 @ (u1_struct_0 @ X1))
% 0.21/0.50          | ~ (r1_tmap_1 @ X1 @ sk_B @ 
% 0.21/0.50               (k3_tmap_1 @ X0 @ sk_B @ sk_D @ X1 @ sk_E) @ X3)
% 0.21/0.50          | (r1_tmap_1 @ sk_D @ sk_B @ sk_E @ X3)
% 0.21/0.50          | ~ (m1_connsp_2 @ X2 @ sk_D @ X3)
% 0.21/0.50          | ~ (r1_tarski @ X2 @ (u1_struct_0 @ X1))
% 0.21/0.50          | ~ (m1_subset_1 @ X3 @ (u1_struct_0 @ sk_D))
% 0.21/0.50          | ~ (v1_funct_2 @ sk_E @ (u1_struct_0 @ sk_D) @ (u1_struct_0 @ sk_B))
% 0.21/0.50          | ~ (v1_funct_1 @ sk_E)
% 0.21/0.50          | ~ (m1_pre_topc @ X1 @ X0)
% 0.21/0.50          | (v2_struct_0 @ X1)
% 0.21/0.50          | ~ (l1_pre_topc @ X0)
% 0.21/0.50          | ~ (v2_pre_topc @ X0)
% 0.21/0.50          | (v2_struct_0 @ X0))),
% 0.21/0.50      inference('sup-', [status(thm)], ['57', '59'])).
% 0.21/0.50  thf('61', plain, ((v2_pre_topc @ sk_B)),
% 0.21/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.50  thf('62', plain, ((l1_pre_topc @ sk_B)),
% 0.21/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.50  thf('63', plain,
% 0.21/0.50      ((v1_funct_2 @ sk_E @ (u1_struct_0 @ sk_D) @ (u1_struct_0 @ sk_B))),
% 0.21/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.50  thf('64', plain, ((v1_funct_1 @ sk_E)),
% 0.21/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.50  thf('65', plain,
% 0.21/0.50      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i]:
% 0.21/0.50         ((v2_struct_0 @ sk_B)
% 0.21/0.50          | (v2_struct_0 @ sk_D)
% 0.21/0.50          | ~ (m1_pre_topc @ sk_D @ X0)
% 0.21/0.50          | ~ (m1_pre_topc @ X1 @ sk_D)
% 0.21/0.50          | ~ (m1_subset_1 @ X2 @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_D)))
% 0.21/0.50          | ~ (m1_subset_1 @ X3 @ (u1_struct_0 @ X1))
% 0.21/0.50          | ~ (r1_tmap_1 @ X1 @ sk_B @ 
% 0.21/0.50               (k3_tmap_1 @ X0 @ sk_B @ sk_D @ X1 @ sk_E) @ X3)
% 0.21/0.50          | (r1_tmap_1 @ sk_D @ sk_B @ sk_E @ X3)
% 0.21/0.50          | ~ (m1_connsp_2 @ X2 @ sk_D @ X3)
% 0.21/0.50          | ~ (r1_tarski @ X2 @ (u1_struct_0 @ X1))
% 0.21/0.50          | ~ (m1_subset_1 @ X3 @ (u1_struct_0 @ sk_D))
% 0.21/0.50          | ~ (m1_pre_topc @ X1 @ X0)
% 0.21/0.50          | (v2_struct_0 @ X1)
% 0.21/0.50          | ~ (l1_pre_topc @ X0)
% 0.21/0.50          | ~ (v2_pre_topc @ X0)
% 0.21/0.50          | (v2_struct_0 @ X0))),
% 0.21/0.50      inference('demod', [status(thm)], ['60', '61', '62', '63', '64'])).
% 0.21/0.50  thf('66', plain,
% 0.21/0.50      (![X0 : $i]:
% 0.21/0.50         ((v2_struct_0 @ sk_A)
% 0.21/0.50          | ~ (v2_pre_topc @ sk_A)
% 0.21/0.50          | ~ (l1_pre_topc @ sk_A)
% 0.21/0.50          | (v2_struct_0 @ sk_C)
% 0.21/0.50          | ~ (m1_pre_topc @ sk_C @ sk_A)
% 0.21/0.50          | ~ (m1_subset_1 @ sk_H @ (u1_struct_0 @ sk_D))
% 0.21/0.50          | ~ (r1_tarski @ X0 @ (u1_struct_0 @ sk_C))
% 0.21/0.50          | ~ (m1_connsp_2 @ X0 @ sk_D @ sk_H)
% 0.21/0.50          | (r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H)
% 0.21/0.50          | ~ (m1_subset_1 @ sk_H @ (u1_struct_0 @ sk_C))
% 0.21/0.50          | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_D)))
% 0.21/0.50          | ~ (m1_pre_topc @ sk_C @ sk_D)
% 0.21/0.50          | ~ (m1_pre_topc @ sk_D @ sk_A)
% 0.21/0.50          | (v2_struct_0 @ sk_D)
% 0.21/0.50          | (v2_struct_0 @ sk_B))),
% 0.21/0.50      inference('sup-', [status(thm)], ['56', '65'])).
% 0.21/0.50  thf('67', plain, ((v2_pre_topc @ sk_A)),
% 0.21/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.50  thf('68', plain, ((l1_pre_topc @ sk_A)),
% 0.21/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.50  thf('69', plain, ((m1_pre_topc @ sk_C @ sk_A)),
% 0.21/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.50  thf('70', plain, ((m1_subset_1 @ sk_H @ (u1_struct_0 @ sk_D))),
% 0.21/0.50      inference('demod', [status(thm)], ['32', '33'])).
% 0.21/0.50  thf('71', plain, ((m1_subset_1 @ sk_H @ (u1_struct_0 @ sk_C))),
% 0.21/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.50  thf('72', plain, ((m1_pre_topc @ sk_C @ sk_D)),
% 0.21/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.50  thf('73', plain, ((m1_pre_topc @ sk_D @ sk_A)),
% 0.21/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.50  thf('74', plain,
% 0.21/0.50      (![X0 : $i]:
% 0.21/0.50         ((v2_struct_0 @ sk_A)
% 0.21/0.50          | (v2_struct_0 @ sk_C)
% 0.21/0.50          | ~ (r1_tarski @ X0 @ (u1_struct_0 @ sk_C))
% 0.21/0.50          | ~ (m1_connsp_2 @ X0 @ sk_D @ sk_H)
% 0.21/0.50          | (r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H)
% 0.21/0.50          | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_D)))
% 0.21/0.50          | (v2_struct_0 @ sk_D)
% 0.21/0.50          | (v2_struct_0 @ sk_B))),
% 0.21/0.50      inference('demod', [status(thm)],
% 0.21/0.50                ['66', '67', '68', '69', '70', '71', '72', '73'])).
% 0.21/0.50  thf('75', plain,
% 0.21/0.50      (((v2_struct_0 @ sk_B)
% 0.21/0.50        | (v2_struct_0 @ sk_D)
% 0.21/0.50        | (r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H)
% 0.21/0.50        | ~ (m1_connsp_2 @ sk_F @ sk_D @ sk_H)
% 0.21/0.50        | ~ (r1_tarski @ sk_F @ (u1_struct_0 @ sk_C))
% 0.21/0.50        | (v2_struct_0 @ sk_C)
% 0.21/0.50        | (v2_struct_0 @ sk_A))),
% 0.21/0.50      inference('sup-', [status(thm)], ['1', '74'])).
% 0.21/0.50  thf('76', plain, ((m1_subset_1 @ sk_H @ (u1_struct_0 @ sk_D))),
% 0.21/0.50      inference('demod', [status(thm)], ['32', '33'])).
% 0.21/0.50  thf('77', plain,
% 0.21/0.50      ((m1_subset_1 @ sk_F @ (k1_zfmisc_1 @ (u1_struct_0 @ sk_D)))),
% 0.21/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.50  thf(t5_connsp_2, axiom,
% 0.21/0.50    (![A:$i]:
% 0.21/0.50     ( ( ( ~( v2_struct_0 @ A ) ) & ( v2_pre_topc @ A ) & ( l1_pre_topc @ A ) ) =>
% 0.21/0.50       ( ![B:$i]:
% 0.21/0.50         ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) =>
% 0.21/0.50           ( ![C:$i]:
% 0.21/0.50             ( ( m1_subset_1 @ C @ ( u1_struct_0 @ A ) ) =>
% 0.21/0.50               ( ( ( v3_pre_topc @ B @ A ) & ( r2_hidden @ C @ B ) ) =>
% 0.21/0.50                 ( m1_connsp_2 @ B @ A @ C ) ) ) ) ) ) ))).
% 0.21/0.50  thf('78', plain,
% 0.21/0.50      (![X4 : $i, X5 : $i, X6 : $i]:
% 0.21/0.50         (~ (m1_subset_1 @ X4 @ (k1_zfmisc_1 @ (u1_struct_0 @ X5)))
% 0.21/0.50          | ~ (v3_pre_topc @ X4 @ X5)
% 0.21/0.50          | ~ (r2_hidden @ X6 @ X4)
% 0.21/0.50          | (m1_connsp_2 @ X4 @ X5 @ X6)
% 0.21/0.50          | ~ (m1_subset_1 @ X6 @ (u1_struct_0 @ X5))
% 0.21/0.50          | ~ (l1_pre_topc @ X5)
% 0.21/0.50          | ~ (v2_pre_topc @ X5)
% 0.21/0.50          | (v2_struct_0 @ X5))),
% 0.21/0.50      inference('cnf', [status(esa)], [t5_connsp_2])).
% 0.21/0.50  thf('79', plain,
% 0.21/0.50      (![X0 : $i]:
% 0.21/0.50         ((v2_struct_0 @ sk_D)
% 0.21/0.50          | ~ (v2_pre_topc @ sk_D)
% 0.21/0.50          | ~ (l1_pre_topc @ sk_D)
% 0.21/0.50          | ~ (m1_subset_1 @ X0 @ (u1_struct_0 @ sk_D))
% 0.21/0.50          | (m1_connsp_2 @ sk_F @ sk_D @ X0)
% 0.21/0.50          | ~ (r2_hidden @ X0 @ sk_F)
% 0.21/0.50          | ~ (v3_pre_topc @ sk_F @ sk_D))),
% 0.21/0.50      inference('sup-', [status(thm)], ['77', '78'])).
% 0.21/0.50  thf('80', plain, ((m1_pre_topc @ sk_D @ sk_A)),
% 0.21/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.50  thf(cc1_pre_topc, axiom,
% 0.21/0.50    (![A:$i]:
% 0.21/0.50     ( ( ( v2_pre_topc @ A ) & ( l1_pre_topc @ A ) ) =>
% 0.21/0.50       ( ![B:$i]: ( ( m1_pre_topc @ B @ A ) => ( v2_pre_topc @ B ) ) ) ))).
% 0.21/0.50  thf('81', plain,
% 0.21/0.50      (![X0 : $i, X1 : $i]:
% 0.21/0.50         (~ (m1_pre_topc @ X0 @ X1)
% 0.21/0.50          | (v2_pre_topc @ X0)
% 0.21/0.50          | ~ (l1_pre_topc @ X1)
% 0.21/0.50          | ~ (v2_pre_topc @ X1))),
% 0.21/0.50      inference('cnf', [status(esa)], [cc1_pre_topc])).
% 0.21/0.50  thf('82', plain,
% 0.21/0.50      ((~ (v2_pre_topc @ sk_A) | ~ (l1_pre_topc @ sk_A) | (v2_pre_topc @ sk_D))),
% 0.21/0.50      inference('sup-', [status(thm)], ['80', '81'])).
% 0.21/0.50  thf('83', plain, ((v2_pre_topc @ sk_A)),
% 0.21/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.50  thf('84', plain, ((l1_pre_topc @ sk_A)),
% 0.21/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.50  thf('85', plain, ((v2_pre_topc @ sk_D)),
% 0.21/0.50      inference('demod', [status(thm)], ['82', '83', '84'])).
% 0.21/0.50  thf('86', plain, ((m1_pre_topc @ sk_D @ sk_A)),
% 0.21/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.50  thf(dt_m1_pre_topc, axiom,
% 0.21/0.50    (![A:$i]:
% 0.21/0.50     ( ( l1_pre_topc @ A ) =>
% 0.21/0.50       ( ![B:$i]: ( ( m1_pre_topc @ B @ A ) => ( l1_pre_topc @ B ) ) ) ))).
% 0.21/0.50  thf('87', plain,
% 0.21/0.50      (![X2 : $i, X3 : $i]:
% 0.21/0.50         (~ (m1_pre_topc @ X2 @ X3) | (l1_pre_topc @ X2) | ~ (l1_pre_topc @ X3))),
% 0.21/0.50      inference('cnf', [status(esa)], [dt_m1_pre_topc])).
% 0.21/0.50  thf('88', plain, ((~ (l1_pre_topc @ sk_A) | (l1_pre_topc @ sk_D))),
% 0.21/0.50      inference('sup-', [status(thm)], ['86', '87'])).
% 0.21/0.50  thf('89', plain, ((l1_pre_topc @ sk_A)),
% 0.21/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.50  thf('90', plain, ((l1_pre_topc @ sk_D)),
% 0.21/0.50      inference('demod', [status(thm)], ['88', '89'])).
% 0.21/0.50  thf('91', plain, ((v3_pre_topc @ sk_F @ sk_D)),
% 0.21/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.50  thf('92', plain,
% 0.21/0.50      (![X0 : $i]:
% 0.21/0.50         ((v2_struct_0 @ sk_D)
% 0.21/0.50          | ~ (m1_subset_1 @ X0 @ (u1_struct_0 @ sk_D))
% 0.21/0.50          | (m1_connsp_2 @ sk_F @ sk_D @ X0)
% 0.21/0.50          | ~ (r2_hidden @ X0 @ sk_F))),
% 0.21/0.50      inference('demod', [status(thm)], ['79', '85', '90', '91'])).
% 0.21/0.50  thf('93', plain,
% 0.21/0.50      ((~ (r2_hidden @ sk_H @ sk_F)
% 0.21/0.50        | (m1_connsp_2 @ sk_F @ sk_D @ sk_H)
% 0.21/0.50        | (v2_struct_0 @ sk_D))),
% 0.21/0.50      inference('sup-', [status(thm)], ['76', '92'])).
% 0.21/0.50  thf('94', plain, ((r2_hidden @ sk_G @ sk_F)),
% 0.21/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.50  thf('95', plain, (((sk_G) = (sk_H))),
% 0.21/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.50  thf('96', plain, ((r2_hidden @ sk_H @ sk_F)),
% 0.21/0.50      inference('demod', [status(thm)], ['94', '95'])).
% 0.21/0.50  thf('97', plain,
% 0.21/0.50      (((m1_connsp_2 @ sk_F @ sk_D @ sk_H) | (v2_struct_0 @ sk_D))),
% 0.21/0.50      inference('demod', [status(thm)], ['93', '96'])).
% 0.21/0.50  thf('98', plain, (~ (v2_struct_0 @ sk_D)),
% 0.21/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.50  thf('99', plain, ((m1_connsp_2 @ sk_F @ sk_D @ sk_H)),
% 0.21/0.50      inference('clc', [status(thm)], ['97', '98'])).
% 0.21/0.50  thf('100', plain, ((r1_tarski @ sk_F @ (u1_struct_0 @ sk_C))),
% 0.21/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.50  thf('101', plain,
% 0.21/0.50      (((v2_struct_0 @ sk_B)
% 0.21/0.50        | (v2_struct_0 @ sk_D)
% 0.21/0.50        | (r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H)
% 0.21/0.50        | (v2_struct_0 @ sk_C)
% 0.21/0.50        | (v2_struct_0 @ sk_A))),
% 0.21/0.50      inference('demod', [status(thm)], ['75', '99', '100'])).
% 0.21/0.50  thf('102', plain,
% 0.21/0.50      ((~ (r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H))
% 0.21/0.50         <= (~ ((r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_G)))),
% 0.21/0.50      inference('demod', [status(thm)], ['13', '14'])).
% 0.21/0.50  thf('103', plain,
% 0.21/0.50      (((r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H))
% 0.21/0.50         <= (((r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_G)))),
% 0.21/0.50      inference('demod', [status(thm)], ['19', '20'])).
% 0.21/0.50  thf('104', plain,
% 0.21/0.50      ((~ (r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H))
% 0.21/0.50         <= (~ ((r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H)))),
% 0.21/0.50      inference('split', [status(esa)], ['6'])).
% 0.21/0.50  thf('105', plain,
% 0.21/0.50      (~ ((r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_G)) | 
% 0.21/0.50       ((r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H))),
% 0.21/0.50      inference('sup-', [status(thm)], ['103', '104'])).
% 0.21/0.50  thf('106', plain, (~ ((r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_G))),
% 0.21/0.50      inference('sat_resolution*', [status(thm)], ['7', '16', '53', '105'])).
% 0.21/0.50  thf('107', plain, (~ (r1_tmap_1 @ sk_D @ sk_B @ sk_E @ sk_H)),
% 0.21/0.50      inference('simpl_trail', [status(thm)], ['102', '106'])).
% 0.21/0.50  thf('108', plain,
% 0.21/0.50      (((v2_struct_0 @ sk_A)
% 0.21/0.50        | (v2_struct_0 @ sk_C)
% 0.21/0.50        | (v2_struct_0 @ sk_D)
% 0.21/0.50        | (v2_struct_0 @ sk_B))),
% 0.21/0.50      inference('sup-', [status(thm)], ['101', '107'])).
% 0.21/0.50  thf('109', plain, (~ (v2_struct_0 @ sk_D)),
% 0.21/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.50  thf('110', plain,
% 0.21/0.50      (((v2_struct_0 @ sk_B) | (v2_struct_0 @ sk_C) | (v2_struct_0 @ sk_A))),
% 0.21/0.50      inference('sup-', [status(thm)], ['108', '109'])).
% 0.21/0.50  thf('111', plain, (~ (v2_struct_0 @ sk_B)),
% 0.21/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.50  thf('112', plain, (((v2_struct_0 @ sk_A) | (v2_struct_0 @ sk_C))),
% 0.21/0.50      inference('clc', [status(thm)], ['110', '111'])).
% 0.21/0.50  thf('113', plain, (~ (v2_struct_0 @ sk_A)),
% 0.21/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.50  thf('114', plain, ((v2_struct_0 @ sk_C)),
% 0.21/0.50      inference('clc', [status(thm)], ['112', '113'])).
% 0.21/0.50  thf('115', plain, ($false), inference('demod', [status(thm)], ['0', '114'])).
% 0.21/0.50  
% 0.21/0.50  % SZS output end Refutation
% 0.21/0.50  
% 0.21/0.51  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
