%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.VBlxGEECmu

% Computer   : n001.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 14:09:00 EST 2020

% Result     : Theorem 0.42s
% Output     : Refutation 0.48s
% Verified   : 
% Statistics : Number of formulae       :  242 ( 836 expanded)
%              Number of leaves         :   40 ( 260 expanded)
%              Depth                    :   31
%              Number of atoms          : 3587 (34901 expanded)
%              Number of equality atoms :  113 (1111 expanded)
%              Maximal formula depth    :   28 (   8 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(v1_partfun1_type,type,(
    v1_partfun1: $i > $i > $o )).

thf(sk_F_type,type,(
    sk_F: $i )).

thf(sk_D_type,type,(
    sk_D: $i )).

thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(k4_subset_1_type,type,(
    k4_subset_1: $i > $i > $i > $i )).

thf(k2_zfmisc_1_type,type,(
    k2_zfmisc_1: $i > $i > $i )).

thf(k2_partfun1_type,type,(
    k2_partfun1: $i > $i > $i > $i > $i )).

thf(v1_xboole_0_type,type,(
    v1_xboole_0: $i > $o )).

thf(v1_funct_1_type,type,(
    v1_funct_1: $i > $o )).

thf(v1_funct_2_type,type,(
    v1_funct_2: $i > $i > $i > $o )).

thf(k3_xboole_0_type,type,(
    k3_xboole_0: $i > $i > $i )).

thf(r1_subset_1_type,type,(
    r1_subset_1: $i > $i > $o )).

thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(sk_C_type,type,(
    sk_C: $i )).

thf(r1_xboole_0_type,type,(
    r1_xboole_0: $i > $i > $o )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(k1_relat_1_type,type,(
    k1_relat_1: $i > $i )).

thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(k7_relat_1_type,type,(
    k7_relat_1: $i > $i > $i )).

thf(sk_E_type,type,(
    sk_E: $i )).

thf(v5_relat_1_type,type,(
    v5_relat_1: $i > $i > $o )).

thf(k1_tmap_1_type,type,(
    k1_tmap_1: $i > $i > $i > $i > $i > $i > $i )).

thf(v4_relat_1_type,type,(
    v4_relat_1: $i > $i > $o )).

thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(k9_subset_1_type,type,(
    k9_subset_1: $i > $i > $i > $i )).

thf(t6_tmap_1,conjecture,(
    ! [A: $i] :
      ( ~ ( v1_xboole_0 @ A )
     => ! [B: $i] :
          ( ~ ( v1_xboole_0 @ B )
         => ! [C: $i] :
              ( ( ~ ( v1_xboole_0 @ C )
                & ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ A ) ) )
             => ! [D: $i] :
                  ( ( ~ ( v1_xboole_0 @ D )
                    & ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ A ) ) )
                 => ( ( r1_subset_1 @ C @ D )
                   => ! [E: $i] :
                        ( ( ( v1_funct_1 @ E )
                          & ( v1_funct_2 @ E @ C @ B )
                          & ( m1_subset_1 @ E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ C @ B ) ) ) )
                       => ! [F: $i] :
                            ( ( ( v1_funct_1 @ F )
                              & ( v1_funct_2 @ F @ D @ B )
                              & ( m1_subset_1 @ F @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ D @ B ) ) ) )
                           => ( ( ( k2_partfun1 @ C @ B @ E @ ( k9_subset_1 @ A @ C @ D ) )
                                = ( k2_partfun1 @ D @ B @ F @ ( k9_subset_1 @ A @ C @ D ) ) )
                              & ( ( k2_partfun1 @ ( k4_subset_1 @ A @ C @ D ) @ B @ ( k1_tmap_1 @ A @ B @ C @ D @ E @ F ) @ C )
                                = E )
                              & ( ( k2_partfun1 @ ( k4_subset_1 @ A @ C @ D ) @ B @ ( k1_tmap_1 @ A @ B @ C @ D @ E @ F ) @ D )
                                = F ) ) ) ) ) ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i] :
        ( ~ ( v1_xboole_0 @ A )
       => ! [B: $i] :
            ( ~ ( v1_xboole_0 @ B )
           => ! [C: $i] :
                ( ( ~ ( v1_xboole_0 @ C )
                  & ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ A ) ) )
               => ! [D: $i] :
                    ( ( ~ ( v1_xboole_0 @ D )
                      & ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ A ) ) )
                   => ( ( r1_subset_1 @ C @ D )
                     => ! [E: $i] :
                          ( ( ( v1_funct_1 @ E )
                            & ( v1_funct_2 @ E @ C @ B )
                            & ( m1_subset_1 @ E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ C @ B ) ) ) )
                         => ! [F: $i] :
                              ( ( ( v1_funct_1 @ F )
                                & ( v1_funct_2 @ F @ D @ B )
                                & ( m1_subset_1 @ F @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ D @ B ) ) ) )
                             => ( ( ( k2_partfun1 @ C @ B @ E @ ( k9_subset_1 @ A @ C @ D ) )
                                  = ( k2_partfun1 @ D @ B @ F @ ( k9_subset_1 @ A @ C @ D ) ) )
                                & ( ( k2_partfun1 @ ( k4_subset_1 @ A @ C @ D ) @ B @ ( k1_tmap_1 @ A @ B @ C @ D @ E @ F ) @ C )
                                  = E )
                                & ( ( k2_partfun1 @ ( k4_subset_1 @ A @ C @ D ) @ B @ ( k1_tmap_1 @ A @ B @ C @ D @ E @ F ) @ D )
                                  = F ) ) ) ) ) ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t6_tmap_1])).

thf('0',plain,(
    ~ ( v1_xboole_0 @ sk_B ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('1',plain,(
    m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('2',plain,(
    m1_subset_1 @ sk_F @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_D @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('3',plain,(
    m1_subset_1 @ sk_E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_C @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(dt_k1_tmap_1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i,E: $i,F: $i] :
      ( ( ~ ( v1_xboole_0 @ A )
        & ~ ( v1_xboole_0 @ B )
        & ~ ( v1_xboole_0 @ C )
        & ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ A ) )
        & ~ ( v1_xboole_0 @ D )
        & ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ A ) )
        & ( v1_funct_1 @ E )
        & ( v1_funct_2 @ E @ C @ B )
        & ( m1_subset_1 @ E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ C @ B ) ) )
        & ( v1_funct_1 @ F )
        & ( v1_funct_2 @ F @ D @ B )
        & ( m1_subset_1 @ F @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ D @ B ) ) ) )
     => ( ( v1_funct_1 @ ( k1_tmap_1 @ A @ B @ C @ D @ E @ F ) )
        & ( v1_funct_2 @ ( k1_tmap_1 @ A @ B @ C @ D @ E @ F ) @ ( k4_subset_1 @ A @ C @ D ) @ B )
        & ( m1_subset_1 @ ( k1_tmap_1 @ A @ B @ C @ D @ E @ F ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( k4_subset_1 @ A @ C @ D ) @ B ) ) ) ) ) )).

thf('4',plain,(
    ! [X35: $i,X36: $i,X37: $i,X38: $i,X39: $i,X40: $i] :
      ( ~ ( m1_subset_1 @ X35 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X36 @ X37 ) ) )
      | ~ ( v1_funct_2 @ X35 @ X36 @ X37 )
      | ~ ( v1_funct_1 @ X35 )
      | ~ ( m1_subset_1 @ X38 @ ( k1_zfmisc_1 @ X39 ) )
      | ( v1_xboole_0 @ X38 )
      | ~ ( m1_subset_1 @ X36 @ ( k1_zfmisc_1 @ X39 ) )
      | ( v1_xboole_0 @ X36 )
      | ( v1_xboole_0 @ X37 )
      | ( v1_xboole_0 @ X39 )
      | ~ ( v1_funct_1 @ X40 )
      | ~ ( v1_funct_2 @ X40 @ X38 @ X37 )
      | ~ ( m1_subset_1 @ X40 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X38 @ X37 ) ) )
      | ( v1_funct_1 @ ( k1_tmap_1 @ X39 @ X37 @ X36 @ X38 @ X35 @ X40 ) ) ) ),
    inference(cnf,[status(esa)],[dt_k1_tmap_1])).

thf('5',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( v1_funct_1 @ ( k1_tmap_1 @ X2 @ sk_B @ sk_C @ X1 @ sk_E @ X0 ) )
      | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X1 @ sk_B ) ) )
      | ~ ( v1_funct_2 @ X0 @ X1 @ sk_B )
      | ~ ( v1_funct_1 @ X0 )
      | ( v1_xboole_0 @ X2 )
      | ( v1_xboole_0 @ sk_B )
      | ( v1_xboole_0 @ sk_C )
      | ~ ( m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ X2 ) )
      | ( v1_xboole_0 @ X1 )
      | ~ ( m1_subset_1 @ X1 @ ( k1_zfmisc_1 @ X2 ) )
      | ~ ( v1_funct_1 @ sk_E )
      | ~ ( v1_funct_2 @ sk_E @ sk_C @ sk_B ) ) ),
    inference('sup-',[status(thm)],['3','4'])).

thf('6',plain,(
    v1_funct_1 @ sk_E ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('7',plain,(
    v1_funct_2 @ sk_E @ sk_C @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('8',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( v1_funct_1 @ ( k1_tmap_1 @ X2 @ sk_B @ sk_C @ X1 @ sk_E @ X0 ) )
      | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X1 @ sk_B ) ) )
      | ~ ( v1_funct_2 @ X0 @ X1 @ sk_B )
      | ~ ( v1_funct_1 @ X0 )
      | ( v1_xboole_0 @ X2 )
      | ( v1_xboole_0 @ sk_B )
      | ( v1_xboole_0 @ sk_C )
      | ~ ( m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ X2 ) )
      | ( v1_xboole_0 @ X1 )
      | ~ ( m1_subset_1 @ X1 @ ( k1_zfmisc_1 @ X2 ) ) ) ),
    inference(demod,[status(thm)],['5','6','7'])).

thf('9',plain,(
    ! [X0: $i] :
      ( ~ ( m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ X0 ) )
      | ( v1_xboole_0 @ sk_D )
      | ~ ( m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ X0 ) )
      | ( v1_xboole_0 @ sk_C )
      | ( v1_xboole_0 @ sk_B )
      | ( v1_xboole_0 @ X0 )
      | ~ ( v1_funct_1 @ sk_F )
      | ~ ( v1_funct_2 @ sk_F @ sk_D @ sk_B )
      | ( v1_funct_1 @ ( k1_tmap_1 @ X0 @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F ) ) ) ),
    inference('sup-',[status(thm)],['2','8'])).

thf('10',plain,(
    v1_funct_1 @ sk_F ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('11',plain,(
    v1_funct_2 @ sk_F @ sk_D @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('12',plain,(
    ! [X0: $i] :
      ( ~ ( m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ X0 ) )
      | ( v1_xboole_0 @ sk_D )
      | ~ ( m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ X0 ) )
      | ( v1_xboole_0 @ sk_C )
      | ( v1_xboole_0 @ sk_B )
      | ( v1_xboole_0 @ X0 )
      | ( v1_funct_1 @ ( k1_tmap_1 @ X0 @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F ) ) ) ),
    inference(demod,[status(thm)],['9','10','11'])).

thf('13',plain,
    ( ( v1_funct_1 @ ( k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F ) )
    | ( v1_xboole_0 @ sk_A )
    | ( v1_xboole_0 @ sk_B )
    | ( v1_xboole_0 @ sk_C )
    | ~ ( m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ sk_A ) )
    | ( v1_xboole_0 @ sk_D ) ),
    inference('sup-',[status(thm)],['1','12'])).

thf('14',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('15',plain,
    ( ( v1_funct_1 @ ( k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F ) )
    | ( v1_xboole_0 @ sk_A )
    | ( v1_xboole_0 @ sk_B )
    | ( v1_xboole_0 @ sk_C )
    | ( v1_xboole_0 @ sk_D ) ),
    inference(demod,[status(thm)],['13','14'])).

thf('16',plain,(
    m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('17',plain,(
    m1_subset_1 @ sk_F @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_D @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('18',plain,(
    m1_subset_1 @ sk_E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_C @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('19',plain,(
    ! [X35: $i,X36: $i,X37: $i,X38: $i,X39: $i,X40: $i] :
      ( ~ ( m1_subset_1 @ X35 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X36 @ X37 ) ) )
      | ~ ( v1_funct_2 @ X35 @ X36 @ X37 )
      | ~ ( v1_funct_1 @ X35 )
      | ~ ( m1_subset_1 @ X38 @ ( k1_zfmisc_1 @ X39 ) )
      | ( v1_xboole_0 @ X38 )
      | ~ ( m1_subset_1 @ X36 @ ( k1_zfmisc_1 @ X39 ) )
      | ( v1_xboole_0 @ X36 )
      | ( v1_xboole_0 @ X37 )
      | ( v1_xboole_0 @ X39 )
      | ~ ( v1_funct_1 @ X40 )
      | ~ ( v1_funct_2 @ X40 @ X38 @ X37 )
      | ~ ( m1_subset_1 @ X40 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X38 @ X37 ) ) )
      | ( v1_funct_2 @ ( k1_tmap_1 @ X39 @ X37 @ X36 @ X38 @ X35 @ X40 ) @ ( k4_subset_1 @ X39 @ X36 @ X38 ) @ X37 ) ) ),
    inference(cnf,[status(esa)],[dt_k1_tmap_1])).

thf('20',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( v1_funct_2 @ ( k1_tmap_1 @ X1 @ sk_B @ sk_C @ X0 @ sk_E @ X2 ) @ ( k4_subset_1 @ X1 @ sk_C @ X0 ) @ sk_B )
      | ~ ( m1_subset_1 @ X2 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X0 @ sk_B ) ) )
      | ~ ( v1_funct_2 @ X2 @ X0 @ sk_B )
      | ~ ( v1_funct_1 @ X2 )
      | ( v1_xboole_0 @ X1 )
      | ( v1_xboole_0 @ sk_B )
      | ( v1_xboole_0 @ sk_C )
      | ~ ( m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ X1 ) )
      | ( v1_xboole_0 @ X0 )
      | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ X1 ) )
      | ~ ( v1_funct_1 @ sk_E )
      | ~ ( v1_funct_2 @ sk_E @ sk_C @ sk_B ) ) ),
    inference('sup-',[status(thm)],['18','19'])).

thf('21',plain,(
    v1_funct_1 @ sk_E ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('22',plain,(
    v1_funct_2 @ sk_E @ sk_C @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('23',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( v1_funct_2 @ ( k1_tmap_1 @ X1 @ sk_B @ sk_C @ X0 @ sk_E @ X2 ) @ ( k4_subset_1 @ X1 @ sk_C @ X0 ) @ sk_B )
      | ~ ( m1_subset_1 @ X2 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X0 @ sk_B ) ) )
      | ~ ( v1_funct_2 @ X2 @ X0 @ sk_B )
      | ~ ( v1_funct_1 @ X2 )
      | ( v1_xboole_0 @ X1 )
      | ( v1_xboole_0 @ sk_B )
      | ( v1_xboole_0 @ sk_C )
      | ~ ( m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ X1 ) )
      | ( v1_xboole_0 @ X0 )
      | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ X1 ) ) ) ),
    inference(demod,[status(thm)],['20','21','22'])).

thf('24',plain,(
    ! [X0: $i] :
      ( ~ ( m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ X0 ) )
      | ( v1_xboole_0 @ sk_D )
      | ~ ( m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ X0 ) )
      | ( v1_xboole_0 @ sk_C )
      | ( v1_xboole_0 @ sk_B )
      | ( v1_xboole_0 @ X0 )
      | ~ ( v1_funct_1 @ sk_F )
      | ~ ( v1_funct_2 @ sk_F @ sk_D @ sk_B )
      | ( v1_funct_2 @ ( k1_tmap_1 @ X0 @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F ) @ ( k4_subset_1 @ X0 @ sk_C @ sk_D ) @ sk_B ) ) ),
    inference('sup-',[status(thm)],['17','23'])).

thf('25',plain,(
    v1_funct_1 @ sk_F ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('26',plain,(
    v1_funct_2 @ sk_F @ sk_D @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('27',plain,(
    ! [X0: $i] :
      ( ~ ( m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ X0 ) )
      | ( v1_xboole_0 @ sk_D )
      | ~ ( m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ X0 ) )
      | ( v1_xboole_0 @ sk_C )
      | ( v1_xboole_0 @ sk_B )
      | ( v1_xboole_0 @ X0 )
      | ( v1_funct_2 @ ( k1_tmap_1 @ X0 @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F ) @ ( k4_subset_1 @ X0 @ sk_C @ sk_D ) @ sk_B ) ) ),
    inference(demod,[status(thm)],['24','25','26'])).

thf('28',plain,
    ( ( v1_funct_2 @ ( k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F ) @ ( k4_subset_1 @ sk_A @ sk_C @ sk_D ) @ sk_B )
    | ( v1_xboole_0 @ sk_A )
    | ( v1_xboole_0 @ sk_B )
    | ( v1_xboole_0 @ sk_C )
    | ~ ( m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ sk_A ) )
    | ( v1_xboole_0 @ sk_D ) ),
    inference('sup-',[status(thm)],['16','27'])).

thf('29',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('30',plain,
    ( ( v1_funct_2 @ ( k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F ) @ ( k4_subset_1 @ sk_A @ sk_C @ sk_D ) @ sk_B )
    | ( v1_xboole_0 @ sk_A )
    | ( v1_xboole_0 @ sk_B )
    | ( v1_xboole_0 @ sk_C )
    | ( v1_xboole_0 @ sk_D ) ),
    inference(demod,[status(thm)],['28','29'])).

thf('31',plain,(
    m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('32',plain,(
    m1_subset_1 @ sk_F @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_D @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('33',plain,(
    m1_subset_1 @ sk_E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_C @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('34',plain,(
    ! [X35: $i,X36: $i,X37: $i,X38: $i,X39: $i,X40: $i] :
      ( ~ ( m1_subset_1 @ X35 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X36 @ X37 ) ) )
      | ~ ( v1_funct_2 @ X35 @ X36 @ X37 )
      | ~ ( v1_funct_1 @ X35 )
      | ~ ( m1_subset_1 @ X38 @ ( k1_zfmisc_1 @ X39 ) )
      | ( v1_xboole_0 @ X38 )
      | ~ ( m1_subset_1 @ X36 @ ( k1_zfmisc_1 @ X39 ) )
      | ( v1_xboole_0 @ X36 )
      | ( v1_xboole_0 @ X37 )
      | ( v1_xboole_0 @ X39 )
      | ~ ( v1_funct_1 @ X40 )
      | ~ ( v1_funct_2 @ X40 @ X38 @ X37 )
      | ~ ( m1_subset_1 @ X40 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X38 @ X37 ) ) )
      | ( m1_subset_1 @ ( k1_tmap_1 @ X39 @ X37 @ X36 @ X38 @ X35 @ X40 ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( k4_subset_1 @ X39 @ X36 @ X38 ) @ X37 ) ) ) ) ),
    inference(cnf,[status(esa)],[dt_k1_tmap_1])).

thf('35',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( m1_subset_1 @ ( k1_tmap_1 @ X1 @ sk_B @ sk_C @ X0 @ sk_E @ X2 ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( k4_subset_1 @ X1 @ sk_C @ X0 ) @ sk_B ) ) )
      | ~ ( m1_subset_1 @ X2 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X0 @ sk_B ) ) )
      | ~ ( v1_funct_2 @ X2 @ X0 @ sk_B )
      | ~ ( v1_funct_1 @ X2 )
      | ( v1_xboole_0 @ X1 )
      | ( v1_xboole_0 @ sk_B )
      | ( v1_xboole_0 @ sk_C )
      | ~ ( m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ X1 ) )
      | ( v1_xboole_0 @ X0 )
      | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ X1 ) )
      | ~ ( v1_funct_1 @ sk_E )
      | ~ ( v1_funct_2 @ sk_E @ sk_C @ sk_B ) ) ),
    inference('sup-',[status(thm)],['33','34'])).

thf('36',plain,(
    v1_funct_1 @ sk_E ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('37',plain,(
    v1_funct_2 @ sk_E @ sk_C @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('38',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( m1_subset_1 @ ( k1_tmap_1 @ X1 @ sk_B @ sk_C @ X0 @ sk_E @ X2 ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( k4_subset_1 @ X1 @ sk_C @ X0 ) @ sk_B ) ) )
      | ~ ( m1_subset_1 @ X2 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X0 @ sk_B ) ) )
      | ~ ( v1_funct_2 @ X2 @ X0 @ sk_B )
      | ~ ( v1_funct_1 @ X2 )
      | ( v1_xboole_0 @ X1 )
      | ( v1_xboole_0 @ sk_B )
      | ( v1_xboole_0 @ sk_C )
      | ~ ( m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ X1 ) )
      | ( v1_xboole_0 @ X0 )
      | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ X1 ) ) ) ),
    inference(demod,[status(thm)],['35','36','37'])).

thf('39',plain,(
    ! [X0: $i] :
      ( ~ ( m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ X0 ) )
      | ( v1_xboole_0 @ sk_D )
      | ~ ( m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ X0 ) )
      | ( v1_xboole_0 @ sk_C )
      | ( v1_xboole_0 @ sk_B )
      | ( v1_xboole_0 @ X0 )
      | ~ ( v1_funct_1 @ sk_F )
      | ~ ( v1_funct_2 @ sk_F @ sk_D @ sk_B )
      | ( m1_subset_1 @ ( k1_tmap_1 @ X0 @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( k4_subset_1 @ X0 @ sk_C @ sk_D ) @ sk_B ) ) ) ) ),
    inference('sup-',[status(thm)],['32','38'])).

thf('40',plain,(
    v1_funct_1 @ sk_F ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('41',plain,(
    v1_funct_2 @ sk_F @ sk_D @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('42',plain,(
    ! [X0: $i] :
      ( ~ ( m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ X0 ) )
      | ( v1_xboole_0 @ sk_D )
      | ~ ( m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ X0 ) )
      | ( v1_xboole_0 @ sk_C )
      | ( v1_xboole_0 @ sk_B )
      | ( v1_xboole_0 @ X0 )
      | ( m1_subset_1 @ ( k1_tmap_1 @ X0 @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( k4_subset_1 @ X0 @ sk_C @ sk_D ) @ sk_B ) ) ) ) ),
    inference(demod,[status(thm)],['39','40','41'])).

thf('43',plain,
    ( ( m1_subset_1 @ ( k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( k4_subset_1 @ sk_A @ sk_C @ sk_D ) @ sk_B ) ) )
    | ( v1_xboole_0 @ sk_A )
    | ( v1_xboole_0 @ sk_B )
    | ( v1_xboole_0 @ sk_C )
    | ~ ( m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ sk_A ) )
    | ( v1_xboole_0 @ sk_D ) ),
    inference('sup-',[status(thm)],['31','42'])).

thf('44',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('45',plain,
    ( ( m1_subset_1 @ ( k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( k4_subset_1 @ sk_A @ sk_C @ sk_D ) @ sk_B ) ) )
    | ( v1_xboole_0 @ sk_A )
    | ( v1_xboole_0 @ sk_B )
    | ( v1_xboole_0 @ sk_C )
    | ( v1_xboole_0 @ sk_D ) ),
    inference(demod,[status(thm)],['43','44'])).

thf(d1_tmap_1,axiom,(
    ! [A: $i] :
      ( ~ ( v1_xboole_0 @ A )
     => ! [B: $i] :
          ( ~ ( v1_xboole_0 @ B )
         => ! [C: $i] :
              ( ( ~ ( v1_xboole_0 @ C )
                & ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ A ) ) )
             => ! [D: $i] :
                  ( ( ~ ( v1_xboole_0 @ D )
                    & ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ A ) ) )
                 => ! [E: $i] :
                      ( ( ( v1_funct_1 @ E )
                        & ( v1_funct_2 @ E @ C @ B )
                        & ( m1_subset_1 @ E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ C @ B ) ) ) )
                     => ! [F: $i] :
                          ( ( ( v1_funct_1 @ F )
                            & ( v1_funct_2 @ F @ D @ B )
                            & ( m1_subset_1 @ F @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ D @ B ) ) ) )
                         => ( ( ( k2_partfun1 @ C @ B @ E @ ( k9_subset_1 @ A @ C @ D ) )
                              = ( k2_partfun1 @ D @ B @ F @ ( k9_subset_1 @ A @ C @ D ) ) )
                           => ! [G: $i] :
                                ( ( ( v1_funct_1 @ G )
                                  & ( v1_funct_2 @ G @ ( k4_subset_1 @ A @ C @ D ) @ B )
                                  & ( m1_subset_1 @ G @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( k4_subset_1 @ A @ C @ D ) @ B ) ) ) )
                               => ( ( G
                                    = ( k1_tmap_1 @ A @ B @ C @ D @ E @ F ) )
                                <=> ( ( ( k2_partfun1 @ ( k4_subset_1 @ A @ C @ D ) @ B @ G @ C )
                                      = E )
                                    & ( ( k2_partfun1 @ ( k4_subset_1 @ A @ C @ D ) @ B @ G @ D )
                                      = F ) ) ) ) ) ) ) ) ) ) ) )).

thf('46',plain,(
    ! [X28: $i,X29: $i,X30: $i,X31: $i,X32: $i,X33: $i,X34: $i] :
      ( ( v1_xboole_0 @ X28 )
      | ( v1_xboole_0 @ X29 )
      | ~ ( m1_subset_1 @ X29 @ ( k1_zfmisc_1 @ X30 ) )
      | ~ ( v1_funct_1 @ X31 )
      | ~ ( v1_funct_2 @ X31 @ X29 @ X28 )
      | ~ ( m1_subset_1 @ X31 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X29 @ X28 ) ) )
      | ( X34
       != ( k1_tmap_1 @ X30 @ X28 @ X33 @ X29 @ X32 @ X31 ) )
      | ( ( k2_partfun1 @ ( k4_subset_1 @ X30 @ X33 @ X29 ) @ X28 @ X34 @ X33 )
        = X32 )
      | ~ ( m1_subset_1 @ X34 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( k4_subset_1 @ X30 @ X33 @ X29 ) @ X28 ) ) )
      | ~ ( v1_funct_2 @ X34 @ ( k4_subset_1 @ X30 @ X33 @ X29 ) @ X28 )
      | ~ ( v1_funct_1 @ X34 )
      | ( ( k2_partfun1 @ X33 @ X28 @ X32 @ ( k9_subset_1 @ X30 @ X33 @ X29 ) )
       != ( k2_partfun1 @ X29 @ X28 @ X31 @ ( k9_subset_1 @ X30 @ X33 @ X29 ) ) )
      | ~ ( m1_subset_1 @ X32 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X33 @ X28 ) ) )
      | ~ ( v1_funct_2 @ X32 @ X33 @ X28 )
      | ~ ( v1_funct_1 @ X32 )
      | ~ ( m1_subset_1 @ X33 @ ( k1_zfmisc_1 @ X30 ) )
      | ( v1_xboole_0 @ X33 )
      | ( v1_xboole_0 @ X30 ) ) ),
    inference(cnf,[status(esa)],[d1_tmap_1])).

thf('47',plain,(
    ! [X28: $i,X29: $i,X30: $i,X31: $i,X32: $i,X33: $i] :
      ( ( v1_xboole_0 @ X30 )
      | ( v1_xboole_0 @ X33 )
      | ~ ( m1_subset_1 @ X33 @ ( k1_zfmisc_1 @ X30 ) )
      | ~ ( v1_funct_1 @ X32 )
      | ~ ( v1_funct_2 @ X32 @ X33 @ X28 )
      | ~ ( m1_subset_1 @ X32 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X33 @ X28 ) ) )
      | ( ( k2_partfun1 @ X33 @ X28 @ X32 @ ( k9_subset_1 @ X30 @ X33 @ X29 ) )
       != ( k2_partfun1 @ X29 @ X28 @ X31 @ ( k9_subset_1 @ X30 @ X33 @ X29 ) ) )
      | ~ ( v1_funct_1 @ ( k1_tmap_1 @ X30 @ X28 @ X33 @ X29 @ X32 @ X31 ) )
      | ~ ( v1_funct_2 @ ( k1_tmap_1 @ X30 @ X28 @ X33 @ X29 @ X32 @ X31 ) @ ( k4_subset_1 @ X30 @ X33 @ X29 ) @ X28 )
      | ~ ( m1_subset_1 @ ( k1_tmap_1 @ X30 @ X28 @ X33 @ X29 @ X32 @ X31 ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( k4_subset_1 @ X30 @ X33 @ X29 ) @ X28 ) ) )
      | ( ( k2_partfun1 @ ( k4_subset_1 @ X30 @ X33 @ X29 ) @ X28 @ ( k1_tmap_1 @ X30 @ X28 @ X33 @ X29 @ X32 @ X31 ) @ X33 )
        = X32 )
      | ~ ( m1_subset_1 @ X31 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X29 @ X28 ) ) )
      | ~ ( v1_funct_2 @ X31 @ X29 @ X28 )
      | ~ ( v1_funct_1 @ X31 )
      | ~ ( m1_subset_1 @ X29 @ ( k1_zfmisc_1 @ X30 ) )
      | ( v1_xboole_0 @ X29 )
      | ( v1_xboole_0 @ X28 ) ) ),
    inference(simplify,[status(thm)],['46'])).

thf('48',plain,
    ( ( v1_xboole_0 @ sk_D )
    | ( v1_xboole_0 @ sk_C )
    | ( v1_xboole_0 @ sk_B )
    | ( v1_xboole_0 @ sk_A )
    | ( v1_xboole_0 @ sk_B )
    | ( v1_xboole_0 @ sk_D )
    | ~ ( m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ sk_A ) )
    | ~ ( v1_funct_1 @ sk_F )
    | ~ ( v1_funct_2 @ sk_F @ sk_D @ sk_B )
    | ~ ( m1_subset_1 @ sk_F @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_D @ sk_B ) ) )
    | ( ( k2_partfun1 @ ( k4_subset_1 @ sk_A @ sk_C @ sk_D ) @ sk_B @ ( k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F ) @ sk_C )
      = sk_E )
    | ~ ( v1_funct_2 @ ( k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F ) @ ( k4_subset_1 @ sk_A @ sk_C @ sk_D ) @ sk_B )
    | ~ ( v1_funct_1 @ ( k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F ) )
    | ( ( k2_partfun1 @ sk_C @ sk_B @ sk_E @ ( k9_subset_1 @ sk_A @ sk_C @ sk_D ) )
     != ( k2_partfun1 @ sk_D @ sk_B @ sk_F @ ( k9_subset_1 @ sk_A @ sk_C @ sk_D ) ) )
    | ~ ( m1_subset_1 @ sk_E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_C @ sk_B ) ) )
    | ~ ( v1_funct_2 @ sk_E @ sk_C @ sk_B )
    | ~ ( v1_funct_1 @ sk_E )
    | ~ ( m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ sk_A ) )
    | ( v1_xboole_0 @ sk_C )
    | ( v1_xboole_0 @ sk_A ) ),
    inference('sup-',[status(thm)],['45','47'])).

thf('49',plain,(
    m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('50',plain,(
    v1_funct_1 @ sk_F ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('51',plain,(
    v1_funct_2 @ sk_F @ sk_D @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('52',plain,(
    m1_subset_1 @ sk_F @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_D @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('53',plain,(
    m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(redefinition_k9_subset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ A ) )
     => ( ( k9_subset_1 @ A @ B @ C )
        = ( k3_xboole_0 @ B @ C ) ) ) )).

thf('54',plain,(
    ! [X6: $i,X7: $i,X8: $i] :
      ( ( ( k9_subset_1 @ X8 @ X6 @ X7 )
        = ( k3_xboole_0 @ X6 @ X7 ) )
      | ~ ( m1_subset_1 @ X7 @ ( k1_zfmisc_1 @ X8 ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k9_subset_1])).

thf('55',plain,(
    ! [X0: $i] :
      ( ( k9_subset_1 @ sk_A @ X0 @ sk_D )
      = ( k3_xboole_0 @ X0 @ sk_D ) ) ),
    inference('sup-',[status(thm)],['53','54'])).

thf('56',plain,(
    r1_subset_1 @ sk_C @ sk_D ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(redefinition_r1_subset_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( ~ ( v1_xboole_0 @ A )
        & ~ ( v1_xboole_0 @ B ) )
     => ( ( r1_subset_1 @ A @ B )
      <=> ( r1_xboole_0 @ A @ B ) ) ) )).

thf('57',plain,(
    ! [X11: $i,X12: $i] :
      ( ( v1_xboole_0 @ X11 )
      | ( v1_xboole_0 @ X12 )
      | ( r1_xboole_0 @ X11 @ X12 )
      | ~ ( r1_subset_1 @ X11 @ X12 ) ) ),
    inference(cnf,[status(esa)],[redefinition_r1_subset_1])).

thf('58',plain,
    ( ( r1_xboole_0 @ sk_C @ sk_D )
    | ( v1_xboole_0 @ sk_D )
    | ( v1_xboole_0 @ sk_C ) ),
    inference('sup-',[status(thm)],['56','57'])).

thf('59',plain,(
    ~ ( v1_xboole_0 @ sk_D ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('60',plain,
    ( ( v1_xboole_0 @ sk_C )
    | ( r1_xboole_0 @ sk_C @ sk_D ) ),
    inference(clc,[status(thm)],['58','59'])).

thf('61',plain,(
    ~ ( v1_xboole_0 @ sk_C ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('62',plain,(
    r1_xboole_0 @ sk_C @ sk_D ),
    inference(clc,[status(thm)],['60','61'])).

thf(d7_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_xboole_0 @ A @ B )
    <=> ( ( k3_xboole_0 @ A @ B )
        = k1_xboole_0 ) ) )).

thf('63',plain,(
    ! [X0: $i,X1: $i] :
      ( ( ( k3_xboole_0 @ X0 @ X1 )
        = k1_xboole_0 )
      | ~ ( r1_xboole_0 @ X0 @ X1 ) ) ),
    inference(cnf,[status(esa)],[d7_xboole_0])).

thf('64',plain,
    ( ( k3_xboole_0 @ sk_C @ sk_D )
    = k1_xboole_0 ),
    inference('sup-',[status(thm)],['62','63'])).

thf('65',plain,(
    m1_subset_1 @ sk_E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_C @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(redefinition_k2_partfun1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( ( v1_funct_1 @ C )
        & ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) )
     => ( ( k2_partfun1 @ A @ B @ C @ D )
        = ( k7_relat_1 @ C @ D ) ) ) )).

thf('66',plain,(
    ! [X24: $i,X25: $i,X26: $i,X27: $i] :
      ( ~ ( m1_subset_1 @ X24 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X25 @ X26 ) ) )
      | ~ ( v1_funct_1 @ X24 )
      | ( ( k2_partfun1 @ X25 @ X26 @ X24 @ X27 )
        = ( k7_relat_1 @ X24 @ X27 ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k2_partfun1])).

thf('67',plain,(
    ! [X0: $i] :
      ( ( ( k2_partfun1 @ sk_C @ sk_B @ sk_E @ X0 )
        = ( k7_relat_1 @ sk_E @ X0 ) )
      | ~ ( v1_funct_1 @ sk_E ) ) ),
    inference('sup-',[status(thm)],['65','66'])).

thf('68',plain,(
    v1_funct_1 @ sk_E ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('69',plain,(
    ! [X0: $i] :
      ( ( k2_partfun1 @ sk_C @ sk_B @ sk_E @ X0 )
      = ( k7_relat_1 @ sk_E @ X0 ) ) ),
    inference(demod,[status(thm)],['67','68'])).

thf(t65_xboole_1,axiom,(
    ! [A: $i] :
      ( r1_xboole_0 @ A @ k1_xboole_0 ) )).

thf('70',plain,(
    ! [X5: $i] :
      ( r1_xboole_0 @ X5 @ k1_xboole_0 ) ),
    inference(cnf,[status(esa)],[t65_xboole_1])).

thf(symmetry_r1_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_xboole_0 @ A @ B )
     => ( r1_xboole_0 @ B @ A ) ) )).

thf('71',plain,(
    ! [X3: $i,X4: $i] :
      ( ( r1_xboole_0 @ X3 @ X4 )
      | ~ ( r1_xboole_0 @ X4 @ X3 ) ) ),
    inference(cnf,[status(esa)],[symmetry_r1_xboole_0])).

thf('72',plain,(
    ! [X0: $i] :
      ( r1_xboole_0 @ k1_xboole_0 @ X0 ) ),
    inference('sup-',[status(thm)],['70','71'])).

thf('73',plain,(
    m1_subset_1 @ sk_E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_C @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(cc5_funct_2,axiom,(
    ! [A: $i,B: $i] :
      ( ~ ( v1_xboole_0 @ B )
     => ! [C: $i] :
          ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
         => ( ( ( v1_funct_1 @ C )
              & ( v1_funct_2 @ C @ A @ B ) )
           => ( ( v1_funct_1 @ C )
              & ( v1_partfun1 @ C @ A ) ) ) ) ) )).

thf('74',plain,(
    ! [X19: $i,X20: $i,X21: $i] :
      ( ~ ( m1_subset_1 @ X19 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X20 @ X21 ) ) )
      | ( v1_partfun1 @ X19 @ X20 )
      | ~ ( v1_funct_2 @ X19 @ X20 @ X21 )
      | ~ ( v1_funct_1 @ X19 )
      | ( v1_xboole_0 @ X21 ) ) ),
    inference(cnf,[status(esa)],[cc5_funct_2])).

thf('75',plain,
    ( ( v1_xboole_0 @ sk_B )
    | ~ ( v1_funct_1 @ sk_E )
    | ~ ( v1_funct_2 @ sk_E @ sk_C @ sk_B )
    | ( v1_partfun1 @ sk_E @ sk_C ) ),
    inference('sup-',[status(thm)],['73','74'])).

thf('76',plain,(
    v1_funct_1 @ sk_E ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('77',plain,(
    v1_funct_2 @ sk_E @ sk_C @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('78',plain,
    ( ( v1_xboole_0 @ sk_B )
    | ( v1_partfun1 @ sk_E @ sk_C ) ),
    inference(demod,[status(thm)],['75','76','77'])).

thf('79',plain,(
    ~ ( v1_xboole_0 @ sk_B ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('80',plain,(
    v1_partfun1 @ sk_E @ sk_C ),
    inference(clc,[status(thm)],['78','79'])).

thf(d4_partfun1,axiom,(
    ! [A: $i,B: $i] :
      ( ( ( v1_relat_1 @ B )
        & ( v4_relat_1 @ B @ A ) )
     => ( ( v1_partfun1 @ B @ A )
      <=> ( ( k1_relat_1 @ B )
          = A ) ) ) )).

thf('81',plain,(
    ! [X22: $i,X23: $i] :
      ( ~ ( v1_partfun1 @ X23 @ X22 )
      | ( ( k1_relat_1 @ X23 )
        = X22 )
      | ~ ( v4_relat_1 @ X23 @ X22 )
      | ~ ( v1_relat_1 @ X23 ) ) ),
    inference(cnf,[status(esa)],[d4_partfun1])).

thf('82',plain,
    ( ~ ( v1_relat_1 @ sk_E )
    | ~ ( v4_relat_1 @ sk_E @ sk_C )
    | ( ( k1_relat_1 @ sk_E )
      = sk_C ) ),
    inference('sup-',[status(thm)],['80','81'])).

thf('83',plain,(
    m1_subset_1 @ sk_E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_C @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(cc1_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( v1_relat_1 @ C ) ) )).

thf('84',plain,(
    ! [X13: $i,X14: $i,X15: $i] :
      ( ( v1_relat_1 @ X13 )
      | ~ ( m1_subset_1 @ X13 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X14 @ X15 ) ) ) ) ),
    inference(cnf,[status(esa)],[cc1_relset_1])).

thf('85',plain,(
    v1_relat_1 @ sk_E ),
    inference('sup-',[status(thm)],['83','84'])).

thf('86',plain,(
    m1_subset_1 @ sk_E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_C @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(cc2_relset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) )
     => ( ( v4_relat_1 @ C @ A )
        & ( v5_relat_1 @ C @ B ) ) ) )).

thf('87',plain,(
    ! [X16: $i,X17: $i,X18: $i] :
      ( ( v4_relat_1 @ X16 @ X17 )
      | ~ ( m1_subset_1 @ X16 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X17 @ X18 ) ) ) ) ),
    inference(cnf,[status(esa)],[cc2_relset_1])).

thf('88',plain,(
    v4_relat_1 @ sk_E @ sk_C ),
    inference('sup-',[status(thm)],['86','87'])).

thf('89',plain,
    ( ( k1_relat_1 @ sk_E )
    = sk_C ),
    inference(demod,[status(thm)],['82','85','88'])).

thf(t187_relat_1,axiom,(
    ! [A: $i] :
      ( ( v1_relat_1 @ A )
     => ! [B: $i] :
          ( ( r1_xboole_0 @ B @ ( k1_relat_1 @ A ) )
         => ( ( k7_relat_1 @ A @ B )
            = k1_xboole_0 ) ) ) )).

thf('90',plain,(
    ! [X9: $i,X10: $i] :
      ( ~ ( r1_xboole_0 @ X9 @ ( k1_relat_1 @ X10 ) )
      | ( ( k7_relat_1 @ X10 @ X9 )
        = k1_xboole_0 )
      | ~ ( v1_relat_1 @ X10 ) ) ),
    inference(cnf,[status(esa)],[t187_relat_1])).

thf('91',plain,(
    ! [X0: $i] :
      ( ~ ( r1_xboole_0 @ X0 @ sk_C )
      | ~ ( v1_relat_1 @ sk_E )
      | ( ( k7_relat_1 @ sk_E @ X0 )
        = k1_xboole_0 ) ) ),
    inference('sup-',[status(thm)],['89','90'])).

thf('92',plain,(
    v1_relat_1 @ sk_E ),
    inference('sup-',[status(thm)],['83','84'])).

thf('93',plain,(
    ! [X0: $i] :
      ( ~ ( r1_xboole_0 @ X0 @ sk_C )
      | ( ( k7_relat_1 @ sk_E @ X0 )
        = k1_xboole_0 ) ) ),
    inference(demod,[status(thm)],['91','92'])).

thf('94',plain,
    ( ( k7_relat_1 @ sk_E @ k1_xboole_0 )
    = k1_xboole_0 ),
    inference('sup-',[status(thm)],['72','93'])).

thf('95',plain,(
    ! [X0: $i] :
      ( ( k9_subset_1 @ sk_A @ X0 @ sk_D )
      = ( k3_xboole_0 @ X0 @ sk_D ) ) ),
    inference('sup-',[status(thm)],['53','54'])).

thf('96',plain,
    ( ( k3_xboole_0 @ sk_C @ sk_D )
    = k1_xboole_0 ),
    inference('sup-',[status(thm)],['62','63'])).

thf('97',plain,(
    m1_subset_1 @ sk_F @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_D @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('98',plain,(
    ! [X24: $i,X25: $i,X26: $i,X27: $i] :
      ( ~ ( m1_subset_1 @ X24 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X25 @ X26 ) ) )
      | ~ ( v1_funct_1 @ X24 )
      | ( ( k2_partfun1 @ X25 @ X26 @ X24 @ X27 )
        = ( k7_relat_1 @ X24 @ X27 ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k2_partfun1])).

thf('99',plain,(
    ! [X0: $i] :
      ( ( ( k2_partfun1 @ sk_D @ sk_B @ sk_F @ X0 )
        = ( k7_relat_1 @ sk_F @ X0 ) )
      | ~ ( v1_funct_1 @ sk_F ) ) ),
    inference('sup-',[status(thm)],['97','98'])).

thf('100',plain,(
    v1_funct_1 @ sk_F ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('101',plain,(
    ! [X0: $i] :
      ( ( k2_partfun1 @ sk_D @ sk_B @ sk_F @ X0 )
      = ( k7_relat_1 @ sk_F @ X0 ) ) ),
    inference(demod,[status(thm)],['99','100'])).

thf('102',plain,(
    ! [X0: $i] :
      ( r1_xboole_0 @ k1_xboole_0 @ X0 ) ),
    inference('sup-',[status(thm)],['70','71'])).

thf('103',plain,(
    m1_subset_1 @ sk_F @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_D @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('104',plain,(
    ! [X19: $i,X20: $i,X21: $i] :
      ( ~ ( m1_subset_1 @ X19 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X20 @ X21 ) ) )
      | ( v1_partfun1 @ X19 @ X20 )
      | ~ ( v1_funct_2 @ X19 @ X20 @ X21 )
      | ~ ( v1_funct_1 @ X19 )
      | ( v1_xboole_0 @ X21 ) ) ),
    inference(cnf,[status(esa)],[cc5_funct_2])).

thf('105',plain,
    ( ( v1_xboole_0 @ sk_B )
    | ~ ( v1_funct_1 @ sk_F )
    | ~ ( v1_funct_2 @ sk_F @ sk_D @ sk_B )
    | ( v1_partfun1 @ sk_F @ sk_D ) ),
    inference('sup-',[status(thm)],['103','104'])).

thf('106',plain,(
    v1_funct_1 @ sk_F ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('107',plain,(
    v1_funct_2 @ sk_F @ sk_D @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('108',plain,
    ( ( v1_xboole_0 @ sk_B )
    | ( v1_partfun1 @ sk_F @ sk_D ) ),
    inference(demod,[status(thm)],['105','106','107'])).

thf('109',plain,(
    ~ ( v1_xboole_0 @ sk_B ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('110',plain,(
    v1_partfun1 @ sk_F @ sk_D ),
    inference(clc,[status(thm)],['108','109'])).

thf('111',plain,(
    ! [X22: $i,X23: $i] :
      ( ~ ( v1_partfun1 @ X23 @ X22 )
      | ( ( k1_relat_1 @ X23 )
        = X22 )
      | ~ ( v4_relat_1 @ X23 @ X22 )
      | ~ ( v1_relat_1 @ X23 ) ) ),
    inference(cnf,[status(esa)],[d4_partfun1])).

thf('112',plain,
    ( ~ ( v1_relat_1 @ sk_F )
    | ~ ( v4_relat_1 @ sk_F @ sk_D )
    | ( ( k1_relat_1 @ sk_F )
      = sk_D ) ),
    inference('sup-',[status(thm)],['110','111'])).

thf('113',plain,(
    m1_subset_1 @ sk_F @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_D @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('114',plain,(
    ! [X13: $i,X14: $i,X15: $i] :
      ( ( v1_relat_1 @ X13 )
      | ~ ( m1_subset_1 @ X13 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X14 @ X15 ) ) ) ) ),
    inference(cnf,[status(esa)],[cc1_relset_1])).

thf('115',plain,(
    v1_relat_1 @ sk_F ),
    inference('sup-',[status(thm)],['113','114'])).

thf('116',plain,(
    m1_subset_1 @ sk_F @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_D @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('117',plain,(
    ! [X16: $i,X17: $i,X18: $i] :
      ( ( v4_relat_1 @ X16 @ X17 )
      | ~ ( m1_subset_1 @ X16 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X17 @ X18 ) ) ) ) ),
    inference(cnf,[status(esa)],[cc2_relset_1])).

thf('118',plain,(
    v4_relat_1 @ sk_F @ sk_D ),
    inference('sup-',[status(thm)],['116','117'])).

thf('119',plain,
    ( ( k1_relat_1 @ sk_F )
    = sk_D ),
    inference(demod,[status(thm)],['112','115','118'])).

thf('120',plain,(
    ! [X9: $i,X10: $i] :
      ( ~ ( r1_xboole_0 @ X9 @ ( k1_relat_1 @ X10 ) )
      | ( ( k7_relat_1 @ X10 @ X9 )
        = k1_xboole_0 )
      | ~ ( v1_relat_1 @ X10 ) ) ),
    inference(cnf,[status(esa)],[t187_relat_1])).

thf('121',plain,(
    ! [X0: $i] :
      ( ~ ( r1_xboole_0 @ X0 @ sk_D )
      | ~ ( v1_relat_1 @ sk_F )
      | ( ( k7_relat_1 @ sk_F @ X0 )
        = k1_xboole_0 ) ) ),
    inference('sup-',[status(thm)],['119','120'])).

thf('122',plain,(
    v1_relat_1 @ sk_F ),
    inference('sup-',[status(thm)],['113','114'])).

thf('123',plain,(
    ! [X0: $i] :
      ( ~ ( r1_xboole_0 @ X0 @ sk_D )
      | ( ( k7_relat_1 @ sk_F @ X0 )
        = k1_xboole_0 ) ) ),
    inference(demod,[status(thm)],['121','122'])).

thf('124',plain,
    ( ( k7_relat_1 @ sk_F @ k1_xboole_0 )
    = k1_xboole_0 ),
    inference('sup-',[status(thm)],['102','123'])).

thf('125',plain,(
    m1_subset_1 @ sk_E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_C @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('126',plain,(
    v1_funct_2 @ sk_E @ sk_C @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('127',plain,(
    v1_funct_1 @ sk_E ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('128',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('129',plain,
    ( ( v1_xboole_0 @ sk_D )
    | ( v1_xboole_0 @ sk_C )
    | ( v1_xboole_0 @ sk_B )
    | ( v1_xboole_0 @ sk_A )
    | ( v1_xboole_0 @ sk_B )
    | ( v1_xboole_0 @ sk_D )
    | ( ( k2_partfun1 @ ( k4_subset_1 @ sk_A @ sk_C @ sk_D ) @ sk_B @ ( k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F ) @ sk_C )
      = sk_E )
    | ~ ( v1_funct_2 @ ( k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F ) @ ( k4_subset_1 @ sk_A @ sk_C @ sk_D ) @ sk_B )
    | ~ ( v1_funct_1 @ ( k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F ) )
    | ( k1_xboole_0 != k1_xboole_0 )
    | ( v1_xboole_0 @ sk_C )
    | ( v1_xboole_0 @ sk_A ) ),
    inference(demod,[status(thm)],['48','49','50','51','52','55','64','69','94','95','96','101','124','125','126','127','128'])).

thf('130',plain,
    ( ~ ( v1_funct_1 @ ( k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F ) )
    | ~ ( v1_funct_2 @ ( k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F ) @ ( k4_subset_1 @ sk_A @ sk_C @ sk_D ) @ sk_B )
    | ( ( k2_partfun1 @ ( k4_subset_1 @ sk_A @ sk_C @ sk_D ) @ sk_B @ ( k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F ) @ sk_C )
      = sk_E )
    | ( v1_xboole_0 @ sk_A )
    | ( v1_xboole_0 @ sk_B )
    | ( v1_xboole_0 @ sk_C )
    | ( v1_xboole_0 @ sk_D ) ),
    inference(simplify,[status(thm)],['129'])).

thf('131',plain,
    ( ( v1_xboole_0 @ sk_D )
    | ( v1_xboole_0 @ sk_C )
    | ( v1_xboole_0 @ sk_B )
    | ( v1_xboole_0 @ sk_A )
    | ( v1_xboole_0 @ sk_D )
    | ( v1_xboole_0 @ sk_C )
    | ( v1_xboole_0 @ sk_B )
    | ( v1_xboole_0 @ sk_A )
    | ( ( k2_partfun1 @ ( k4_subset_1 @ sk_A @ sk_C @ sk_D ) @ sk_B @ ( k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F ) @ sk_C )
      = sk_E )
    | ~ ( v1_funct_1 @ ( k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F ) ) ),
    inference('sup-',[status(thm)],['30','130'])).

thf('132',plain,
    ( ~ ( v1_funct_1 @ ( k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F ) )
    | ( ( k2_partfun1 @ ( k4_subset_1 @ sk_A @ sk_C @ sk_D ) @ sk_B @ ( k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F ) @ sk_C )
      = sk_E )
    | ( v1_xboole_0 @ sk_A )
    | ( v1_xboole_0 @ sk_B )
    | ( v1_xboole_0 @ sk_C )
    | ( v1_xboole_0 @ sk_D ) ),
    inference(simplify,[status(thm)],['131'])).

thf('133',plain,
    ( ( ( k2_partfun1 @ sk_C @ sk_B @ sk_E @ ( k9_subset_1 @ sk_A @ sk_C @ sk_D ) )
     != ( k2_partfun1 @ sk_D @ sk_B @ sk_F @ ( k9_subset_1 @ sk_A @ sk_C @ sk_D ) ) )
    | ( ( k2_partfun1 @ ( k4_subset_1 @ sk_A @ sk_C @ sk_D ) @ sk_B @ ( k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F ) @ sk_C )
     != sk_E )
    | ( ( k2_partfun1 @ ( k4_subset_1 @ sk_A @ sk_C @ sk_D ) @ sk_B @ ( k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F ) @ sk_D )
     != sk_F ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('134',plain,
    ( ( ( k2_partfun1 @ ( k4_subset_1 @ sk_A @ sk_C @ sk_D ) @ sk_B @ ( k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F ) @ sk_C )
     != sk_E )
   <= ( ( k2_partfun1 @ ( k4_subset_1 @ sk_A @ sk_C @ sk_D ) @ sk_B @ ( k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F ) @ sk_C )
     != sk_E ) ),
    inference(split,[status(esa)],['133'])).

thf('135',plain,(
    ! [X0: $i] :
      ( ( k2_partfun1 @ sk_D @ sk_B @ sk_F @ X0 )
      = ( k7_relat_1 @ sk_F @ X0 ) ) ),
    inference(demod,[status(thm)],['99','100'])).

thf('136',plain,(
    ! [X0: $i] :
      ( ( k9_subset_1 @ sk_A @ X0 @ sk_D )
      = ( k3_xboole_0 @ X0 @ sk_D ) ) ),
    inference('sup-',[status(thm)],['53','54'])).

thf('137',plain,
    ( ( ( k2_partfun1 @ sk_C @ sk_B @ sk_E @ ( k9_subset_1 @ sk_A @ sk_C @ sk_D ) )
     != ( k2_partfun1 @ sk_D @ sk_B @ sk_F @ ( k9_subset_1 @ sk_A @ sk_C @ sk_D ) ) )
   <= ( ( k2_partfun1 @ sk_C @ sk_B @ sk_E @ ( k9_subset_1 @ sk_A @ sk_C @ sk_D ) )
     != ( k2_partfun1 @ sk_D @ sk_B @ sk_F @ ( k9_subset_1 @ sk_A @ sk_C @ sk_D ) ) ) ),
    inference(split,[status(esa)],['133'])).

thf('138',plain,
    ( ( ( k2_partfun1 @ sk_C @ sk_B @ sk_E @ ( k9_subset_1 @ sk_A @ sk_C @ sk_D ) )
     != ( k2_partfun1 @ sk_D @ sk_B @ sk_F @ ( k3_xboole_0 @ sk_C @ sk_D ) ) )
   <= ( ( k2_partfun1 @ sk_C @ sk_B @ sk_E @ ( k9_subset_1 @ sk_A @ sk_C @ sk_D ) )
     != ( k2_partfun1 @ sk_D @ sk_B @ sk_F @ ( k9_subset_1 @ sk_A @ sk_C @ sk_D ) ) ) ),
    inference('sup-',[status(thm)],['136','137'])).

thf('139',plain,(
    ! [X0: $i] :
      ( ( k9_subset_1 @ sk_A @ X0 @ sk_D )
      = ( k3_xboole_0 @ X0 @ sk_D ) ) ),
    inference('sup-',[status(thm)],['53','54'])).

thf('140',plain,
    ( ( ( k2_partfun1 @ sk_C @ sk_B @ sk_E @ ( k3_xboole_0 @ sk_C @ sk_D ) )
     != ( k2_partfun1 @ sk_D @ sk_B @ sk_F @ ( k3_xboole_0 @ sk_C @ sk_D ) ) )
   <= ( ( k2_partfun1 @ sk_C @ sk_B @ sk_E @ ( k9_subset_1 @ sk_A @ sk_C @ sk_D ) )
     != ( k2_partfun1 @ sk_D @ sk_B @ sk_F @ ( k9_subset_1 @ sk_A @ sk_C @ sk_D ) ) ) ),
    inference(demod,[status(thm)],['138','139'])).

thf('141',plain,
    ( ( ( k2_partfun1 @ sk_C @ sk_B @ sk_E @ ( k3_xboole_0 @ sk_C @ sk_D ) )
     != ( k7_relat_1 @ sk_F @ ( k3_xboole_0 @ sk_C @ sk_D ) ) )
   <= ( ( k2_partfun1 @ sk_C @ sk_B @ sk_E @ ( k9_subset_1 @ sk_A @ sk_C @ sk_D ) )
     != ( k2_partfun1 @ sk_D @ sk_B @ sk_F @ ( k9_subset_1 @ sk_A @ sk_C @ sk_D ) ) ) ),
    inference('sup-',[status(thm)],['135','140'])).

thf('142',plain,
    ( ( k3_xboole_0 @ sk_C @ sk_D )
    = k1_xboole_0 ),
    inference('sup-',[status(thm)],['62','63'])).

thf('143',plain,(
    ! [X0: $i] :
      ( ( k2_partfun1 @ sk_C @ sk_B @ sk_E @ X0 )
      = ( k7_relat_1 @ sk_E @ X0 ) ) ),
    inference(demod,[status(thm)],['67','68'])).

thf('144',plain,
    ( ( k7_relat_1 @ sk_E @ k1_xboole_0 )
    = k1_xboole_0 ),
    inference('sup-',[status(thm)],['72','93'])).

thf('145',plain,
    ( ( k3_xboole_0 @ sk_C @ sk_D )
    = k1_xboole_0 ),
    inference('sup-',[status(thm)],['62','63'])).

thf('146',plain,
    ( ( k7_relat_1 @ sk_F @ k1_xboole_0 )
    = k1_xboole_0 ),
    inference('sup-',[status(thm)],['102','123'])).

thf('147',plain,
    ( ( k1_xboole_0 != k1_xboole_0 )
   <= ( ( k2_partfun1 @ sk_C @ sk_B @ sk_E @ ( k9_subset_1 @ sk_A @ sk_C @ sk_D ) )
     != ( k2_partfun1 @ sk_D @ sk_B @ sk_F @ ( k9_subset_1 @ sk_A @ sk_C @ sk_D ) ) ) ),
    inference(demod,[status(thm)],['141','142','143','144','145','146'])).

thf('148',plain,
    ( ( k2_partfun1 @ sk_C @ sk_B @ sk_E @ ( k9_subset_1 @ sk_A @ sk_C @ sk_D ) )
    = ( k2_partfun1 @ sk_D @ sk_B @ sk_F @ ( k9_subset_1 @ sk_A @ sk_C @ sk_D ) ) ),
    inference(simplify,[status(thm)],['147'])).

thf('149',plain,
    ( ( v1_funct_1 @ ( k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F ) )
    | ( v1_xboole_0 @ sk_A )
    | ( v1_xboole_0 @ sk_B )
    | ( v1_xboole_0 @ sk_C )
    | ( v1_xboole_0 @ sk_D ) ),
    inference(demod,[status(thm)],['13','14'])).

thf('150',plain,
    ( ( v1_funct_2 @ ( k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F ) @ ( k4_subset_1 @ sk_A @ sk_C @ sk_D ) @ sk_B )
    | ( v1_xboole_0 @ sk_A )
    | ( v1_xboole_0 @ sk_B )
    | ( v1_xboole_0 @ sk_C )
    | ( v1_xboole_0 @ sk_D ) ),
    inference(demod,[status(thm)],['28','29'])).

thf('151',plain,
    ( ( m1_subset_1 @ ( k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( k4_subset_1 @ sk_A @ sk_C @ sk_D ) @ sk_B ) ) )
    | ( v1_xboole_0 @ sk_A )
    | ( v1_xboole_0 @ sk_B )
    | ( v1_xboole_0 @ sk_C )
    | ( v1_xboole_0 @ sk_D ) ),
    inference(demod,[status(thm)],['43','44'])).

thf('152',plain,(
    ! [X28: $i,X29: $i,X30: $i,X31: $i,X32: $i,X33: $i,X34: $i] :
      ( ( v1_xboole_0 @ X28 )
      | ( v1_xboole_0 @ X29 )
      | ~ ( m1_subset_1 @ X29 @ ( k1_zfmisc_1 @ X30 ) )
      | ~ ( v1_funct_1 @ X31 )
      | ~ ( v1_funct_2 @ X31 @ X29 @ X28 )
      | ~ ( m1_subset_1 @ X31 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X29 @ X28 ) ) )
      | ( X34
       != ( k1_tmap_1 @ X30 @ X28 @ X33 @ X29 @ X32 @ X31 ) )
      | ( ( k2_partfun1 @ ( k4_subset_1 @ X30 @ X33 @ X29 ) @ X28 @ X34 @ X29 )
        = X31 )
      | ~ ( m1_subset_1 @ X34 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( k4_subset_1 @ X30 @ X33 @ X29 ) @ X28 ) ) )
      | ~ ( v1_funct_2 @ X34 @ ( k4_subset_1 @ X30 @ X33 @ X29 ) @ X28 )
      | ~ ( v1_funct_1 @ X34 )
      | ( ( k2_partfun1 @ X33 @ X28 @ X32 @ ( k9_subset_1 @ X30 @ X33 @ X29 ) )
       != ( k2_partfun1 @ X29 @ X28 @ X31 @ ( k9_subset_1 @ X30 @ X33 @ X29 ) ) )
      | ~ ( m1_subset_1 @ X32 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X33 @ X28 ) ) )
      | ~ ( v1_funct_2 @ X32 @ X33 @ X28 )
      | ~ ( v1_funct_1 @ X32 )
      | ~ ( m1_subset_1 @ X33 @ ( k1_zfmisc_1 @ X30 ) )
      | ( v1_xboole_0 @ X33 )
      | ( v1_xboole_0 @ X30 ) ) ),
    inference(cnf,[status(esa)],[d1_tmap_1])).

thf('153',plain,(
    ! [X28: $i,X29: $i,X30: $i,X31: $i,X32: $i,X33: $i] :
      ( ( v1_xboole_0 @ X30 )
      | ( v1_xboole_0 @ X33 )
      | ~ ( m1_subset_1 @ X33 @ ( k1_zfmisc_1 @ X30 ) )
      | ~ ( v1_funct_1 @ X32 )
      | ~ ( v1_funct_2 @ X32 @ X33 @ X28 )
      | ~ ( m1_subset_1 @ X32 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X33 @ X28 ) ) )
      | ( ( k2_partfun1 @ X33 @ X28 @ X32 @ ( k9_subset_1 @ X30 @ X33 @ X29 ) )
       != ( k2_partfun1 @ X29 @ X28 @ X31 @ ( k9_subset_1 @ X30 @ X33 @ X29 ) ) )
      | ~ ( v1_funct_1 @ ( k1_tmap_1 @ X30 @ X28 @ X33 @ X29 @ X32 @ X31 ) )
      | ~ ( v1_funct_2 @ ( k1_tmap_1 @ X30 @ X28 @ X33 @ X29 @ X32 @ X31 ) @ ( k4_subset_1 @ X30 @ X33 @ X29 ) @ X28 )
      | ~ ( m1_subset_1 @ ( k1_tmap_1 @ X30 @ X28 @ X33 @ X29 @ X32 @ X31 ) @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( k4_subset_1 @ X30 @ X33 @ X29 ) @ X28 ) ) )
      | ( ( k2_partfun1 @ ( k4_subset_1 @ X30 @ X33 @ X29 ) @ X28 @ ( k1_tmap_1 @ X30 @ X28 @ X33 @ X29 @ X32 @ X31 ) @ X29 )
        = X31 )
      | ~ ( m1_subset_1 @ X31 @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ X29 @ X28 ) ) )
      | ~ ( v1_funct_2 @ X31 @ X29 @ X28 )
      | ~ ( v1_funct_1 @ X31 )
      | ~ ( m1_subset_1 @ X29 @ ( k1_zfmisc_1 @ X30 ) )
      | ( v1_xboole_0 @ X29 )
      | ( v1_xboole_0 @ X28 ) ) ),
    inference(simplify,[status(thm)],['152'])).

thf('154',plain,
    ( ( v1_xboole_0 @ sk_D )
    | ( v1_xboole_0 @ sk_C )
    | ( v1_xboole_0 @ sk_B )
    | ( v1_xboole_0 @ sk_A )
    | ( v1_xboole_0 @ sk_B )
    | ( v1_xboole_0 @ sk_D )
    | ~ ( m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ sk_A ) )
    | ~ ( v1_funct_1 @ sk_F )
    | ~ ( v1_funct_2 @ sk_F @ sk_D @ sk_B )
    | ~ ( m1_subset_1 @ sk_F @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_D @ sk_B ) ) )
    | ( ( k2_partfun1 @ ( k4_subset_1 @ sk_A @ sk_C @ sk_D ) @ sk_B @ ( k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F ) @ sk_D )
      = sk_F )
    | ~ ( v1_funct_2 @ ( k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F ) @ ( k4_subset_1 @ sk_A @ sk_C @ sk_D ) @ sk_B )
    | ~ ( v1_funct_1 @ ( k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F ) )
    | ( ( k2_partfun1 @ sk_C @ sk_B @ sk_E @ ( k9_subset_1 @ sk_A @ sk_C @ sk_D ) )
     != ( k2_partfun1 @ sk_D @ sk_B @ sk_F @ ( k9_subset_1 @ sk_A @ sk_C @ sk_D ) ) )
    | ~ ( m1_subset_1 @ sk_E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_C @ sk_B ) ) )
    | ~ ( v1_funct_2 @ sk_E @ sk_C @ sk_B )
    | ~ ( v1_funct_1 @ sk_E )
    | ~ ( m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ sk_A ) )
    | ( v1_xboole_0 @ sk_C )
    | ( v1_xboole_0 @ sk_A ) ),
    inference('sup-',[status(thm)],['151','153'])).

thf('155',plain,(
    m1_subset_1 @ sk_D @ ( k1_zfmisc_1 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('156',plain,(
    v1_funct_1 @ sk_F ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('157',plain,(
    v1_funct_2 @ sk_F @ sk_D @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('158',plain,(
    m1_subset_1 @ sk_F @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_D @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('159',plain,(
    ! [X0: $i] :
      ( ( k9_subset_1 @ sk_A @ X0 @ sk_D )
      = ( k3_xboole_0 @ X0 @ sk_D ) ) ),
    inference('sup-',[status(thm)],['53','54'])).

thf('160',plain,
    ( ( k3_xboole_0 @ sk_C @ sk_D )
    = k1_xboole_0 ),
    inference('sup-',[status(thm)],['62','63'])).

thf('161',plain,(
    ! [X0: $i] :
      ( ( k2_partfun1 @ sk_C @ sk_B @ sk_E @ X0 )
      = ( k7_relat_1 @ sk_E @ X0 ) ) ),
    inference(demod,[status(thm)],['67','68'])).

thf('162',plain,
    ( ( k7_relat_1 @ sk_E @ k1_xboole_0 )
    = k1_xboole_0 ),
    inference('sup-',[status(thm)],['72','93'])).

thf('163',plain,(
    ! [X0: $i] :
      ( ( k9_subset_1 @ sk_A @ X0 @ sk_D )
      = ( k3_xboole_0 @ X0 @ sk_D ) ) ),
    inference('sup-',[status(thm)],['53','54'])).

thf('164',plain,
    ( ( k3_xboole_0 @ sk_C @ sk_D )
    = k1_xboole_0 ),
    inference('sup-',[status(thm)],['62','63'])).

thf('165',plain,(
    ! [X0: $i] :
      ( ( k2_partfun1 @ sk_D @ sk_B @ sk_F @ X0 )
      = ( k7_relat_1 @ sk_F @ X0 ) ) ),
    inference(demod,[status(thm)],['99','100'])).

thf('166',plain,
    ( ( k7_relat_1 @ sk_F @ k1_xboole_0 )
    = k1_xboole_0 ),
    inference('sup-',[status(thm)],['102','123'])).

thf('167',plain,(
    m1_subset_1 @ sk_E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ sk_C @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('168',plain,(
    v1_funct_2 @ sk_E @ sk_C @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('169',plain,(
    v1_funct_1 @ sk_E ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('170',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('171',plain,
    ( ( v1_xboole_0 @ sk_D )
    | ( v1_xboole_0 @ sk_C )
    | ( v1_xboole_0 @ sk_B )
    | ( v1_xboole_0 @ sk_A )
    | ( v1_xboole_0 @ sk_B )
    | ( v1_xboole_0 @ sk_D )
    | ( ( k2_partfun1 @ ( k4_subset_1 @ sk_A @ sk_C @ sk_D ) @ sk_B @ ( k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F ) @ sk_D )
      = sk_F )
    | ~ ( v1_funct_2 @ ( k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F ) @ ( k4_subset_1 @ sk_A @ sk_C @ sk_D ) @ sk_B )
    | ~ ( v1_funct_1 @ ( k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F ) )
    | ( k1_xboole_0 != k1_xboole_0 )
    | ( v1_xboole_0 @ sk_C )
    | ( v1_xboole_0 @ sk_A ) ),
    inference(demod,[status(thm)],['154','155','156','157','158','159','160','161','162','163','164','165','166','167','168','169','170'])).

thf('172',plain,
    ( ~ ( v1_funct_1 @ ( k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F ) )
    | ~ ( v1_funct_2 @ ( k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F ) @ ( k4_subset_1 @ sk_A @ sk_C @ sk_D ) @ sk_B )
    | ( ( k2_partfun1 @ ( k4_subset_1 @ sk_A @ sk_C @ sk_D ) @ sk_B @ ( k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F ) @ sk_D )
      = sk_F )
    | ( v1_xboole_0 @ sk_A )
    | ( v1_xboole_0 @ sk_B )
    | ( v1_xboole_0 @ sk_C )
    | ( v1_xboole_0 @ sk_D ) ),
    inference(simplify,[status(thm)],['171'])).

thf('173',plain,
    ( ( v1_xboole_0 @ sk_D )
    | ( v1_xboole_0 @ sk_C )
    | ( v1_xboole_0 @ sk_B )
    | ( v1_xboole_0 @ sk_A )
    | ( v1_xboole_0 @ sk_D )
    | ( v1_xboole_0 @ sk_C )
    | ( v1_xboole_0 @ sk_B )
    | ( v1_xboole_0 @ sk_A )
    | ( ( k2_partfun1 @ ( k4_subset_1 @ sk_A @ sk_C @ sk_D ) @ sk_B @ ( k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F ) @ sk_D )
      = sk_F )
    | ~ ( v1_funct_1 @ ( k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F ) ) ),
    inference('sup-',[status(thm)],['150','172'])).

thf('174',plain,
    ( ~ ( v1_funct_1 @ ( k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F ) )
    | ( ( k2_partfun1 @ ( k4_subset_1 @ sk_A @ sk_C @ sk_D ) @ sk_B @ ( k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F ) @ sk_D )
      = sk_F )
    | ( v1_xboole_0 @ sk_A )
    | ( v1_xboole_0 @ sk_B )
    | ( v1_xboole_0 @ sk_C )
    | ( v1_xboole_0 @ sk_D ) ),
    inference(simplify,[status(thm)],['173'])).

thf('175',plain,
    ( ( v1_xboole_0 @ sk_D )
    | ( v1_xboole_0 @ sk_C )
    | ( v1_xboole_0 @ sk_B )
    | ( v1_xboole_0 @ sk_A )
    | ( v1_xboole_0 @ sk_D )
    | ( v1_xboole_0 @ sk_C )
    | ( v1_xboole_0 @ sk_B )
    | ( v1_xboole_0 @ sk_A )
    | ( ( k2_partfun1 @ ( k4_subset_1 @ sk_A @ sk_C @ sk_D ) @ sk_B @ ( k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F ) @ sk_D )
      = sk_F ) ),
    inference('sup-',[status(thm)],['149','174'])).

thf('176',plain,
    ( ( ( k2_partfun1 @ ( k4_subset_1 @ sk_A @ sk_C @ sk_D ) @ sk_B @ ( k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F ) @ sk_D )
      = sk_F )
    | ( v1_xboole_0 @ sk_A )
    | ( v1_xboole_0 @ sk_B )
    | ( v1_xboole_0 @ sk_C )
    | ( v1_xboole_0 @ sk_D ) ),
    inference(simplify,[status(thm)],['175'])).

thf('177',plain,
    ( ( ( k2_partfun1 @ ( k4_subset_1 @ sk_A @ sk_C @ sk_D ) @ sk_B @ ( k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F ) @ sk_D )
     != sk_F )
   <= ( ( k2_partfun1 @ ( k4_subset_1 @ sk_A @ sk_C @ sk_D ) @ sk_B @ ( k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F ) @ sk_D )
     != sk_F ) ),
    inference(split,[status(esa)],['133'])).

thf('178',plain,
    ( ( ( sk_F != sk_F )
      | ( v1_xboole_0 @ sk_D )
      | ( v1_xboole_0 @ sk_C )
      | ( v1_xboole_0 @ sk_B )
      | ( v1_xboole_0 @ sk_A ) )
   <= ( ( k2_partfun1 @ ( k4_subset_1 @ sk_A @ sk_C @ sk_D ) @ sk_B @ ( k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F ) @ sk_D )
     != sk_F ) ),
    inference('sup-',[status(thm)],['176','177'])).

thf('179',plain,
    ( ( ( v1_xboole_0 @ sk_A )
      | ( v1_xboole_0 @ sk_B )
      | ( v1_xboole_0 @ sk_C )
      | ( v1_xboole_0 @ sk_D ) )
   <= ( ( k2_partfun1 @ ( k4_subset_1 @ sk_A @ sk_C @ sk_D ) @ sk_B @ ( k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F ) @ sk_D )
     != sk_F ) ),
    inference(simplify,[status(thm)],['178'])).

thf('180',plain,(
    ~ ( v1_xboole_0 @ sk_D ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('181',plain,
    ( ( ( v1_xboole_0 @ sk_C )
      | ( v1_xboole_0 @ sk_B )
      | ( v1_xboole_0 @ sk_A ) )
   <= ( ( k2_partfun1 @ ( k4_subset_1 @ sk_A @ sk_C @ sk_D ) @ sk_B @ ( k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F ) @ sk_D )
     != sk_F ) ),
    inference('sup-',[status(thm)],['179','180'])).

thf('182',plain,(
    ~ ( v1_xboole_0 @ sk_C ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('183',plain,
    ( ( ( v1_xboole_0 @ sk_A )
      | ( v1_xboole_0 @ sk_B ) )
   <= ( ( k2_partfun1 @ ( k4_subset_1 @ sk_A @ sk_C @ sk_D ) @ sk_B @ ( k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F ) @ sk_D )
     != sk_F ) ),
    inference(clc,[status(thm)],['181','182'])).

thf('184',plain,(
    ~ ( v1_xboole_0 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('185',plain,
    ( ( v1_xboole_0 @ sk_B )
   <= ( ( k2_partfun1 @ ( k4_subset_1 @ sk_A @ sk_C @ sk_D ) @ sk_B @ ( k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F ) @ sk_D )
     != sk_F ) ),
    inference(clc,[status(thm)],['183','184'])).

thf('186',plain,(
    ~ ( v1_xboole_0 @ sk_B ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('187',plain,
    ( ( k2_partfun1 @ ( k4_subset_1 @ sk_A @ sk_C @ sk_D ) @ sk_B @ ( k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F ) @ sk_D )
    = sk_F ),
    inference('sup-',[status(thm)],['185','186'])).

thf('188',plain,
    ( ( ( k2_partfun1 @ ( k4_subset_1 @ sk_A @ sk_C @ sk_D ) @ sk_B @ ( k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F ) @ sk_C )
     != sk_E )
    | ( ( k2_partfun1 @ ( k4_subset_1 @ sk_A @ sk_C @ sk_D ) @ sk_B @ ( k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F ) @ sk_D )
     != sk_F )
    | ( ( k2_partfun1 @ sk_C @ sk_B @ sk_E @ ( k9_subset_1 @ sk_A @ sk_C @ sk_D ) )
     != ( k2_partfun1 @ sk_D @ sk_B @ sk_F @ ( k9_subset_1 @ sk_A @ sk_C @ sk_D ) ) ) ),
    inference(split,[status(esa)],['133'])).

thf('189',plain,(
    ( k2_partfun1 @ ( k4_subset_1 @ sk_A @ sk_C @ sk_D ) @ sk_B @ ( k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F ) @ sk_C )
 != sk_E ),
    inference('sat_resolution*',[status(thm)],['148','187','188'])).

thf('190',plain,(
    ( k2_partfun1 @ ( k4_subset_1 @ sk_A @ sk_C @ sk_D ) @ sk_B @ ( k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F ) @ sk_C )
 != sk_E ),
    inference(simpl_trail,[status(thm)],['134','189'])).

thf('191',plain,
    ( ~ ( v1_funct_1 @ ( k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F ) )
    | ( v1_xboole_0 @ sk_A )
    | ( v1_xboole_0 @ sk_B )
    | ( v1_xboole_0 @ sk_C )
    | ( v1_xboole_0 @ sk_D ) ),
    inference('simplify_reflect-',[status(thm)],['132','190'])).

thf('192',plain,
    ( ( v1_xboole_0 @ sk_D )
    | ( v1_xboole_0 @ sk_C )
    | ( v1_xboole_0 @ sk_B )
    | ( v1_xboole_0 @ sk_A )
    | ( v1_xboole_0 @ sk_D )
    | ( v1_xboole_0 @ sk_C )
    | ( v1_xboole_0 @ sk_B )
    | ( v1_xboole_0 @ sk_A ) ),
    inference('sup-',[status(thm)],['15','191'])).

thf('193',plain,
    ( ( v1_xboole_0 @ sk_A )
    | ( v1_xboole_0 @ sk_B )
    | ( v1_xboole_0 @ sk_C )
    | ( v1_xboole_0 @ sk_D ) ),
    inference(simplify,[status(thm)],['192'])).

thf('194',plain,(
    ~ ( v1_xboole_0 @ sk_D ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('195',plain,
    ( ( v1_xboole_0 @ sk_C )
    | ( v1_xboole_0 @ sk_B )
    | ( v1_xboole_0 @ sk_A ) ),
    inference('sup-',[status(thm)],['193','194'])).

thf('196',plain,(
    ~ ( v1_xboole_0 @ sk_C ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('197',plain,
    ( ( v1_xboole_0 @ sk_A )
    | ( v1_xboole_0 @ sk_B ) ),
    inference(clc,[status(thm)],['195','196'])).

thf('198',plain,(
    ~ ( v1_xboole_0 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('199',plain,(
    v1_xboole_0 @ sk_B ),
    inference(clc,[status(thm)],['197','198'])).

thf('200',plain,(
    $false ),
    inference(demod,[status(thm)],['0','199'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.04/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.14/0.14  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.VBlxGEECmu
% 0.14/0.34  % Computer   : n001.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % DateTime   : Tue Dec  1 21:12:15 EST 2020
% 0.14/0.35  % CPUTime    : 
% 0.14/0.35  % Running portfolio for 600 s
% 0.14/0.35  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.21/0.35  % Number of cores: 8
% 0.21/0.35  % Python version: Python 3.6.8
% 0.21/0.35  % Running in FO mode
% 0.42/0.64  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.42/0.64  % Solved by: fo/fo7.sh
% 0.42/0.64  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.42/0.64  % done 176 iterations in 0.174s
% 0.42/0.64  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.42/0.64  % SZS output start Refutation
% 0.42/0.64  thf(v1_partfun1_type, type, v1_partfun1: $i > $i > $o).
% 0.42/0.64  thf(sk_F_type, type, sk_F: $i).
% 0.42/0.64  thf(sk_D_type, type, sk_D: $i).
% 0.42/0.64  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 0.42/0.64  thf(k4_subset_1_type, type, k4_subset_1: $i > $i > $i > $i).
% 0.42/0.64  thf(k2_zfmisc_1_type, type, k2_zfmisc_1: $i > $i > $i).
% 0.42/0.64  thf(k2_partfun1_type, type, k2_partfun1: $i > $i > $i > $i > $i).
% 0.42/0.64  thf(v1_xboole_0_type, type, v1_xboole_0: $i > $o).
% 0.42/0.64  thf(v1_funct_1_type, type, v1_funct_1: $i > $o).
% 0.42/0.64  thf(v1_funct_2_type, type, v1_funct_2: $i > $i > $i > $o).
% 0.42/0.64  thf(k3_xboole_0_type, type, k3_xboole_0: $i > $i > $i).
% 0.42/0.64  thf(r1_subset_1_type, type, r1_subset_1: $i > $i > $o).
% 0.42/0.64  thf(k1_zfmisc_1_type, type, k1_zfmisc_1: $i > $i).
% 0.42/0.64  thf(sk_B_type, type, sk_B: $i).
% 0.42/0.64  thf(sk_C_type, type, sk_C: $i).
% 0.42/0.64  thf(r1_xboole_0_type, type, r1_xboole_0: $i > $i > $o).
% 0.42/0.64  thf(sk_A_type, type, sk_A: $i).
% 0.42/0.64  thf(k1_relat_1_type, type, k1_relat_1: $i > $i).
% 0.42/0.64  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 0.42/0.64  thf(k7_relat_1_type, type, k7_relat_1: $i > $i > $i).
% 0.42/0.64  thf(sk_E_type, type, sk_E: $i).
% 0.42/0.64  thf(v5_relat_1_type, type, v5_relat_1: $i > $i > $o).
% 0.42/0.64  thf(k1_tmap_1_type, type, k1_tmap_1: $i > $i > $i > $i > $i > $i > $i).
% 0.42/0.64  thf(v4_relat_1_type, type, v4_relat_1: $i > $i > $o).
% 0.42/0.64  thf(m1_subset_1_type, type, m1_subset_1: $i > $i > $o).
% 0.42/0.64  thf(k9_subset_1_type, type, k9_subset_1: $i > $i > $i > $i).
% 0.42/0.64  thf(t6_tmap_1, conjecture,
% 0.42/0.64    (![A:$i]:
% 0.42/0.64     ( ( ~( v1_xboole_0 @ A ) ) =>
% 0.42/0.64       ( ![B:$i]:
% 0.42/0.64         ( ( ~( v1_xboole_0 @ B ) ) =>
% 0.42/0.64           ( ![C:$i]:
% 0.42/0.64             ( ( ( ~( v1_xboole_0 @ C ) ) & 
% 0.42/0.64                 ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ A ) ) ) =>
% 0.42/0.64               ( ![D:$i]:
% 0.42/0.64                 ( ( ( ~( v1_xboole_0 @ D ) ) & 
% 0.42/0.64                     ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ A ) ) ) =>
% 0.42/0.64                   ( ( r1_subset_1 @ C @ D ) =>
% 0.42/0.64                     ( ![E:$i]:
% 0.42/0.64                       ( ( ( v1_funct_1 @ E ) & ( v1_funct_2 @ E @ C @ B ) & 
% 0.42/0.64                           ( m1_subset_1 @
% 0.42/0.64                             E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ C @ B ) ) ) ) =>
% 0.42/0.64                         ( ![F:$i]:
% 0.42/0.64                           ( ( ( v1_funct_1 @ F ) & 
% 0.42/0.64                               ( v1_funct_2 @ F @ D @ B ) & 
% 0.42/0.64                               ( m1_subset_1 @
% 0.42/0.64                                 F @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ D @ B ) ) ) ) =>
% 0.42/0.64                             ( ( ( k2_partfun1 @
% 0.42/0.64                                   C @ B @ E @ ( k9_subset_1 @ A @ C @ D ) ) =
% 0.42/0.64                                 ( k2_partfun1 @
% 0.42/0.64                                   D @ B @ F @ ( k9_subset_1 @ A @ C @ D ) ) ) & 
% 0.42/0.64                               ( ( k2_partfun1 @
% 0.42/0.64                                   ( k4_subset_1 @ A @ C @ D ) @ B @ 
% 0.42/0.64                                   ( k1_tmap_1 @ A @ B @ C @ D @ E @ F ) @ C ) =
% 0.42/0.64                                 ( E ) ) & 
% 0.42/0.64                               ( ( k2_partfun1 @
% 0.42/0.64                                   ( k4_subset_1 @ A @ C @ D ) @ B @ 
% 0.42/0.64                                   ( k1_tmap_1 @ A @ B @ C @ D @ E @ F ) @ D ) =
% 0.42/0.64                                 ( F ) ) ) ) ) ) ) ) ) ) ) ) ) ) ))).
% 0.42/0.64  thf(zf_stmt_0, negated_conjecture,
% 0.42/0.64    (~( ![A:$i]:
% 0.42/0.64        ( ( ~( v1_xboole_0 @ A ) ) =>
% 0.42/0.64          ( ![B:$i]:
% 0.42/0.64            ( ( ~( v1_xboole_0 @ B ) ) =>
% 0.42/0.64              ( ![C:$i]:
% 0.42/0.64                ( ( ( ~( v1_xboole_0 @ C ) ) & 
% 0.42/0.64                    ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ A ) ) ) =>
% 0.42/0.64                  ( ![D:$i]:
% 0.42/0.64                    ( ( ( ~( v1_xboole_0 @ D ) ) & 
% 0.42/0.64                        ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ A ) ) ) =>
% 0.42/0.64                      ( ( r1_subset_1 @ C @ D ) =>
% 0.42/0.64                        ( ![E:$i]:
% 0.42/0.64                          ( ( ( v1_funct_1 @ E ) & 
% 0.42/0.64                              ( v1_funct_2 @ E @ C @ B ) & 
% 0.42/0.64                              ( m1_subset_1 @
% 0.42/0.64                                E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ C @ B ) ) ) ) =>
% 0.42/0.64                            ( ![F:$i]:
% 0.42/0.64                              ( ( ( v1_funct_1 @ F ) & 
% 0.42/0.64                                  ( v1_funct_2 @ F @ D @ B ) & 
% 0.42/0.64                                  ( m1_subset_1 @
% 0.42/0.64                                    F @ 
% 0.42/0.64                                    ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ D @ B ) ) ) ) =>
% 0.42/0.64                                ( ( ( k2_partfun1 @
% 0.42/0.64                                      C @ B @ E @ ( k9_subset_1 @ A @ C @ D ) ) =
% 0.42/0.64                                    ( k2_partfun1 @
% 0.42/0.64                                      D @ B @ F @ ( k9_subset_1 @ A @ C @ D ) ) ) & 
% 0.42/0.64                                  ( ( k2_partfun1 @
% 0.42/0.64                                      ( k4_subset_1 @ A @ C @ D ) @ B @ 
% 0.42/0.64                                      ( k1_tmap_1 @ A @ B @ C @ D @ E @ F ) @ C ) =
% 0.42/0.64                                    ( E ) ) & 
% 0.42/0.64                                  ( ( k2_partfun1 @
% 0.42/0.64                                      ( k4_subset_1 @ A @ C @ D ) @ B @ 
% 0.42/0.64                                      ( k1_tmap_1 @ A @ B @ C @ D @ E @ F ) @ D ) =
% 0.42/0.64                                    ( F ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )),
% 0.42/0.64    inference('cnf.neg', [status(esa)], [t6_tmap_1])).
% 0.42/0.64  thf('0', plain, (~ (v1_xboole_0 @ sk_B)),
% 0.42/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.42/0.64  thf('1', plain, ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ sk_A))),
% 0.42/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.42/0.64  thf('2', plain,
% 0.42/0.64      ((m1_subset_1 @ sk_F @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_D @ sk_B)))),
% 0.42/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.42/0.64  thf('3', plain,
% 0.42/0.64      ((m1_subset_1 @ sk_E @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_C @ sk_B)))),
% 0.42/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.42/0.64  thf(dt_k1_tmap_1, axiom,
% 0.42/0.64    (![A:$i,B:$i,C:$i,D:$i,E:$i,F:$i]:
% 0.42/0.64     ( ( ( ~( v1_xboole_0 @ A ) ) & ( ~( v1_xboole_0 @ B ) ) & 
% 0.42/0.64         ( ~( v1_xboole_0 @ C ) ) & 
% 0.42/0.64         ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ A ) ) & 
% 0.42/0.64         ( ~( v1_xboole_0 @ D ) ) & 
% 0.42/0.64         ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ A ) ) & ( v1_funct_1 @ E ) & 
% 0.42/0.64         ( v1_funct_2 @ E @ C @ B ) & 
% 0.42/0.64         ( m1_subset_1 @ E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ C @ B ) ) ) & 
% 0.42/0.64         ( v1_funct_1 @ F ) & ( v1_funct_2 @ F @ D @ B ) & 
% 0.42/0.64         ( m1_subset_1 @ F @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ D @ B ) ) ) ) =>
% 0.42/0.64       ( ( v1_funct_1 @ ( k1_tmap_1 @ A @ B @ C @ D @ E @ F ) ) & 
% 0.42/0.64         ( v1_funct_2 @
% 0.42/0.64           ( k1_tmap_1 @ A @ B @ C @ D @ E @ F ) @ 
% 0.42/0.64           ( k4_subset_1 @ A @ C @ D ) @ B ) & 
% 0.42/0.64         ( m1_subset_1 @
% 0.42/0.64           ( k1_tmap_1 @ A @ B @ C @ D @ E @ F ) @ 
% 0.42/0.64           ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ ( k4_subset_1 @ A @ C @ D ) @ B ) ) ) ) ))).
% 0.42/0.64  thf('4', plain,
% 0.42/0.64      (![X35 : $i, X36 : $i, X37 : $i, X38 : $i, X39 : $i, X40 : $i]:
% 0.42/0.64         (~ (m1_subset_1 @ X35 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X36 @ X37)))
% 0.42/0.64          | ~ (v1_funct_2 @ X35 @ X36 @ X37)
% 0.42/0.64          | ~ (v1_funct_1 @ X35)
% 0.42/0.64          | ~ (m1_subset_1 @ X38 @ (k1_zfmisc_1 @ X39))
% 0.42/0.64          | (v1_xboole_0 @ X38)
% 0.42/0.64          | ~ (m1_subset_1 @ X36 @ (k1_zfmisc_1 @ X39))
% 0.42/0.64          | (v1_xboole_0 @ X36)
% 0.42/0.64          | (v1_xboole_0 @ X37)
% 0.42/0.64          | (v1_xboole_0 @ X39)
% 0.42/0.64          | ~ (v1_funct_1 @ X40)
% 0.42/0.64          | ~ (v1_funct_2 @ X40 @ X38 @ X37)
% 0.42/0.64          | ~ (m1_subset_1 @ X40 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X38 @ X37)))
% 0.42/0.64          | (v1_funct_1 @ (k1_tmap_1 @ X39 @ X37 @ X36 @ X38 @ X35 @ X40)))),
% 0.42/0.64      inference('cnf', [status(esa)], [dt_k1_tmap_1])).
% 0.42/0.64  thf('5', plain,
% 0.42/0.64      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.42/0.64         ((v1_funct_1 @ (k1_tmap_1 @ X2 @ sk_B @ sk_C @ X1 @ sk_E @ X0))
% 0.42/0.64          | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X1 @ sk_B)))
% 0.42/0.64          | ~ (v1_funct_2 @ X0 @ X1 @ sk_B)
% 0.42/0.64          | ~ (v1_funct_1 @ X0)
% 0.42/0.64          | (v1_xboole_0 @ X2)
% 0.42/0.64          | (v1_xboole_0 @ sk_B)
% 0.42/0.64          | (v1_xboole_0 @ sk_C)
% 0.42/0.64          | ~ (m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ X2))
% 0.42/0.64          | (v1_xboole_0 @ X1)
% 0.42/0.64          | ~ (m1_subset_1 @ X1 @ (k1_zfmisc_1 @ X2))
% 0.42/0.64          | ~ (v1_funct_1 @ sk_E)
% 0.42/0.64          | ~ (v1_funct_2 @ sk_E @ sk_C @ sk_B))),
% 0.42/0.64      inference('sup-', [status(thm)], ['3', '4'])).
% 0.42/0.64  thf('6', plain, ((v1_funct_1 @ sk_E)),
% 0.42/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.42/0.64  thf('7', plain, ((v1_funct_2 @ sk_E @ sk_C @ sk_B)),
% 0.42/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.42/0.64  thf('8', plain,
% 0.42/0.64      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.48/0.64         ((v1_funct_1 @ (k1_tmap_1 @ X2 @ sk_B @ sk_C @ X1 @ sk_E @ X0))
% 0.48/0.64          | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X1 @ sk_B)))
% 0.48/0.64          | ~ (v1_funct_2 @ X0 @ X1 @ sk_B)
% 0.48/0.64          | ~ (v1_funct_1 @ X0)
% 0.48/0.64          | (v1_xboole_0 @ X2)
% 0.48/0.64          | (v1_xboole_0 @ sk_B)
% 0.48/0.64          | (v1_xboole_0 @ sk_C)
% 0.48/0.64          | ~ (m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ X2))
% 0.48/0.64          | (v1_xboole_0 @ X1)
% 0.48/0.64          | ~ (m1_subset_1 @ X1 @ (k1_zfmisc_1 @ X2)))),
% 0.48/0.64      inference('demod', [status(thm)], ['5', '6', '7'])).
% 0.48/0.64  thf('9', plain,
% 0.48/0.64      (![X0 : $i]:
% 0.48/0.64         (~ (m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ X0))
% 0.48/0.64          | (v1_xboole_0 @ sk_D)
% 0.48/0.64          | ~ (m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ X0))
% 0.48/0.64          | (v1_xboole_0 @ sk_C)
% 0.48/0.64          | (v1_xboole_0 @ sk_B)
% 0.48/0.64          | (v1_xboole_0 @ X0)
% 0.48/0.64          | ~ (v1_funct_1 @ sk_F)
% 0.48/0.64          | ~ (v1_funct_2 @ sk_F @ sk_D @ sk_B)
% 0.48/0.64          | (v1_funct_1 @ (k1_tmap_1 @ X0 @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F)))),
% 0.48/0.64      inference('sup-', [status(thm)], ['2', '8'])).
% 0.48/0.64  thf('10', plain, ((v1_funct_1 @ sk_F)),
% 0.48/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.48/0.64  thf('11', plain, ((v1_funct_2 @ sk_F @ sk_D @ sk_B)),
% 0.48/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.48/0.64  thf('12', plain,
% 0.48/0.64      (![X0 : $i]:
% 0.48/0.64         (~ (m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ X0))
% 0.48/0.64          | (v1_xboole_0 @ sk_D)
% 0.48/0.64          | ~ (m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ X0))
% 0.48/0.64          | (v1_xboole_0 @ sk_C)
% 0.48/0.64          | (v1_xboole_0 @ sk_B)
% 0.48/0.64          | (v1_xboole_0 @ X0)
% 0.48/0.64          | (v1_funct_1 @ (k1_tmap_1 @ X0 @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F)))),
% 0.48/0.64      inference('demod', [status(thm)], ['9', '10', '11'])).
% 0.48/0.64  thf('13', plain,
% 0.48/0.64      (((v1_funct_1 @ (k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F))
% 0.48/0.64        | (v1_xboole_0 @ sk_A)
% 0.48/0.64        | (v1_xboole_0 @ sk_B)
% 0.48/0.64        | (v1_xboole_0 @ sk_C)
% 0.48/0.64        | ~ (m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ sk_A))
% 0.48/0.64        | (v1_xboole_0 @ sk_D))),
% 0.48/0.64      inference('sup-', [status(thm)], ['1', '12'])).
% 0.48/0.64  thf('14', plain, ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ sk_A))),
% 0.48/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.48/0.64  thf('15', plain,
% 0.48/0.64      (((v1_funct_1 @ (k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F))
% 0.48/0.64        | (v1_xboole_0 @ sk_A)
% 0.48/0.64        | (v1_xboole_0 @ sk_B)
% 0.48/0.64        | (v1_xboole_0 @ sk_C)
% 0.48/0.64        | (v1_xboole_0 @ sk_D))),
% 0.48/0.64      inference('demod', [status(thm)], ['13', '14'])).
% 0.48/0.64  thf('16', plain, ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ sk_A))),
% 0.48/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.48/0.64  thf('17', plain,
% 0.48/0.64      ((m1_subset_1 @ sk_F @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_D @ sk_B)))),
% 0.48/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.48/0.64  thf('18', plain,
% 0.48/0.64      ((m1_subset_1 @ sk_E @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_C @ sk_B)))),
% 0.48/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.48/0.64  thf('19', plain,
% 0.48/0.64      (![X35 : $i, X36 : $i, X37 : $i, X38 : $i, X39 : $i, X40 : $i]:
% 0.48/0.64         (~ (m1_subset_1 @ X35 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X36 @ X37)))
% 0.48/0.64          | ~ (v1_funct_2 @ X35 @ X36 @ X37)
% 0.48/0.64          | ~ (v1_funct_1 @ X35)
% 0.48/0.64          | ~ (m1_subset_1 @ X38 @ (k1_zfmisc_1 @ X39))
% 0.48/0.64          | (v1_xboole_0 @ X38)
% 0.48/0.64          | ~ (m1_subset_1 @ X36 @ (k1_zfmisc_1 @ X39))
% 0.48/0.64          | (v1_xboole_0 @ X36)
% 0.48/0.64          | (v1_xboole_0 @ X37)
% 0.48/0.64          | (v1_xboole_0 @ X39)
% 0.48/0.64          | ~ (v1_funct_1 @ X40)
% 0.48/0.64          | ~ (v1_funct_2 @ X40 @ X38 @ X37)
% 0.48/0.64          | ~ (m1_subset_1 @ X40 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X38 @ X37)))
% 0.48/0.64          | (v1_funct_2 @ (k1_tmap_1 @ X39 @ X37 @ X36 @ X38 @ X35 @ X40) @ 
% 0.48/0.64             (k4_subset_1 @ X39 @ X36 @ X38) @ X37))),
% 0.48/0.64      inference('cnf', [status(esa)], [dt_k1_tmap_1])).
% 0.48/0.64  thf('20', plain,
% 0.48/0.64      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.48/0.64         ((v1_funct_2 @ (k1_tmap_1 @ X1 @ sk_B @ sk_C @ X0 @ sk_E @ X2) @ 
% 0.48/0.64           (k4_subset_1 @ X1 @ sk_C @ X0) @ sk_B)
% 0.48/0.64          | ~ (m1_subset_1 @ X2 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X0 @ sk_B)))
% 0.48/0.64          | ~ (v1_funct_2 @ X2 @ X0 @ sk_B)
% 0.48/0.64          | ~ (v1_funct_1 @ X2)
% 0.48/0.64          | (v1_xboole_0 @ X1)
% 0.48/0.64          | (v1_xboole_0 @ sk_B)
% 0.48/0.64          | (v1_xboole_0 @ sk_C)
% 0.48/0.64          | ~ (m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ X1))
% 0.48/0.64          | (v1_xboole_0 @ X0)
% 0.48/0.64          | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ X1))
% 0.48/0.64          | ~ (v1_funct_1 @ sk_E)
% 0.48/0.64          | ~ (v1_funct_2 @ sk_E @ sk_C @ sk_B))),
% 0.48/0.64      inference('sup-', [status(thm)], ['18', '19'])).
% 0.48/0.64  thf('21', plain, ((v1_funct_1 @ sk_E)),
% 0.48/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.48/0.64  thf('22', plain, ((v1_funct_2 @ sk_E @ sk_C @ sk_B)),
% 0.48/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.48/0.64  thf('23', plain,
% 0.48/0.64      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.48/0.64         ((v1_funct_2 @ (k1_tmap_1 @ X1 @ sk_B @ sk_C @ X0 @ sk_E @ X2) @ 
% 0.48/0.64           (k4_subset_1 @ X1 @ sk_C @ X0) @ sk_B)
% 0.48/0.64          | ~ (m1_subset_1 @ X2 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X0 @ sk_B)))
% 0.48/0.64          | ~ (v1_funct_2 @ X2 @ X0 @ sk_B)
% 0.48/0.64          | ~ (v1_funct_1 @ X2)
% 0.48/0.64          | (v1_xboole_0 @ X1)
% 0.48/0.64          | (v1_xboole_0 @ sk_B)
% 0.48/0.64          | (v1_xboole_0 @ sk_C)
% 0.48/0.64          | ~ (m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ X1))
% 0.48/0.64          | (v1_xboole_0 @ X0)
% 0.48/0.64          | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ X1)))),
% 0.48/0.64      inference('demod', [status(thm)], ['20', '21', '22'])).
% 0.48/0.64  thf('24', plain,
% 0.48/0.64      (![X0 : $i]:
% 0.48/0.64         (~ (m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ X0))
% 0.48/0.64          | (v1_xboole_0 @ sk_D)
% 0.48/0.64          | ~ (m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ X0))
% 0.48/0.64          | (v1_xboole_0 @ sk_C)
% 0.48/0.64          | (v1_xboole_0 @ sk_B)
% 0.48/0.64          | (v1_xboole_0 @ X0)
% 0.48/0.64          | ~ (v1_funct_1 @ sk_F)
% 0.48/0.64          | ~ (v1_funct_2 @ sk_F @ sk_D @ sk_B)
% 0.48/0.64          | (v1_funct_2 @ 
% 0.48/0.64             (k1_tmap_1 @ X0 @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F) @ 
% 0.48/0.64             (k4_subset_1 @ X0 @ sk_C @ sk_D) @ sk_B))),
% 0.48/0.64      inference('sup-', [status(thm)], ['17', '23'])).
% 0.48/0.64  thf('25', plain, ((v1_funct_1 @ sk_F)),
% 0.48/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.48/0.64  thf('26', plain, ((v1_funct_2 @ sk_F @ sk_D @ sk_B)),
% 0.48/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.48/0.64  thf('27', plain,
% 0.48/0.64      (![X0 : $i]:
% 0.48/0.64         (~ (m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ X0))
% 0.48/0.64          | (v1_xboole_0 @ sk_D)
% 0.48/0.64          | ~ (m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ X0))
% 0.48/0.64          | (v1_xboole_0 @ sk_C)
% 0.48/0.64          | (v1_xboole_0 @ sk_B)
% 0.48/0.64          | (v1_xboole_0 @ X0)
% 0.48/0.64          | (v1_funct_2 @ 
% 0.48/0.64             (k1_tmap_1 @ X0 @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F) @ 
% 0.48/0.64             (k4_subset_1 @ X0 @ sk_C @ sk_D) @ sk_B))),
% 0.48/0.64      inference('demod', [status(thm)], ['24', '25', '26'])).
% 0.48/0.64  thf('28', plain,
% 0.48/0.64      (((v1_funct_2 @ (k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F) @ 
% 0.48/0.64         (k4_subset_1 @ sk_A @ sk_C @ sk_D) @ sk_B)
% 0.48/0.64        | (v1_xboole_0 @ sk_A)
% 0.48/0.64        | (v1_xboole_0 @ sk_B)
% 0.48/0.64        | (v1_xboole_0 @ sk_C)
% 0.48/0.64        | ~ (m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ sk_A))
% 0.48/0.64        | (v1_xboole_0 @ sk_D))),
% 0.48/0.64      inference('sup-', [status(thm)], ['16', '27'])).
% 0.48/0.64  thf('29', plain, ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ sk_A))),
% 0.48/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.48/0.64  thf('30', plain,
% 0.48/0.64      (((v1_funct_2 @ (k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F) @ 
% 0.48/0.64         (k4_subset_1 @ sk_A @ sk_C @ sk_D) @ sk_B)
% 0.48/0.64        | (v1_xboole_0 @ sk_A)
% 0.48/0.64        | (v1_xboole_0 @ sk_B)
% 0.48/0.64        | (v1_xboole_0 @ sk_C)
% 0.48/0.64        | (v1_xboole_0 @ sk_D))),
% 0.48/0.64      inference('demod', [status(thm)], ['28', '29'])).
% 0.48/0.64  thf('31', plain, ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ sk_A))),
% 0.48/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.48/0.64  thf('32', plain,
% 0.48/0.64      ((m1_subset_1 @ sk_F @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_D @ sk_B)))),
% 0.48/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.48/0.64  thf('33', plain,
% 0.48/0.64      ((m1_subset_1 @ sk_E @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_C @ sk_B)))),
% 0.48/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.48/0.64  thf('34', plain,
% 0.48/0.64      (![X35 : $i, X36 : $i, X37 : $i, X38 : $i, X39 : $i, X40 : $i]:
% 0.48/0.64         (~ (m1_subset_1 @ X35 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X36 @ X37)))
% 0.48/0.64          | ~ (v1_funct_2 @ X35 @ X36 @ X37)
% 0.48/0.64          | ~ (v1_funct_1 @ X35)
% 0.48/0.64          | ~ (m1_subset_1 @ X38 @ (k1_zfmisc_1 @ X39))
% 0.48/0.64          | (v1_xboole_0 @ X38)
% 0.48/0.64          | ~ (m1_subset_1 @ X36 @ (k1_zfmisc_1 @ X39))
% 0.48/0.64          | (v1_xboole_0 @ X36)
% 0.48/0.64          | (v1_xboole_0 @ X37)
% 0.48/0.64          | (v1_xboole_0 @ X39)
% 0.48/0.64          | ~ (v1_funct_1 @ X40)
% 0.48/0.64          | ~ (v1_funct_2 @ X40 @ X38 @ X37)
% 0.48/0.64          | ~ (m1_subset_1 @ X40 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X38 @ X37)))
% 0.48/0.64          | (m1_subset_1 @ (k1_tmap_1 @ X39 @ X37 @ X36 @ X38 @ X35 @ X40) @ 
% 0.48/0.64             (k1_zfmisc_1 @ 
% 0.48/0.64              (k2_zfmisc_1 @ (k4_subset_1 @ X39 @ X36 @ X38) @ X37))))),
% 0.48/0.64      inference('cnf', [status(esa)], [dt_k1_tmap_1])).
% 0.48/0.64  thf('35', plain,
% 0.48/0.64      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.48/0.64         ((m1_subset_1 @ (k1_tmap_1 @ X1 @ sk_B @ sk_C @ X0 @ sk_E @ X2) @ 
% 0.48/0.64           (k1_zfmisc_1 @ (k2_zfmisc_1 @ (k4_subset_1 @ X1 @ sk_C @ X0) @ sk_B)))
% 0.48/0.64          | ~ (m1_subset_1 @ X2 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X0 @ sk_B)))
% 0.48/0.64          | ~ (v1_funct_2 @ X2 @ X0 @ sk_B)
% 0.48/0.64          | ~ (v1_funct_1 @ X2)
% 0.48/0.64          | (v1_xboole_0 @ X1)
% 0.48/0.64          | (v1_xboole_0 @ sk_B)
% 0.48/0.64          | (v1_xboole_0 @ sk_C)
% 0.48/0.64          | ~ (m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ X1))
% 0.48/0.64          | (v1_xboole_0 @ X0)
% 0.48/0.64          | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ X1))
% 0.48/0.64          | ~ (v1_funct_1 @ sk_E)
% 0.48/0.64          | ~ (v1_funct_2 @ sk_E @ sk_C @ sk_B))),
% 0.48/0.64      inference('sup-', [status(thm)], ['33', '34'])).
% 0.48/0.64  thf('36', plain, ((v1_funct_1 @ sk_E)),
% 0.48/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.48/0.64  thf('37', plain, ((v1_funct_2 @ sk_E @ sk_C @ sk_B)),
% 0.48/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.48/0.64  thf('38', plain,
% 0.48/0.64      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.48/0.64         ((m1_subset_1 @ (k1_tmap_1 @ X1 @ sk_B @ sk_C @ X0 @ sk_E @ X2) @ 
% 0.48/0.64           (k1_zfmisc_1 @ (k2_zfmisc_1 @ (k4_subset_1 @ X1 @ sk_C @ X0) @ sk_B)))
% 0.48/0.64          | ~ (m1_subset_1 @ X2 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X0 @ sk_B)))
% 0.48/0.64          | ~ (v1_funct_2 @ X2 @ X0 @ sk_B)
% 0.48/0.64          | ~ (v1_funct_1 @ X2)
% 0.48/0.64          | (v1_xboole_0 @ X1)
% 0.48/0.64          | (v1_xboole_0 @ sk_B)
% 0.48/0.64          | (v1_xboole_0 @ sk_C)
% 0.48/0.64          | ~ (m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ X1))
% 0.48/0.64          | (v1_xboole_0 @ X0)
% 0.48/0.64          | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ X1)))),
% 0.48/0.64      inference('demod', [status(thm)], ['35', '36', '37'])).
% 0.48/0.64  thf('39', plain,
% 0.48/0.64      (![X0 : $i]:
% 0.48/0.64         (~ (m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ X0))
% 0.48/0.64          | (v1_xboole_0 @ sk_D)
% 0.48/0.64          | ~ (m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ X0))
% 0.48/0.64          | (v1_xboole_0 @ sk_C)
% 0.48/0.64          | (v1_xboole_0 @ sk_B)
% 0.48/0.64          | (v1_xboole_0 @ X0)
% 0.48/0.64          | ~ (v1_funct_1 @ sk_F)
% 0.48/0.64          | ~ (v1_funct_2 @ sk_F @ sk_D @ sk_B)
% 0.48/0.64          | (m1_subset_1 @ 
% 0.48/0.64             (k1_tmap_1 @ X0 @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F) @ 
% 0.48/0.64             (k1_zfmisc_1 @ 
% 0.48/0.64              (k2_zfmisc_1 @ (k4_subset_1 @ X0 @ sk_C @ sk_D) @ sk_B))))),
% 0.48/0.64      inference('sup-', [status(thm)], ['32', '38'])).
% 0.48/0.64  thf('40', plain, ((v1_funct_1 @ sk_F)),
% 0.48/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.48/0.64  thf('41', plain, ((v1_funct_2 @ sk_F @ sk_D @ sk_B)),
% 0.48/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.48/0.64  thf('42', plain,
% 0.48/0.64      (![X0 : $i]:
% 0.48/0.64         (~ (m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ X0))
% 0.48/0.64          | (v1_xboole_0 @ sk_D)
% 0.48/0.64          | ~ (m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ X0))
% 0.48/0.64          | (v1_xboole_0 @ sk_C)
% 0.48/0.64          | (v1_xboole_0 @ sk_B)
% 0.48/0.64          | (v1_xboole_0 @ X0)
% 0.48/0.64          | (m1_subset_1 @ 
% 0.48/0.64             (k1_tmap_1 @ X0 @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F) @ 
% 0.48/0.64             (k1_zfmisc_1 @ 
% 0.48/0.64              (k2_zfmisc_1 @ (k4_subset_1 @ X0 @ sk_C @ sk_D) @ sk_B))))),
% 0.48/0.64      inference('demod', [status(thm)], ['39', '40', '41'])).
% 0.48/0.64  thf('43', plain,
% 0.48/0.64      (((m1_subset_1 @ (k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F) @ 
% 0.48/0.64         (k1_zfmisc_1 @ 
% 0.48/0.64          (k2_zfmisc_1 @ (k4_subset_1 @ sk_A @ sk_C @ sk_D) @ sk_B)))
% 0.48/0.64        | (v1_xboole_0 @ sk_A)
% 0.48/0.64        | (v1_xboole_0 @ sk_B)
% 0.48/0.64        | (v1_xboole_0 @ sk_C)
% 0.48/0.64        | ~ (m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ sk_A))
% 0.48/0.64        | (v1_xboole_0 @ sk_D))),
% 0.48/0.64      inference('sup-', [status(thm)], ['31', '42'])).
% 0.48/0.64  thf('44', plain, ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ sk_A))),
% 0.48/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.48/0.64  thf('45', plain,
% 0.48/0.64      (((m1_subset_1 @ (k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F) @ 
% 0.48/0.64         (k1_zfmisc_1 @ 
% 0.48/0.64          (k2_zfmisc_1 @ (k4_subset_1 @ sk_A @ sk_C @ sk_D) @ sk_B)))
% 0.48/0.64        | (v1_xboole_0 @ sk_A)
% 0.48/0.64        | (v1_xboole_0 @ sk_B)
% 0.48/0.64        | (v1_xboole_0 @ sk_C)
% 0.48/0.64        | (v1_xboole_0 @ sk_D))),
% 0.48/0.64      inference('demod', [status(thm)], ['43', '44'])).
% 0.48/0.64  thf(d1_tmap_1, axiom,
% 0.48/0.64    (![A:$i]:
% 0.48/0.64     ( ( ~( v1_xboole_0 @ A ) ) =>
% 0.48/0.64       ( ![B:$i]:
% 0.48/0.64         ( ( ~( v1_xboole_0 @ B ) ) =>
% 0.48/0.64           ( ![C:$i]:
% 0.48/0.64             ( ( ( ~( v1_xboole_0 @ C ) ) & 
% 0.48/0.64                 ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ A ) ) ) =>
% 0.48/0.64               ( ![D:$i]:
% 0.48/0.64                 ( ( ( ~( v1_xboole_0 @ D ) ) & 
% 0.48/0.64                     ( m1_subset_1 @ D @ ( k1_zfmisc_1 @ A ) ) ) =>
% 0.48/0.64                   ( ![E:$i]:
% 0.48/0.64                     ( ( ( v1_funct_1 @ E ) & ( v1_funct_2 @ E @ C @ B ) & 
% 0.48/0.64                         ( m1_subset_1 @
% 0.48/0.64                           E @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ C @ B ) ) ) ) =>
% 0.48/0.64                       ( ![F:$i]:
% 0.48/0.64                         ( ( ( v1_funct_1 @ F ) & ( v1_funct_2 @ F @ D @ B ) & 
% 0.48/0.64                             ( m1_subset_1 @
% 0.48/0.64                               F @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ D @ B ) ) ) ) =>
% 0.48/0.64                           ( ( ( k2_partfun1 @
% 0.48/0.64                                 C @ B @ E @ ( k9_subset_1 @ A @ C @ D ) ) =
% 0.48/0.64                               ( k2_partfun1 @
% 0.48/0.64                                 D @ B @ F @ ( k9_subset_1 @ A @ C @ D ) ) ) =>
% 0.48/0.64                             ( ![G:$i]:
% 0.48/0.64                               ( ( ( v1_funct_1 @ G ) & 
% 0.48/0.64                                   ( v1_funct_2 @
% 0.48/0.64                                     G @ ( k4_subset_1 @ A @ C @ D ) @ B ) & 
% 0.48/0.64                                   ( m1_subset_1 @
% 0.48/0.64                                     G @ 
% 0.48/0.64                                     ( k1_zfmisc_1 @
% 0.48/0.64                                       ( k2_zfmisc_1 @
% 0.48/0.64                                         ( k4_subset_1 @ A @ C @ D ) @ B ) ) ) ) =>
% 0.48/0.64                                 ( ( ( G ) =
% 0.48/0.64                                     ( k1_tmap_1 @ A @ B @ C @ D @ E @ F ) ) <=>
% 0.48/0.64                                   ( ( ( k2_partfun1 @
% 0.48/0.64                                         ( k4_subset_1 @ A @ C @ D ) @ B @ G @ 
% 0.48/0.64                                         C ) =
% 0.48/0.64                                       ( E ) ) & 
% 0.48/0.64                                     ( ( k2_partfun1 @
% 0.48/0.64                                         ( k4_subset_1 @ A @ C @ D ) @ B @ G @ 
% 0.48/0.64                                         D ) =
% 0.48/0.64                                       ( F ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ))).
% 0.48/0.64  thf('46', plain,
% 0.48/0.64      (![X28 : $i, X29 : $i, X30 : $i, X31 : $i, X32 : $i, X33 : $i, X34 : $i]:
% 0.48/0.64         ((v1_xboole_0 @ X28)
% 0.48/0.64          | (v1_xboole_0 @ X29)
% 0.48/0.64          | ~ (m1_subset_1 @ X29 @ (k1_zfmisc_1 @ X30))
% 0.48/0.64          | ~ (v1_funct_1 @ X31)
% 0.48/0.64          | ~ (v1_funct_2 @ X31 @ X29 @ X28)
% 0.48/0.64          | ~ (m1_subset_1 @ X31 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X29 @ X28)))
% 0.48/0.64          | ((X34) != (k1_tmap_1 @ X30 @ X28 @ X33 @ X29 @ X32 @ X31))
% 0.48/0.64          | ((k2_partfun1 @ (k4_subset_1 @ X30 @ X33 @ X29) @ X28 @ X34 @ X33)
% 0.48/0.64              = (X32))
% 0.48/0.64          | ~ (m1_subset_1 @ X34 @ 
% 0.48/0.64               (k1_zfmisc_1 @ 
% 0.48/0.64                (k2_zfmisc_1 @ (k4_subset_1 @ X30 @ X33 @ X29) @ X28)))
% 0.48/0.64          | ~ (v1_funct_2 @ X34 @ (k4_subset_1 @ X30 @ X33 @ X29) @ X28)
% 0.48/0.64          | ~ (v1_funct_1 @ X34)
% 0.48/0.64          | ((k2_partfun1 @ X33 @ X28 @ X32 @ (k9_subset_1 @ X30 @ X33 @ X29))
% 0.48/0.64              != (k2_partfun1 @ X29 @ X28 @ X31 @ 
% 0.48/0.64                  (k9_subset_1 @ X30 @ X33 @ X29)))
% 0.48/0.64          | ~ (m1_subset_1 @ X32 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X33 @ X28)))
% 0.48/0.64          | ~ (v1_funct_2 @ X32 @ X33 @ X28)
% 0.48/0.64          | ~ (v1_funct_1 @ X32)
% 0.48/0.64          | ~ (m1_subset_1 @ X33 @ (k1_zfmisc_1 @ X30))
% 0.48/0.64          | (v1_xboole_0 @ X33)
% 0.48/0.64          | (v1_xboole_0 @ X30))),
% 0.48/0.64      inference('cnf', [status(esa)], [d1_tmap_1])).
% 0.48/0.64  thf('47', plain,
% 0.48/0.64      (![X28 : $i, X29 : $i, X30 : $i, X31 : $i, X32 : $i, X33 : $i]:
% 0.48/0.64         ((v1_xboole_0 @ X30)
% 0.48/0.64          | (v1_xboole_0 @ X33)
% 0.48/0.64          | ~ (m1_subset_1 @ X33 @ (k1_zfmisc_1 @ X30))
% 0.48/0.64          | ~ (v1_funct_1 @ X32)
% 0.48/0.64          | ~ (v1_funct_2 @ X32 @ X33 @ X28)
% 0.48/0.64          | ~ (m1_subset_1 @ X32 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X33 @ X28)))
% 0.48/0.64          | ((k2_partfun1 @ X33 @ X28 @ X32 @ (k9_subset_1 @ X30 @ X33 @ X29))
% 0.48/0.64              != (k2_partfun1 @ X29 @ X28 @ X31 @ 
% 0.48/0.64                  (k9_subset_1 @ X30 @ X33 @ X29)))
% 0.48/0.64          | ~ (v1_funct_1 @ (k1_tmap_1 @ X30 @ X28 @ X33 @ X29 @ X32 @ X31))
% 0.48/0.64          | ~ (v1_funct_2 @ (k1_tmap_1 @ X30 @ X28 @ X33 @ X29 @ X32 @ X31) @ 
% 0.48/0.64               (k4_subset_1 @ X30 @ X33 @ X29) @ X28)
% 0.48/0.64          | ~ (m1_subset_1 @ (k1_tmap_1 @ X30 @ X28 @ X33 @ X29 @ X32 @ X31) @ 
% 0.48/0.64               (k1_zfmisc_1 @ 
% 0.48/0.64                (k2_zfmisc_1 @ (k4_subset_1 @ X30 @ X33 @ X29) @ X28)))
% 0.48/0.64          | ((k2_partfun1 @ (k4_subset_1 @ X30 @ X33 @ X29) @ X28 @ 
% 0.48/0.64              (k1_tmap_1 @ X30 @ X28 @ X33 @ X29 @ X32 @ X31) @ X33) = (
% 0.48/0.64              X32))
% 0.48/0.64          | ~ (m1_subset_1 @ X31 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X29 @ X28)))
% 0.48/0.64          | ~ (v1_funct_2 @ X31 @ X29 @ X28)
% 0.48/0.64          | ~ (v1_funct_1 @ X31)
% 0.48/0.64          | ~ (m1_subset_1 @ X29 @ (k1_zfmisc_1 @ X30))
% 0.48/0.64          | (v1_xboole_0 @ X29)
% 0.48/0.64          | (v1_xboole_0 @ X28))),
% 0.48/0.64      inference('simplify', [status(thm)], ['46'])).
% 0.48/0.64  thf('48', plain,
% 0.48/0.64      (((v1_xboole_0 @ sk_D)
% 0.48/0.64        | (v1_xboole_0 @ sk_C)
% 0.48/0.64        | (v1_xboole_0 @ sk_B)
% 0.48/0.64        | (v1_xboole_0 @ sk_A)
% 0.48/0.64        | (v1_xboole_0 @ sk_B)
% 0.48/0.64        | (v1_xboole_0 @ sk_D)
% 0.48/0.64        | ~ (m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ sk_A))
% 0.48/0.64        | ~ (v1_funct_1 @ sk_F)
% 0.48/0.64        | ~ (v1_funct_2 @ sk_F @ sk_D @ sk_B)
% 0.48/0.64        | ~ (m1_subset_1 @ sk_F @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_D @ sk_B)))
% 0.48/0.64        | ((k2_partfun1 @ (k4_subset_1 @ sk_A @ sk_C @ sk_D) @ sk_B @ 
% 0.48/0.64            (k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F) @ sk_C)
% 0.48/0.64            = (sk_E))
% 0.48/0.64        | ~ (v1_funct_2 @ 
% 0.48/0.64             (k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F) @ 
% 0.48/0.64             (k4_subset_1 @ sk_A @ sk_C @ sk_D) @ sk_B)
% 0.48/0.64        | ~ (v1_funct_1 @ (k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F))
% 0.48/0.64        | ((k2_partfun1 @ sk_C @ sk_B @ sk_E @ 
% 0.48/0.64            (k9_subset_1 @ sk_A @ sk_C @ sk_D))
% 0.48/0.64            != (k2_partfun1 @ sk_D @ sk_B @ sk_F @ 
% 0.48/0.64                (k9_subset_1 @ sk_A @ sk_C @ sk_D)))
% 0.48/0.64        | ~ (m1_subset_1 @ sk_E @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_C @ sk_B)))
% 0.48/0.64        | ~ (v1_funct_2 @ sk_E @ sk_C @ sk_B)
% 0.48/0.64        | ~ (v1_funct_1 @ sk_E)
% 0.48/0.64        | ~ (m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ sk_A))
% 0.48/0.64        | (v1_xboole_0 @ sk_C)
% 0.48/0.64        | (v1_xboole_0 @ sk_A))),
% 0.48/0.64      inference('sup-', [status(thm)], ['45', '47'])).
% 0.48/0.64  thf('49', plain, ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ sk_A))),
% 0.48/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.48/0.64  thf('50', plain, ((v1_funct_1 @ sk_F)),
% 0.48/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.48/0.64  thf('51', plain, ((v1_funct_2 @ sk_F @ sk_D @ sk_B)),
% 0.48/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.48/0.64  thf('52', plain,
% 0.48/0.64      ((m1_subset_1 @ sk_F @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_D @ sk_B)))),
% 0.48/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.48/0.64  thf('53', plain, ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ sk_A))),
% 0.48/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.48/0.64  thf(redefinition_k9_subset_1, axiom,
% 0.48/0.64    (![A:$i,B:$i,C:$i]:
% 0.48/0.64     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ A ) ) =>
% 0.48/0.64       ( ( k9_subset_1 @ A @ B @ C ) = ( k3_xboole_0 @ B @ C ) ) ))).
% 0.48/0.64  thf('54', plain,
% 0.48/0.64      (![X6 : $i, X7 : $i, X8 : $i]:
% 0.48/0.64         (((k9_subset_1 @ X8 @ X6 @ X7) = (k3_xboole_0 @ X6 @ X7))
% 0.48/0.64          | ~ (m1_subset_1 @ X7 @ (k1_zfmisc_1 @ X8)))),
% 0.48/0.64      inference('cnf', [status(esa)], [redefinition_k9_subset_1])).
% 0.48/0.64  thf('55', plain,
% 0.48/0.64      (![X0 : $i]:
% 0.48/0.64         ((k9_subset_1 @ sk_A @ X0 @ sk_D) = (k3_xboole_0 @ X0 @ sk_D))),
% 0.48/0.64      inference('sup-', [status(thm)], ['53', '54'])).
% 0.48/0.64  thf('56', plain, ((r1_subset_1 @ sk_C @ sk_D)),
% 0.48/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.48/0.64  thf(redefinition_r1_subset_1, axiom,
% 0.48/0.64    (![A:$i,B:$i]:
% 0.48/0.64     ( ( ( ~( v1_xboole_0 @ A ) ) & ( ~( v1_xboole_0 @ B ) ) ) =>
% 0.48/0.64       ( ( r1_subset_1 @ A @ B ) <=> ( r1_xboole_0 @ A @ B ) ) ))).
% 0.48/0.64  thf('57', plain,
% 0.48/0.64      (![X11 : $i, X12 : $i]:
% 0.48/0.64         ((v1_xboole_0 @ X11)
% 0.48/0.64          | (v1_xboole_0 @ X12)
% 0.48/0.64          | (r1_xboole_0 @ X11 @ X12)
% 0.48/0.64          | ~ (r1_subset_1 @ X11 @ X12))),
% 0.48/0.64      inference('cnf', [status(esa)], [redefinition_r1_subset_1])).
% 0.48/0.64  thf('58', plain,
% 0.48/0.64      (((r1_xboole_0 @ sk_C @ sk_D)
% 0.48/0.64        | (v1_xboole_0 @ sk_D)
% 0.48/0.64        | (v1_xboole_0 @ sk_C))),
% 0.48/0.64      inference('sup-', [status(thm)], ['56', '57'])).
% 0.48/0.64  thf('59', plain, (~ (v1_xboole_0 @ sk_D)),
% 0.48/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.48/0.64  thf('60', plain, (((v1_xboole_0 @ sk_C) | (r1_xboole_0 @ sk_C @ sk_D))),
% 0.48/0.64      inference('clc', [status(thm)], ['58', '59'])).
% 0.48/0.64  thf('61', plain, (~ (v1_xboole_0 @ sk_C)),
% 0.48/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.48/0.64  thf('62', plain, ((r1_xboole_0 @ sk_C @ sk_D)),
% 0.48/0.64      inference('clc', [status(thm)], ['60', '61'])).
% 0.48/0.64  thf(d7_xboole_0, axiom,
% 0.48/0.64    (![A:$i,B:$i]:
% 0.48/0.64     ( ( r1_xboole_0 @ A @ B ) <=>
% 0.48/0.64       ( ( k3_xboole_0 @ A @ B ) = ( k1_xboole_0 ) ) ))).
% 0.48/0.64  thf('63', plain,
% 0.48/0.64      (![X0 : $i, X1 : $i]:
% 0.48/0.64         (((k3_xboole_0 @ X0 @ X1) = (k1_xboole_0)) | ~ (r1_xboole_0 @ X0 @ X1))),
% 0.48/0.64      inference('cnf', [status(esa)], [d7_xboole_0])).
% 0.48/0.64  thf('64', plain, (((k3_xboole_0 @ sk_C @ sk_D) = (k1_xboole_0))),
% 0.48/0.64      inference('sup-', [status(thm)], ['62', '63'])).
% 0.48/0.64  thf('65', plain,
% 0.48/0.64      ((m1_subset_1 @ sk_E @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_C @ sk_B)))),
% 0.48/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.48/0.64  thf(redefinition_k2_partfun1, axiom,
% 0.48/0.64    (![A:$i,B:$i,C:$i,D:$i]:
% 0.48/0.64     ( ( ( v1_funct_1 @ C ) & 
% 0.48/0.64         ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) ) =>
% 0.48/0.64       ( ( k2_partfun1 @ A @ B @ C @ D ) = ( k7_relat_1 @ C @ D ) ) ))).
% 0.48/0.64  thf('66', plain,
% 0.48/0.64      (![X24 : $i, X25 : $i, X26 : $i, X27 : $i]:
% 0.48/0.64         (~ (m1_subset_1 @ X24 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X25 @ X26)))
% 0.48/0.64          | ~ (v1_funct_1 @ X24)
% 0.48/0.64          | ((k2_partfun1 @ X25 @ X26 @ X24 @ X27) = (k7_relat_1 @ X24 @ X27)))),
% 0.48/0.64      inference('cnf', [status(esa)], [redefinition_k2_partfun1])).
% 0.48/0.64  thf('67', plain,
% 0.48/0.64      (![X0 : $i]:
% 0.48/0.64         (((k2_partfun1 @ sk_C @ sk_B @ sk_E @ X0) = (k7_relat_1 @ sk_E @ X0))
% 0.48/0.64          | ~ (v1_funct_1 @ sk_E))),
% 0.48/0.64      inference('sup-', [status(thm)], ['65', '66'])).
% 0.48/0.64  thf('68', plain, ((v1_funct_1 @ sk_E)),
% 0.48/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.48/0.64  thf('69', plain,
% 0.48/0.64      (![X0 : $i]:
% 0.48/0.64         ((k2_partfun1 @ sk_C @ sk_B @ sk_E @ X0) = (k7_relat_1 @ sk_E @ X0))),
% 0.48/0.64      inference('demod', [status(thm)], ['67', '68'])).
% 0.48/0.64  thf(t65_xboole_1, axiom, (![A:$i]: ( r1_xboole_0 @ A @ k1_xboole_0 ))).
% 0.48/0.64  thf('70', plain, (![X5 : $i]: (r1_xboole_0 @ X5 @ k1_xboole_0)),
% 0.48/0.64      inference('cnf', [status(esa)], [t65_xboole_1])).
% 0.48/0.64  thf(symmetry_r1_xboole_0, axiom,
% 0.48/0.64    (![A:$i,B:$i]: ( ( r1_xboole_0 @ A @ B ) => ( r1_xboole_0 @ B @ A ) ))).
% 0.48/0.64  thf('71', plain,
% 0.48/0.64      (![X3 : $i, X4 : $i]:
% 0.48/0.64         ((r1_xboole_0 @ X3 @ X4) | ~ (r1_xboole_0 @ X4 @ X3))),
% 0.48/0.64      inference('cnf', [status(esa)], [symmetry_r1_xboole_0])).
% 0.48/0.64  thf('72', plain, (![X0 : $i]: (r1_xboole_0 @ k1_xboole_0 @ X0)),
% 0.48/0.64      inference('sup-', [status(thm)], ['70', '71'])).
% 0.48/0.64  thf('73', plain,
% 0.48/0.64      ((m1_subset_1 @ sk_E @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_C @ sk_B)))),
% 0.48/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.48/0.64  thf(cc5_funct_2, axiom,
% 0.48/0.64    (![A:$i,B:$i]:
% 0.48/0.64     ( ( ~( v1_xboole_0 @ B ) ) =>
% 0.48/0.64       ( ![C:$i]:
% 0.48/0.64         ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.48/0.64           ( ( ( v1_funct_1 @ C ) & ( v1_funct_2 @ C @ A @ B ) ) =>
% 0.48/0.64             ( ( v1_funct_1 @ C ) & ( v1_partfun1 @ C @ A ) ) ) ) ) ))).
% 0.48/0.64  thf('74', plain,
% 0.48/0.64      (![X19 : $i, X20 : $i, X21 : $i]:
% 0.48/0.64         (~ (m1_subset_1 @ X19 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X20 @ X21)))
% 0.48/0.64          | (v1_partfun1 @ X19 @ X20)
% 0.48/0.64          | ~ (v1_funct_2 @ X19 @ X20 @ X21)
% 0.48/0.64          | ~ (v1_funct_1 @ X19)
% 0.48/0.64          | (v1_xboole_0 @ X21))),
% 0.48/0.64      inference('cnf', [status(esa)], [cc5_funct_2])).
% 0.48/0.64  thf('75', plain,
% 0.48/0.64      (((v1_xboole_0 @ sk_B)
% 0.48/0.64        | ~ (v1_funct_1 @ sk_E)
% 0.48/0.64        | ~ (v1_funct_2 @ sk_E @ sk_C @ sk_B)
% 0.48/0.64        | (v1_partfun1 @ sk_E @ sk_C))),
% 0.48/0.64      inference('sup-', [status(thm)], ['73', '74'])).
% 0.48/0.64  thf('76', plain, ((v1_funct_1 @ sk_E)),
% 0.48/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.48/0.64  thf('77', plain, ((v1_funct_2 @ sk_E @ sk_C @ sk_B)),
% 0.48/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.48/0.64  thf('78', plain, (((v1_xboole_0 @ sk_B) | (v1_partfun1 @ sk_E @ sk_C))),
% 0.48/0.64      inference('demod', [status(thm)], ['75', '76', '77'])).
% 0.48/0.64  thf('79', plain, (~ (v1_xboole_0 @ sk_B)),
% 0.48/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.48/0.64  thf('80', plain, ((v1_partfun1 @ sk_E @ sk_C)),
% 0.48/0.64      inference('clc', [status(thm)], ['78', '79'])).
% 0.48/0.64  thf(d4_partfun1, axiom,
% 0.48/0.64    (![A:$i,B:$i]:
% 0.48/0.64     ( ( ( v1_relat_1 @ B ) & ( v4_relat_1 @ B @ A ) ) =>
% 0.48/0.64       ( ( v1_partfun1 @ B @ A ) <=> ( ( k1_relat_1 @ B ) = ( A ) ) ) ))).
% 0.48/0.64  thf('81', plain,
% 0.48/0.64      (![X22 : $i, X23 : $i]:
% 0.48/0.64         (~ (v1_partfun1 @ X23 @ X22)
% 0.48/0.64          | ((k1_relat_1 @ X23) = (X22))
% 0.48/0.64          | ~ (v4_relat_1 @ X23 @ X22)
% 0.48/0.64          | ~ (v1_relat_1 @ X23))),
% 0.48/0.64      inference('cnf', [status(esa)], [d4_partfun1])).
% 0.48/0.64  thf('82', plain,
% 0.48/0.64      ((~ (v1_relat_1 @ sk_E)
% 0.48/0.64        | ~ (v4_relat_1 @ sk_E @ sk_C)
% 0.48/0.64        | ((k1_relat_1 @ sk_E) = (sk_C)))),
% 0.48/0.64      inference('sup-', [status(thm)], ['80', '81'])).
% 0.48/0.64  thf('83', plain,
% 0.48/0.64      ((m1_subset_1 @ sk_E @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_C @ sk_B)))),
% 0.48/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.48/0.64  thf(cc1_relset_1, axiom,
% 0.48/0.64    (![A:$i,B:$i,C:$i]:
% 0.48/0.64     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.48/0.64       ( v1_relat_1 @ C ) ))).
% 0.48/0.64  thf('84', plain,
% 0.48/0.64      (![X13 : $i, X14 : $i, X15 : $i]:
% 0.48/0.64         ((v1_relat_1 @ X13)
% 0.48/0.64          | ~ (m1_subset_1 @ X13 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X14 @ X15))))),
% 0.48/0.64      inference('cnf', [status(esa)], [cc1_relset_1])).
% 0.48/0.64  thf('85', plain, ((v1_relat_1 @ sk_E)),
% 0.48/0.64      inference('sup-', [status(thm)], ['83', '84'])).
% 0.48/0.64  thf('86', plain,
% 0.48/0.64      ((m1_subset_1 @ sk_E @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_C @ sk_B)))),
% 0.48/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.48/0.64  thf(cc2_relset_1, axiom,
% 0.48/0.64    (![A:$i,B:$i,C:$i]:
% 0.48/0.64     ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) ) ) =>
% 0.48/0.64       ( ( v4_relat_1 @ C @ A ) & ( v5_relat_1 @ C @ B ) ) ))).
% 0.48/0.64  thf('87', plain,
% 0.48/0.64      (![X16 : $i, X17 : $i, X18 : $i]:
% 0.48/0.64         ((v4_relat_1 @ X16 @ X17)
% 0.48/0.64          | ~ (m1_subset_1 @ X16 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X17 @ X18))))),
% 0.48/0.64      inference('cnf', [status(esa)], [cc2_relset_1])).
% 0.48/0.64  thf('88', plain, ((v4_relat_1 @ sk_E @ sk_C)),
% 0.48/0.64      inference('sup-', [status(thm)], ['86', '87'])).
% 0.48/0.64  thf('89', plain, (((k1_relat_1 @ sk_E) = (sk_C))),
% 0.48/0.64      inference('demod', [status(thm)], ['82', '85', '88'])).
% 0.48/0.64  thf(t187_relat_1, axiom,
% 0.48/0.64    (![A:$i]:
% 0.48/0.64     ( ( v1_relat_1 @ A ) =>
% 0.48/0.64       ( ![B:$i]:
% 0.48/0.64         ( ( r1_xboole_0 @ B @ ( k1_relat_1 @ A ) ) =>
% 0.48/0.64           ( ( k7_relat_1 @ A @ B ) = ( k1_xboole_0 ) ) ) ) ))).
% 0.48/0.64  thf('90', plain,
% 0.48/0.64      (![X9 : $i, X10 : $i]:
% 0.48/0.64         (~ (r1_xboole_0 @ X9 @ (k1_relat_1 @ X10))
% 0.48/0.64          | ((k7_relat_1 @ X10 @ X9) = (k1_xboole_0))
% 0.48/0.64          | ~ (v1_relat_1 @ X10))),
% 0.48/0.64      inference('cnf', [status(esa)], [t187_relat_1])).
% 0.48/0.64  thf('91', plain,
% 0.48/0.64      (![X0 : $i]:
% 0.48/0.64         (~ (r1_xboole_0 @ X0 @ sk_C)
% 0.48/0.64          | ~ (v1_relat_1 @ sk_E)
% 0.48/0.64          | ((k7_relat_1 @ sk_E @ X0) = (k1_xboole_0)))),
% 0.48/0.64      inference('sup-', [status(thm)], ['89', '90'])).
% 0.48/0.64  thf('92', plain, ((v1_relat_1 @ sk_E)),
% 0.48/0.64      inference('sup-', [status(thm)], ['83', '84'])).
% 0.48/0.64  thf('93', plain,
% 0.48/0.64      (![X0 : $i]:
% 0.48/0.64         (~ (r1_xboole_0 @ X0 @ sk_C)
% 0.48/0.64          | ((k7_relat_1 @ sk_E @ X0) = (k1_xboole_0)))),
% 0.48/0.64      inference('demod', [status(thm)], ['91', '92'])).
% 0.48/0.64  thf('94', plain, (((k7_relat_1 @ sk_E @ k1_xboole_0) = (k1_xboole_0))),
% 0.48/0.64      inference('sup-', [status(thm)], ['72', '93'])).
% 0.48/0.64  thf('95', plain,
% 0.48/0.64      (![X0 : $i]:
% 0.48/0.64         ((k9_subset_1 @ sk_A @ X0 @ sk_D) = (k3_xboole_0 @ X0 @ sk_D))),
% 0.48/0.64      inference('sup-', [status(thm)], ['53', '54'])).
% 0.48/0.64  thf('96', plain, (((k3_xboole_0 @ sk_C @ sk_D) = (k1_xboole_0))),
% 0.48/0.64      inference('sup-', [status(thm)], ['62', '63'])).
% 0.48/0.64  thf('97', plain,
% 0.48/0.64      ((m1_subset_1 @ sk_F @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_D @ sk_B)))),
% 0.48/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.48/0.64  thf('98', plain,
% 0.48/0.64      (![X24 : $i, X25 : $i, X26 : $i, X27 : $i]:
% 0.48/0.64         (~ (m1_subset_1 @ X24 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X25 @ X26)))
% 0.48/0.64          | ~ (v1_funct_1 @ X24)
% 0.48/0.64          | ((k2_partfun1 @ X25 @ X26 @ X24 @ X27) = (k7_relat_1 @ X24 @ X27)))),
% 0.48/0.64      inference('cnf', [status(esa)], [redefinition_k2_partfun1])).
% 0.48/0.64  thf('99', plain,
% 0.48/0.64      (![X0 : $i]:
% 0.48/0.64         (((k2_partfun1 @ sk_D @ sk_B @ sk_F @ X0) = (k7_relat_1 @ sk_F @ X0))
% 0.48/0.64          | ~ (v1_funct_1 @ sk_F))),
% 0.48/0.64      inference('sup-', [status(thm)], ['97', '98'])).
% 0.48/0.64  thf('100', plain, ((v1_funct_1 @ sk_F)),
% 0.48/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.48/0.64  thf('101', plain,
% 0.48/0.64      (![X0 : $i]:
% 0.48/0.64         ((k2_partfun1 @ sk_D @ sk_B @ sk_F @ X0) = (k7_relat_1 @ sk_F @ X0))),
% 0.48/0.64      inference('demod', [status(thm)], ['99', '100'])).
% 0.48/0.64  thf('102', plain, (![X0 : $i]: (r1_xboole_0 @ k1_xboole_0 @ X0)),
% 0.48/0.64      inference('sup-', [status(thm)], ['70', '71'])).
% 0.48/0.64  thf('103', plain,
% 0.48/0.64      ((m1_subset_1 @ sk_F @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_D @ sk_B)))),
% 0.48/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.48/0.64  thf('104', plain,
% 0.48/0.64      (![X19 : $i, X20 : $i, X21 : $i]:
% 0.48/0.64         (~ (m1_subset_1 @ X19 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X20 @ X21)))
% 0.48/0.64          | (v1_partfun1 @ X19 @ X20)
% 0.48/0.64          | ~ (v1_funct_2 @ X19 @ X20 @ X21)
% 0.48/0.64          | ~ (v1_funct_1 @ X19)
% 0.48/0.64          | (v1_xboole_0 @ X21))),
% 0.48/0.64      inference('cnf', [status(esa)], [cc5_funct_2])).
% 0.48/0.64  thf('105', plain,
% 0.48/0.64      (((v1_xboole_0 @ sk_B)
% 0.48/0.64        | ~ (v1_funct_1 @ sk_F)
% 0.48/0.64        | ~ (v1_funct_2 @ sk_F @ sk_D @ sk_B)
% 0.48/0.64        | (v1_partfun1 @ sk_F @ sk_D))),
% 0.48/0.64      inference('sup-', [status(thm)], ['103', '104'])).
% 0.48/0.64  thf('106', plain, ((v1_funct_1 @ sk_F)),
% 0.48/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.48/0.64  thf('107', plain, ((v1_funct_2 @ sk_F @ sk_D @ sk_B)),
% 0.48/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.48/0.64  thf('108', plain, (((v1_xboole_0 @ sk_B) | (v1_partfun1 @ sk_F @ sk_D))),
% 0.48/0.64      inference('demod', [status(thm)], ['105', '106', '107'])).
% 0.48/0.64  thf('109', plain, (~ (v1_xboole_0 @ sk_B)),
% 0.48/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.48/0.64  thf('110', plain, ((v1_partfun1 @ sk_F @ sk_D)),
% 0.48/0.64      inference('clc', [status(thm)], ['108', '109'])).
% 0.48/0.64  thf('111', plain,
% 0.48/0.64      (![X22 : $i, X23 : $i]:
% 0.48/0.64         (~ (v1_partfun1 @ X23 @ X22)
% 0.48/0.64          | ((k1_relat_1 @ X23) = (X22))
% 0.48/0.64          | ~ (v4_relat_1 @ X23 @ X22)
% 0.48/0.64          | ~ (v1_relat_1 @ X23))),
% 0.48/0.64      inference('cnf', [status(esa)], [d4_partfun1])).
% 0.48/0.64  thf('112', plain,
% 0.48/0.64      ((~ (v1_relat_1 @ sk_F)
% 0.48/0.64        | ~ (v4_relat_1 @ sk_F @ sk_D)
% 0.48/0.64        | ((k1_relat_1 @ sk_F) = (sk_D)))),
% 0.48/0.64      inference('sup-', [status(thm)], ['110', '111'])).
% 0.48/0.64  thf('113', plain,
% 0.48/0.64      ((m1_subset_1 @ sk_F @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_D @ sk_B)))),
% 0.48/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.48/0.64  thf('114', plain,
% 0.48/0.64      (![X13 : $i, X14 : $i, X15 : $i]:
% 0.48/0.64         ((v1_relat_1 @ X13)
% 0.48/0.64          | ~ (m1_subset_1 @ X13 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X14 @ X15))))),
% 0.48/0.64      inference('cnf', [status(esa)], [cc1_relset_1])).
% 0.48/0.64  thf('115', plain, ((v1_relat_1 @ sk_F)),
% 0.48/0.64      inference('sup-', [status(thm)], ['113', '114'])).
% 0.48/0.64  thf('116', plain,
% 0.48/0.64      ((m1_subset_1 @ sk_F @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_D @ sk_B)))),
% 0.48/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.48/0.64  thf('117', plain,
% 0.48/0.64      (![X16 : $i, X17 : $i, X18 : $i]:
% 0.48/0.64         ((v4_relat_1 @ X16 @ X17)
% 0.48/0.64          | ~ (m1_subset_1 @ X16 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X17 @ X18))))),
% 0.48/0.64      inference('cnf', [status(esa)], [cc2_relset_1])).
% 0.48/0.64  thf('118', plain, ((v4_relat_1 @ sk_F @ sk_D)),
% 0.48/0.64      inference('sup-', [status(thm)], ['116', '117'])).
% 0.48/0.64  thf('119', plain, (((k1_relat_1 @ sk_F) = (sk_D))),
% 0.48/0.64      inference('demod', [status(thm)], ['112', '115', '118'])).
% 0.48/0.64  thf('120', plain,
% 0.48/0.64      (![X9 : $i, X10 : $i]:
% 0.48/0.64         (~ (r1_xboole_0 @ X9 @ (k1_relat_1 @ X10))
% 0.48/0.64          | ((k7_relat_1 @ X10 @ X9) = (k1_xboole_0))
% 0.48/0.64          | ~ (v1_relat_1 @ X10))),
% 0.48/0.64      inference('cnf', [status(esa)], [t187_relat_1])).
% 0.48/0.64  thf('121', plain,
% 0.48/0.64      (![X0 : $i]:
% 0.48/0.64         (~ (r1_xboole_0 @ X0 @ sk_D)
% 0.48/0.64          | ~ (v1_relat_1 @ sk_F)
% 0.48/0.64          | ((k7_relat_1 @ sk_F @ X0) = (k1_xboole_0)))),
% 0.48/0.64      inference('sup-', [status(thm)], ['119', '120'])).
% 0.48/0.64  thf('122', plain, ((v1_relat_1 @ sk_F)),
% 0.48/0.64      inference('sup-', [status(thm)], ['113', '114'])).
% 0.48/0.64  thf('123', plain,
% 0.48/0.64      (![X0 : $i]:
% 0.48/0.64         (~ (r1_xboole_0 @ X0 @ sk_D)
% 0.48/0.64          | ((k7_relat_1 @ sk_F @ X0) = (k1_xboole_0)))),
% 0.48/0.64      inference('demod', [status(thm)], ['121', '122'])).
% 0.48/0.64  thf('124', plain, (((k7_relat_1 @ sk_F @ k1_xboole_0) = (k1_xboole_0))),
% 0.48/0.64      inference('sup-', [status(thm)], ['102', '123'])).
% 0.48/0.64  thf('125', plain,
% 0.48/0.64      ((m1_subset_1 @ sk_E @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_C @ sk_B)))),
% 0.48/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.48/0.64  thf('126', plain, ((v1_funct_2 @ sk_E @ sk_C @ sk_B)),
% 0.48/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.48/0.64  thf('127', plain, ((v1_funct_1 @ sk_E)),
% 0.48/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.48/0.64  thf('128', plain, ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ sk_A))),
% 0.48/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.48/0.64  thf('129', plain,
% 0.48/0.64      (((v1_xboole_0 @ sk_D)
% 0.48/0.64        | (v1_xboole_0 @ sk_C)
% 0.48/0.64        | (v1_xboole_0 @ sk_B)
% 0.48/0.64        | (v1_xboole_0 @ sk_A)
% 0.48/0.64        | (v1_xboole_0 @ sk_B)
% 0.48/0.64        | (v1_xboole_0 @ sk_D)
% 0.48/0.64        | ((k2_partfun1 @ (k4_subset_1 @ sk_A @ sk_C @ sk_D) @ sk_B @ 
% 0.48/0.64            (k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F) @ sk_C)
% 0.48/0.64            = (sk_E))
% 0.48/0.64        | ~ (v1_funct_2 @ 
% 0.48/0.64             (k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F) @ 
% 0.48/0.64             (k4_subset_1 @ sk_A @ sk_C @ sk_D) @ sk_B)
% 0.48/0.64        | ~ (v1_funct_1 @ (k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F))
% 0.48/0.64        | ((k1_xboole_0) != (k1_xboole_0))
% 0.48/0.64        | (v1_xboole_0 @ sk_C)
% 0.48/0.64        | (v1_xboole_0 @ sk_A))),
% 0.48/0.64      inference('demod', [status(thm)],
% 0.48/0.64                ['48', '49', '50', '51', '52', '55', '64', '69', '94', '95', 
% 0.48/0.64                 '96', '101', '124', '125', '126', '127', '128'])).
% 0.48/0.64  thf('130', plain,
% 0.48/0.64      ((~ (v1_funct_1 @ (k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F))
% 0.48/0.64        | ~ (v1_funct_2 @ 
% 0.48/0.64             (k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F) @ 
% 0.48/0.64             (k4_subset_1 @ sk_A @ sk_C @ sk_D) @ sk_B)
% 0.48/0.64        | ((k2_partfun1 @ (k4_subset_1 @ sk_A @ sk_C @ sk_D) @ sk_B @ 
% 0.48/0.64            (k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F) @ sk_C)
% 0.48/0.64            = (sk_E))
% 0.48/0.64        | (v1_xboole_0 @ sk_A)
% 0.48/0.64        | (v1_xboole_0 @ sk_B)
% 0.48/0.64        | (v1_xboole_0 @ sk_C)
% 0.48/0.64        | (v1_xboole_0 @ sk_D))),
% 0.48/0.64      inference('simplify', [status(thm)], ['129'])).
% 0.48/0.64  thf('131', plain,
% 0.48/0.64      (((v1_xboole_0 @ sk_D)
% 0.48/0.64        | (v1_xboole_0 @ sk_C)
% 0.48/0.64        | (v1_xboole_0 @ sk_B)
% 0.48/0.64        | (v1_xboole_0 @ sk_A)
% 0.48/0.64        | (v1_xboole_0 @ sk_D)
% 0.48/0.64        | (v1_xboole_0 @ sk_C)
% 0.48/0.64        | (v1_xboole_0 @ sk_B)
% 0.48/0.64        | (v1_xboole_0 @ sk_A)
% 0.48/0.64        | ((k2_partfun1 @ (k4_subset_1 @ sk_A @ sk_C @ sk_D) @ sk_B @ 
% 0.48/0.64            (k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F) @ sk_C)
% 0.48/0.64            = (sk_E))
% 0.48/0.64        | ~ (v1_funct_1 @ (k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F)))),
% 0.48/0.64      inference('sup-', [status(thm)], ['30', '130'])).
% 0.48/0.64  thf('132', plain,
% 0.48/0.64      ((~ (v1_funct_1 @ (k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F))
% 0.48/0.64        | ((k2_partfun1 @ (k4_subset_1 @ sk_A @ sk_C @ sk_D) @ sk_B @ 
% 0.48/0.64            (k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F) @ sk_C)
% 0.48/0.64            = (sk_E))
% 0.48/0.64        | (v1_xboole_0 @ sk_A)
% 0.48/0.64        | (v1_xboole_0 @ sk_B)
% 0.48/0.64        | (v1_xboole_0 @ sk_C)
% 0.48/0.64        | (v1_xboole_0 @ sk_D))),
% 0.48/0.64      inference('simplify', [status(thm)], ['131'])).
% 0.48/0.64  thf('133', plain,
% 0.48/0.64      ((((k2_partfun1 @ sk_C @ sk_B @ sk_E @ (k9_subset_1 @ sk_A @ sk_C @ sk_D))
% 0.48/0.64          != (k2_partfun1 @ sk_D @ sk_B @ sk_F @ 
% 0.48/0.64              (k9_subset_1 @ sk_A @ sk_C @ sk_D)))
% 0.48/0.64        | ((k2_partfun1 @ (k4_subset_1 @ sk_A @ sk_C @ sk_D) @ sk_B @ 
% 0.48/0.64            (k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F) @ sk_C)
% 0.48/0.64            != (sk_E))
% 0.48/0.64        | ((k2_partfun1 @ (k4_subset_1 @ sk_A @ sk_C @ sk_D) @ sk_B @ 
% 0.48/0.64            (k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F) @ sk_D)
% 0.48/0.64            != (sk_F)))),
% 0.48/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.48/0.64  thf('134', plain,
% 0.48/0.64      ((((k2_partfun1 @ (k4_subset_1 @ sk_A @ sk_C @ sk_D) @ sk_B @ 
% 0.48/0.64          (k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F) @ sk_C)
% 0.48/0.64          != (sk_E)))
% 0.48/0.64         <= (~
% 0.48/0.64             (((k2_partfun1 @ (k4_subset_1 @ sk_A @ sk_C @ sk_D) @ sk_B @ 
% 0.48/0.64                (k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F) @ sk_C)
% 0.48/0.64                = (sk_E))))),
% 0.48/0.64      inference('split', [status(esa)], ['133'])).
% 0.48/0.64  thf('135', plain,
% 0.48/0.64      (![X0 : $i]:
% 0.48/0.64         ((k2_partfun1 @ sk_D @ sk_B @ sk_F @ X0) = (k7_relat_1 @ sk_F @ X0))),
% 0.48/0.64      inference('demod', [status(thm)], ['99', '100'])).
% 0.48/0.64  thf('136', plain,
% 0.48/0.64      (![X0 : $i]:
% 0.48/0.64         ((k9_subset_1 @ sk_A @ X0 @ sk_D) = (k3_xboole_0 @ X0 @ sk_D))),
% 0.48/0.64      inference('sup-', [status(thm)], ['53', '54'])).
% 0.48/0.64  thf('137', plain,
% 0.48/0.64      ((((k2_partfun1 @ sk_C @ sk_B @ sk_E @ (k9_subset_1 @ sk_A @ sk_C @ sk_D))
% 0.48/0.64          != (k2_partfun1 @ sk_D @ sk_B @ sk_F @ 
% 0.48/0.64              (k9_subset_1 @ sk_A @ sk_C @ sk_D))))
% 0.48/0.64         <= (~
% 0.48/0.64             (((k2_partfun1 @ sk_C @ sk_B @ sk_E @ 
% 0.48/0.64                (k9_subset_1 @ sk_A @ sk_C @ sk_D))
% 0.48/0.64                = (k2_partfun1 @ sk_D @ sk_B @ sk_F @ 
% 0.48/0.64                   (k9_subset_1 @ sk_A @ sk_C @ sk_D)))))),
% 0.48/0.64      inference('split', [status(esa)], ['133'])).
% 0.48/0.64  thf('138', plain,
% 0.48/0.64      ((((k2_partfun1 @ sk_C @ sk_B @ sk_E @ (k9_subset_1 @ sk_A @ sk_C @ sk_D))
% 0.48/0.64          != (k2_partfun1 @ sk_D @ sk_B @ sk_F @ (k3_xboole_0 @ sk_C @ sk_D))))
% 0.48/0.64         <= (~
% 0.48/0.64             (((k2_partfun1 @ sk_C @ sk_B @ sk_E @ 
% 0.48/0.64                (k9_subset_1 @ sk_A @ sk_C @ sk_D))
% 0.48/0.64                = (k2_partfun1 @ sk_D @ sk_B @ sk_F @ 
% 0.48/0.64                   (k9_subset_1 @ sk_A @ sk_C @ sk_D)))))),
% 0.48/0.64      inference('sup-', [status(thm)], ['136', '137'])).
% 0.48/0.64  thf('139', plain,
% 0.48/0.64      (![X0 : $i]:
% 0.48/0.64         ((k9_subset_1 @ sk_A @ X0 @ sk_D) = (k3_xboole_0 @ X0 @ sk_D))),
% 0.48/0.64      inference('sup-', [status(thm)], ['53', '54'])).
% 0.48/0.64  thf('140', plain,
% 0.48/0.64      ((((k2_partfun1 @ sk_C @ sk_B @ sk_E @ (k3_xboole_0 @ sk_C @ sk_D))
% 0.48/0.64          != (k2_partfun1 @ sk_D @ sk_B @ sk_F @ (k3_xboole_0 @ sk_C @ sk_D))))
% 0.48/0.64         <= (~
% 0.48/0.64             (((k2_partfun1 @ sk_C @ sk_B @ sk_E @ 
% 0.48/0.64                (k9_subset_1 @ sk_A @ sk_C @ sk_D))
% 0.48/0.64                = (k2_partfun1 @ sk_D @ sk_B @ sk_F @ 
% 0.48/0.64                   (k9_subset_1 @ sk_A @ sk_C @ sk_D)))))),
% 0.48/0.64      inference('demod', [status(thm)], ['138', '139'])).
% 0.48/0.64  thf('141', plain,
% 0.48/0.64      ((((k2_partfun1 @ sk_C @ sk_B @ sk_E @ (k3_xboole_0 @ sk_C @ sk_D))
% 0.48/0.64          != (k7_relat_1 @ sk_F @ (k3_xboole_0 @ sk_C @ sk_D))))
% 0.48/0.64         <= (~
% 0.48/0.64             (((k2_partfun1 @ sk_C @ sk_B @ sk_E @ 
% 0.48/0.64                (k9_subset_1 @ sk_A @ sk_C @ sk_D))
% 0.48/0.64                = (k2_partfun1 @ sk_D @ sk_B @ sk_F @ 
% 0.48/0.64                   (k9_subset_1 @ sk_A @ sk_C @ sk_D)))))),
% 0.48/0.64      inference('sup-', [status(thm)], ['135', '140'])).
% 0.48/0.64  thf('142', plain, (((k3_xboole_0 @ sk_C @ sk_D) = (k1_xboole_0))),
% 0.48/0.64      inference('sup-', [status(thm)], ['62', '63'])).
% 0.48/0.64  thf('143', plain,
% 0.48/0.64      (![X0 : $i]:
% 0.48/0.64         ((k2_partfun1 @ sk_C @ sk_B @ sk_E @ X0) = (k7_relat_1 @ sk_E @ X0))),
% 0.48/0.64      inference('demod', [status(thm)], ['67', '68'])).
% 0.48/0.64  thf('144', plain, (((k7_relat_1 @ sk_E @ k1_xboole_0) = (k1_xboole_0))),
% 0.48/0.64      inference('sup-', [status(thm)], ['72', '93'])).
% 0.48/0.64  thf('145', plain, (((k3_xboole_0 @ sk_C @ sk_D) = (k1_xboole_0))),
% 0.48/0.64      inference('sup-', [status(thm)], ['62', '63'])).
% 0.48/0.64  thf('146', plain, (((k7_relat_1 @ sk_F @ k1_xboole_0) = (k1_xboole_0))),
% 0.48/0.64      inference('sup-', [status(thm)], ['102', '123'])).
% 0.48/0.64  thf('147', plain,
% 0.48/0.64      ((((k1_xboole_0) != (k1_xboole_0)))
% 0.48/0.64         <= (~
% 0.48/0.64             (((k2_partfun1 @ sk_C @ sk_B @ sk_E @ 
% 0.48/0.64                (k9_subset_1 @ sk_A @ sk_C @ sk_D))
% 0.48/0.64                = (k2_partfun1 @ sk_D @ sk_B @ sk_F @ 
% 0.48/0.64                   (k9_subset_1 @ sk_A @ sk_C @ sk_D)))))),
% 0.48/0.64      inference('demod', [status(thm)],
% 0.48/0.64                ['141', '142', '143', '144', '145', '146'])).
% 0.48/0.64  thf('148', plain,
% 0.48/0.64      ((((k2_partfun1 @ sk_C @ sk_B @ sk_E @ (k9_subset_1 @ sk_A @ sk_C @ sk_D))
% 0.48/0.64          = (k2_partfun1 @ sk_D @ sk_B @ sk_F @ 
% 0.48/0.64             (k9_subset_1 @ sk_A @ sk_C @ sk_D))))),
% 0.48/0.64      inference('simplify', [status(thm)], ['147'])).
% 0.48/0.64  thf('149', plain,
% 0.48/0.64      (((v1_funct_1 @ (k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F))
% 0.48/0.64        | (v1_xboole_0 @ sk_A)
% 0.48/0.64        | (v1_xboole_0 @ sk_B)
% 0.48/0.64        | (v1_xboole_0 @ sk_C)
% 0.48/0.64        | (v1_xboole_0 @ sk_D))),
% 0.48/0.64      inference('demod', [status(thm)], ['13', '14'])).
% 0.48/0.64  thf('150', plain,
% 0.48/0.64      (((v1_funct_2 @ (k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F) @ 
% 0.48/0.64         (k4_subset_1 @ sk_A @ sk_C @ sk_D) @ sk_B)
% 0.48/0.64        | (v1_xboole_0 @ sk_A)
% 0.48/0.64        | (v1_xboole_0 @ sk_B)
% 0.48/0.64        | (v1_xboole_0 @ sk_C)
% 0.48/0.64        | (v1_xboole_0 @ sk_D))),
% 0.48/0.64      inference('demod', [status(thm)], ['28', '29'])).
% 0.48/0.64  thf('151', plain,
% 0.48/0.64      (((m1_subset_1 @ (k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F) @ 
% 0.48/0.64         (k1_zfmisc_1 @ 
% 0.48/0.64          (k2_zfmisc_1 @ (k4_subset_1 @ sk_A @ sk_C @ sk_D) @ sk_B)))
% 0.48/0.64        | (v1_xboole_0 @ sk_A)
% 0.48/0.64        | (v1_xboole_0 @ sk_B)
% 0.48/0.64        | (v1_xboole_0 @ sk_C)
% 0.48/0.64        | (v1_xboole_0 @ sk_D))),
% 0.48/0.64      inference('demod', [status(thm)], ['43', '44'])).
% 0.48/0.64  thf('152', plain,
% 0.48/0.64      (![X28 : $i, X29 : $i, X30 : $i, X31 : $i, X32 : $i, X33 : $i, X34 : $i]:
% 0.48/0.64         ((v1_xboole_0 @ X28)
% 0.48/0.64          | (v1_xboole_0 @ X29)
% 0.48/0.64          | ~ (m1_subset_1 @ X29 @ (k1_zfmisc_1 @ X30))
% 0.48/0.64          | ~ (v1_funct_1 @ X31)
% 0.48/0.64          | ~ (v1_funct_2 @ X31 @ X29 @ X28)
% 0.48/0.64          | ~ (m1_subset_1 @ X31 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X29 @ X28)))
% 0.48/0.64          | ((X34) != (k1_tmap_1 @ X30 @ X28 @ X33 @ X29 @ X32 @ X31))
% 0.48/0.64          | ((k2_partfun1 @ (k4_subset_1 @ X30 @ X33 @ X29) @ X28 @ X34 @ X29)
% 0.48/0.64              = (X31))
% 0.48/0.64          | ~ (m1_subset_1 @ X34 @ 
% 0.48/0.64               (k1_zfmisc_1 @ 
% 0.48/0.64                (k2_zfmisc_1 @ (k4_subset_1 @ X30 @ X33 @ X29) @ X28)))
% 0.48/0.64          | ~ (v1_funct_2 @ X34 @ (k4_subset_1 @ X30 @ X33 @ X29) @ X28)
% 0.48/0.64          | ~ (v1_funct_1 @ X34)
% 0.48/0.64          | ((k2_partfun1 @ X33 @ X28 @ X32 @ (k9_subset_1 @ X30 @ X33 @ X29))
% 0.48/0.64              != (k2_partfun1 @ X29 @ X28 @ X31 @ 
% 0.48/0.64                  (k9_subset_1 @ X30 @ X33 @ X29)))
% 0.48/0.64          | ~ (m1_subset_1 @ X32 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X33 @ X28)))
% 0.48/0.64          | ~ (v1_funct_2 @ X32 @ X33 @ X28)
% 0.48/0.64          | ~ (v1_funct_1 @ X32)
% 0.48/0.64          | ~ (m1_subset_1 @ X33 @ (k1_zfmisc_1 @ X30))
% 0.48/0.64          | (v1_xboole_0 @ X33)
% 0.48/0.64          | (v1_xboole_0 @ X30))),
% 0.48/0.64      inference('cnf', [status(esa)], [d1_tmap_1])).
% 0.48/0.64  thf('153', plain,
% 0.48/0.64      (![X28 : $i, X29 : $i, X30 : $i, X31 : $i, X32 : $i, X33 : $i]:
% 0.48/0.64         ((v1_xboole_0 @ X30)
% 0.48/0.64          | (v1_xboole_0 @ X33)
% 0.48/0.64          | ~ (m1_subset_1 @ X33 @ (k1_zfmisc_1 @ X30))
% 0.48/0.64          | ~ (v1_funct_1 @ X32)
% 0.48/0.64          | ~ (v1_funct_2 @ X32 @ X33 @ X28)
% 0.48/0.64          | ~ (m1_subset_1 @ X32 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X33 @ X28)))
% 0.48/0.64          | ((k2_partfun1 @ X33 @ X28 @ X32 @ (k9_subset_1 @ X30 @ X33 @ X29))
% 0.48/0.64              != (k2_partfun1 @ X29 @ X28 @ X31 @ 
% 0.48/0.64                  (k9_subset_1 @ X30 @ X33 @ X29)))
% 0.48/0.64          | ~ (v1_funct_1 @ (k1_tmap_1 @ X30 @ X28 @ X33 @ X29 @ X32 @ X31))
% 0.48/0.64          | ~ (v1_funct_2 @ (k1_tmap_1 @ X30 @ X28 @ X33 @ X29 @ X32 @ X31) @ 
% 0.48/0.64               (k4_subset_1 @ X30 @ X33 @ X29) @ X28)
% 0.48/0.64          | ~ (m1_subset_1 @ (k1_tmap_1 @ X30 @ X28 @ X33 @ X29 @ X32 @ X31) @ 
% 0.48/0.64               (k1_zfmisc_1 @ 
% 0.48/0.64                (k2_zfmisc_1 @ (k4_subset_1 @ X30 @ X33 @ X29) @ X28)))
% 0.48/0.64          | ((k2_partfun1 @ (k4_subset_1 @ X30 @ X33 @ X29) @ X28 @ 
% 0.48/0.64              (k1_tmap_1 @ X30 @ X28 @ X33 @ X29 @ X32 @ X31) @ X29) = (
% 0.48/0.64              X31))
% 0.48/0.64          | ~ (m1_subset_1 @ X31 @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ X29 @ X28)))
% 0.48/0.64          | ~ (v1_funct_2 @ X31 @ X29 @ X28)
% 0.48/0.64          | ~ (v1_funct_1 @ X31)
% 0.48/0.64          | ~ (m1_subset_1 @ X29 @ (k1_zfmisc_1 @ X30))
% 0.48/0.64          | (v1_xboole_0 @ X29)
% 0.48/0.64          | (v1_xboole_0 @ X28))),
% 0.48/0.64      inference('simplify', [status(thm)], ['152'])).
% 0.48/0.64  thf('154', plain,
% 0.48/0.64      (((v1_xboole_0 @ sk_D)
% 0.48/0.64        | (v1_xboole_0 @ sk_C)
% 0.48/0.64        | (v1_xboole_0 @ sk_B)
% 0.48/0.64        | (v1_xboole_0 @ sk_A)
% 0.48/0.64        | (v1_xboole_0 @ sk_B)
% 0.48/0.64        | (v1_xboole_0 @ sk_D)
% 0.48/0.64        | ~ (m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ sk_A))
% 0.48/0.64        | ~ (v1_funct_1 @ sk_F)
% 0.48/0.64        | ~ (v1_funct_2 @ sk_F @ sk_D @ sk_B)
% 0.48/0.64        | ~ (m1_subset_1 @ sk_F @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_D @ sk_B)))
% 0.48/0.64        | ((k2_partfun1 @ (k4_subset_1 @ sk_A @ sk_C @ sk_D) @ sk_B @ 
% 0.48/0.64            (k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F) @ sk_D)
% 0.48/0.64            = (sk_F))
% 0.48/0.64        | ~ (v1_funct_2 @ 
% 0.48/0.64             (k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F) @ 
% 0.48/0.64             (k4_subset_1 @ sk_A @ sk_C @ sk_D) @ sk_B)
% 0.48/0.64        | ~ (v1_funct_1 @ (k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F))
% 0.48/0.64        | ((k2_partfun1 @ sk_C @ sk_B @ sk_E @ 
% 0.48/0.64            (k9_subset_1 @ sk_A @ sk_C @ sk_D))
% 0.48/0.64            != (k2_partfun1 @ sk_D @ sk_B @ sk_F @ 
% 0.48/0.64                (k9_subset_1 @ sk_A @ sk_C @ sk_D)))
% 0.48/0.64        | ~ (m1_subset_1 @ sk_E @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_C @ sk_B)))
% 0.48/0.64        | ~ (v1_funct_2 @ sk_E @ sk_C @ sk_B)
% 0.48/0.64        | ~ (v1_funct_1 @ sk_E)
% 0.48/0.64        | ~ (m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ sk_A))
% 0.48/0.64        | (v1_xboole_0 @ sk_C)
% 0.48/0.64        | (v1_xboole_0 @ sk_A))),
% 0.48/0.64      inference('sup-', [status(thm)], ['151', '153'])).
% 0.48/0.64  thf('155', plain, ((m1_subset_1 @ sk_D @ (k1_zfmisc_1 @ sk_A))),
% 0.48/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.48/0.64  thf('156', plain, ((v1_funct_1 @ sk_F)),
% 0.48/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.48/0.64  thf('157', plain, ((v1_funct_2 @ sk_F @ sk_D @ sk_B)),
% 0.48/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.48/0.64  thf('158', plain,
% 0.48/0.64      ((m1_subset_1 @ sk_F @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_D @ sk_B)))),
% 0.48/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.48/0.64  thf('159', plain,
% 0.48/0.64      (![X0 : $i]:
% 0.48/0.64         ((k9_subset_1 @ sk_A @ X0 @ sk_D) = (k3_xboole_0 @ X0 @ sk_D))),
% 0.48/0.64      inference('sup-', [status(thm)], ['53', '54'])).
% 0.48/0.64  thf('160', plain, (((k3_xboole_0 @ sk_C @ sk_D) = (k1_xboole_0))),
% 0.48/0.64      inference('sup-', [status(thm)], ['62', '63'])).
% 0.48/0.64  thf('161', plain,
% 0.48/0.64      (![X0 : $i]:
% 0.48/0.64         ((k2_partfun1 @ sk_C @ sk_B @ sk_E @ X0) = (k7_relat_1 @ sk_E @ X0))),
% 0.48/0.64      inference('demod', [status(thm)], ['67', '68'])).
% 0.48/0.64  thf('162', plain, (((k7_relat_1 @ sk_E @ k1_xboole_0) = (k1_xboole_0))),
% 0.48/0.64      inference('sup-', [status(thm)], ['72', '93'])).
% 0.48/0.64  thf('163', plain,
% 0.48/0.64      (![X0 : $i]:
% 0.48/0.64         ((k9_subset_1 @ sk_A @ X0 @ sk_D) = (k3_xboole_0 @ X0 @ sk_D))),
% 0.48/0.64      inference('sup-', [status(thm)], ['53', '54'])).
% 0.48/0.64  thf('164', plain, (((k3_xboole_0 @ sk_C @ sk_D) = (k1_xboole_0))),
% 0.48/0.64      inference('sup-', [status(thm)], ['62', '63'])).
% 0.48/0.64  thf('165', plain,
% 0.48/0.64      (![X0 : $i]:
% 0.48/0.64         ((k2_partfun1 @ sk_D @ sk_B @ sk_F @ X0) = (k7_relat_1 @ sk_F @ X0))),
% 0.48/0.64      inference('demod', [status(thm)], ['99', '100'])).
% 0.48/0.64  thf('166', plain, (((k7_relat_1 @ sk_F @ k1_xboole_0) = (k1_xboole_0))),
% 0.48/0.64      inference('sup-', [status(thm)], ['102', '123'])).
% 0.48/0.64  thf('167', plain,
% 0.48/0.64      ((m1_subset_1 @ sk_E @ (k1_zfmisc_1 @ (k2_zfmisc_1 @ sk_C @ sk_B)))),
% 0.48/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.48/0.64  thf('168', plain, ((v1_funct_2 @ sk_E @ sk_C @ sk_B)),
% 0.48/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.48/0.64  thf('169', plain, ((v1_funct_1 @ sk_E)),
% 0.48/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.48/0.64  thf('170', plain, ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ sk_A))),
% 0.48/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.48/0.64  thf('171', plain,
% 0.48/0.64      (((v1_xboole_0 @ sk_D)
% 0.48/0.64        | (v1_xboole_0 @ sk_C)
% 0.48/0.64        | (v1_xboole_0 @ sk_B)
% 0.48/0.64        | (v1_xboole_0 @ sk_A)
% 0.48/0.64        | (v1_xboole_0 @ sk_B)
% 0.48/0.64        | (v1_xboole_0 @ sk_D)
% 0.48/0.64        | ((k2_partfun1 @ (k4_subset_1 @ sk_A @ sk_C @ sk_D) @ sk_B @ 
% 0.48/0.64            (k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F) @ sk_D)
% 0.48/0.64            = (sk_F))
% 0.48/0.64        | ~ (v1_funct_2 @ 
% 0.48/0.64             (k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F) @ 
% 0.48/0.64             (k4_subset_1 @ sk_A @ sk_C @ sk_D) @ sk_B)
% 0.48/0.64        | ~ (v1_funct_1 @ (k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F))
% 0.48/0.64        | ((k1_xboole_0) != (k1_xboole_0))
% 0.48/0.64        | (v1_xboole_0 @ sk_C)
% 0.48/0.64        | (v1_xboole_0 @ sk_A))),
% 0.48/0.64      inference('demod', [status(thm)],
% 0.48/0.64                ['154', '155', '156', '157', '158', '159', '160', '161', 
% 0.48/0.64                 '162', '163', '164', '165', '166', '167', '168', '169', '170'])).
% 0.48/0.64  thf('172', plain,
% 0.48/0.64      ((~ (v1_funct_1 @ (k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F))
% 0.48/0.64        | ~ (v1_funct_2 @ 
% 0.48/0.64             (k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F) @ 
% 0.48/0.64             (k4_subset_1 @ sk_A @ sk_C @ sk_D) @ sk_B)
% 0.48/0.64        | ((k2_partfun1 @ (k4_subset_1 @ sk_A @ sk_C @ sk_D) @ sk_B @ 
% 0.48/0.64            (k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F) @ sk_D)
% 0.48/0.64            = (sk_F))
% 0.48/0.64        | (v1_xboole_0 @ sk_A)
% 0.48/0.64        | (v1_xboole_0 @ sk_B)
% 0.48/0.64        | (v1_xboole_0 @ sk_C)
% 0.48/0.64        | (v1_xboole_0 @ sk_D))),
% 0.48/0.64      inference('simplify', [status(thm)], ['171'])).
% 0.48/0.64  thf('173', plain,
% 0.48/0.64      (((v1_xboole_0 @ sk_D)
% 0.48/0.64        | (v1_xboole_0 @ sk_C)
% 0.48/0.64        | (v1_xboole_0 @ sk_B)
% 0.48/0.64        | (v1_xboole_0 @ sk_A)
% 0.48/0.64        | (v1_xboole_0 @ sk_D)
% 0.48/0.64        | (v1_xboole_0 @ sk_C)
% 0.48/0.64        | (v1_xboole_0 @ sk_B)
% 0.48/0.64        | (v1_xboole_0 @ sk_A)
% 0.48/0.64        | ((k2_partfun1 @ (k4_subset_1 @ sk_A @ sk_C @ sk_D) @ sk_B @ 
% 0.48/0.64            (k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F) @ sk_D)
% 0.48/0.64            = (sk_F))
% 0.48/0.64        | ~ (v1_funct_1 @ (k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F)))),
% 0.48/0.64      inference('sup-', [status(thm)], ['150', '172'])).
% 0.48/0.64  thf('174', plain,
% 0.48/0.64      ((~ (v1_funct_1 @ (k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F))
% 0.48/0.64        | ((k2_partfun1 @ (k4_subset_1 @ sk_A @ sk_C @ sk_D) @ sk_B @ 
% 0.48/0.64            (k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F) @ sk_D)
% 0.48/0.64            = (sk_F))
% 0.48/0.64        | (v1_xboole_0 @ sk_A)
% 0.48/0.64        | (v1_xboole_0 @ sk_B)
% 0.48/0.64        | (v1_xboole_0 @ sk_C)
% 0.48/0.64        | (v1_xboole_0 @ sk_D))),
% 0.48/0.64      inference('simplify', [status(thm)], ['173'])).
% 0.48/0.64  thf('175', plain,
% 0.48/0.64      (((v1_xboole_0 @ sk_D)
% 0.48/0.64        | (v1_xboole_0 @ sk_C)
% 0.48/0.64        | (v1_xboole_0 @ sk_B)
% 0.48/0.64        | (v1_xboole_0 @ sk_A)
% 0.48/0.64        | (v1_xboole_0 @ sk_D)
% 0.48/0.64        | (v1_xboole_0 @ sk_C)
% 0.48/0.64        | (v1_xboole_0 @ sk_B)
% 0.48/0.64        | (v1_xboole_0 @ sk_A)
% 0.48/0.64        | ((k2_partfun1 @ (k4_subset_1 @ sk_A @ sk_C @ sk_D) @ sk_B @ 
% 0.48/0.64            (k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F) @ sk_D)
% 0.48/0.64            = (sk_F)))),
% 0.48/0.64      inference('sup-', [status(thm)], ['149', '174'])).
% 0.48/0.64  thf('176', plain,
% 0.48/0.64      ((((k2_partfun1 @ (k4_subset_1 @ sk_A @ sk_C @ sk_D) @ sk_B @ 
% 0.48/0.64          (k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F) @ sk_D)
% 0.48/0.64          = (sk_F))
% 0.48/0.64        | (v1_xboole_0 @ sk_A)
% 0.48/0.64        | (v1_xboole_0 @ sk_B)
% 0.48/0.64        | (v1_xboole_0 @ sk_C)
% 0.48/0.64        | (v1_xboole_0 @ sk_D))),
% 0.48/0.64      inference('simplify', [status(thm)], ['175'])).
% 0.48/0.64  thf('177', plain,
% 0.48/0.64      ((((k2_partfun1 @ (k4_subset_1 @ sk_A @ sk_C @ sk_D) @ sk_B @ 
% 0.48/0.64          (k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F) @ sk_D)
% 0.48/0.64          != (sk_F)))
% 0.48/0.64         <= (~
% 0.48/0.64             (((k2_partfun1 @ (k4_subset_1 @ sk_A @ sk_C @ sk_D) @ sk_B @ 
% 0.48/0.64                (k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F) @ sk_D)
% 0.48/0.64                = (sk_F))))),
% 0.48/0.64      inference('split', [status(esa)], ['133'])).
% 0.48/0.64  thf('178', plain,
% 0.48/0.64      (((((sk_F) != (sk_F))
% 0.48/0.64         | (v1_xboole_0 @ sk_D)
% 0.48/0.64         | (v1_xboole_0 @ sk_C)
% 0.48/0.64         | (v1_xboole_0 @ sk_B)
% 0.48/0.64         | (v1_xboole_0 @ sk_A)))
% 0.48/0.64         <= (~
% 0.48/0.64             (((k2_partfun1 @ (k4_subset_1 @ sk_A @ sk_C @ sk_D) @ sk_B @ 
% 0.48/0.64                (k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F) @ sk_D)
% 0.48/0.64                = (sk_F))))),
% 0.48/0.64      inference('sup-', [status(thm)], ['176', '177'])).
% 0.48/0.64  thf('179', plain,
% 0.48/0.64      ((((v1_xboole_0 @ sk_A)
% 0.48/0.64         | (v1_xboole_0 @ sk_B)
% 0.48/0.64         | (v1_xboole_0 @ sk_C)
% 0.48/0.64         | (v1_xboole_0 @ sk_D)))
% 0.48/0.64         <= (~
% 0.48/0.64             (((k2_partfun1 @ (k4_subset_1 @ sk_A @ sk_C @ sk_D) @ sk_B @ 
% 0.48/0.64                (k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F) @ sk_D)
% 0.48/0.64                = (sk_F))))),
% 0.48/0.64      inference('simplify', [status(thm)], ['178'])).
% 0.48/0.64  thf('180', plain, (~ (v1_xboole_0 @ sk_D)),
% 0.48/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.48/0.64  thf('181', plain,
% 0.48/0.64      ((((v1_xboole_0 @ sk_C) | (v1_xboole_0 @ sk_B) | (v1_xboole_0 @ sk_A)))
% 0.48/0.64         <= (~
% 0.48/0.64             (((k2_partfun1 @ (k4_subset_1 @ sk_A @ sk_C @ sk_D) @ sk_B @ 
% 0.48/0.64                (k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F) @ sk_D)
% 0.48/0.64                = (sk_F))))),
% 0.48/0.64      inference('sup-', [status(thm)], ['179', '180'])).
% 0.48/0.64  thf('182', plain, (~ (v1_xboole_0 @ sk_C)),
% 0.48/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.48/0.64  thf('183', plain,
% 0.48/0.64      ((((v1_xboole_0 @ sk_A) | (v1_xboole_0 @ sk_B)))
% 0.48/0.64         <= (~
% 0.48/0.64             (((k2_partfun1 @ (k4_subset_1 @ sk_A @ sk_C @ sk_D) @ sk_B @ 
% 0.48/0.64                (k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F) @ sk_D)
% 0.48/0.64                = (sk_F))))),
% 0.48/0.64      inference('clc', [status(thm)], ['181', '182'])).
% 0.48/0.64  thf('184', plain, (~ (v1_xboole_0 @ sk_A)),
% 0.48/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.48/0.64  thf('185', plain,
% 0.48/0.64      (((v1_xboole_0 @ sk_B))
% 0.48/0.64         <= (~
% 0.48/0.64             (((k2_partfun1 @ (k4_subset_1 @ sk_A @ sk_C @ sk_D) @ sk_B @ 
% 0.48/0.64                (k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F) @ sk_D)
% 0.48/0.64                = (sk_F))))),
% 0.48/0.64      inference('clc', [status(thm)], ['183', '184'])).
% 0.48/0.64  thf('186', plain, (~ (v1_xboole_0 @ sk_B)),
% 0.48/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.48/0.64  thf('187', plain,
% 0.48/0.64      ((((k2_partfun1 @ (k4_subset_1 @ sk_A @ sk_C @ sk_D) @ sk_B @ 
% 0.48/0.64          (k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F) @ sk_D)
% 0.48/0.64          = (sk_F)))),
% 0.48/0.64      inference('sup-', [status(thm)], ['185', '186'])).
% 0.48/0.64  thf('188', plain,
% 0.48/0.64      (~
% 0.48/0.64       (((k2_partfun1 @ (k4_subset_1 @ sk_A @ sk_C @ sk_D) @ sk_B @ 
% 0.48/0.64          (k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F) @ sk_C)
% 0.48/0.64          = (sk_E))) | 
% 0.48/0.64       ~
% 0.48/0.64       (((k2_partfun1 @ (k4_subset_1 @ sk_A @ sk_C @ sk_D) @ sk_B @ 
% 0.48/0.64          (k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F) @ sk_D)
% 0.48/0.64          = (sk_F))) | 
% 0.48/0.64       ~
% 0.48/0.64       (((k2_partfun1 @ sk_C @ sk_B @ sk_E @ (k9_subset_1 @ sk_A @ sk_C @ sk_D))
% 0.48/0.64          = (k2_partfun1 @ sk_D @ sk_B @ sk_F @ 
% 0.48/0.64             (k9_subset_1 @ sk_A @ sk_C @ sk_D))))),
% 0.48/0.64      inference('split', [status(esa)], ['133'])).
% 0.48/0.64  thf('189', plain,
% 0.48/0.64      (~
% 0.48/0.64       (((k2_partfun1 @ (k4_subset_1 @ sk_A @ sk_C @ sk_D) @ sk_B @ 
% 0.48/0.64          (k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F) @ sk_C)
% 0.48/0.64          = (sk_E)))),
% 0.48/0.64      inference('sat_resolution*', [status(thm)], ['148', '187', '188'])).
% 0.48/0.64  thf('190', plain,
% 0.48/0.64      (((k2_partfun1 @ (k4_subset_1 @ sk_A @ sk_C @ sk_D) @ sk_B @ 
% 0.48/0.64         (k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F) @ sk_C)
% 0.48/0.64         != (sk_E))),
% 0.48/0.64      inference('simpl_trail', [status(thm)], ['134', '189'])).
% 0.48/0.64  thf('191', plain,
% 0.48/0.64      ((~ (v1_funct_1 @ (k1_tmap_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_E @ sk_F))
% 0.48/0.64        | (v1_xboole_0 @ sk_A)
% 0.48/0.64        | (v1_xboole_0 @ sk_B)
% 0.48/0.64        | (v1_xboole_0 @ sk_C)
% 0.48/0.64        | (v1_xboole_0 @ sk_D))),
% 0.48/0.64      inference('simplify_reflect-', [status(thm)], ['132', '190'])).
% 0.48/0.64  thf('192', plain,
% 0.48/0.64      (((v1_xboole_0 @ sk_D)
% 0.48/0.64        | (v1_xboole_0 @ sk_C)
% 0.48/0.64        | (v1_xboole_0 @ sk_B)
% 0.48/0.64        | (v1_xboole_0 @ sk_A)
% 0.48/0.64        | (v1_xboole_0 @ sk_D)
% 0.48/0.64        | (v1_xboole_0 @ sk_C)
% 0.48/0.64        | (v1_xboole_0 @ sk_B)
% 0.48/0.64        | (v1_xboole_0 @ sk_A))),
% 0.48/0.64      inference('sup-', [status(thm)], ['15', '191'])).
% 0.48/0.64  thf('193', plain,
% 0.48/0.64      (((v1_xboole_0 @ sk_A)
% 0.48/0.64        | (v1_xboole_0 @ sk_B)
% 0.48/0.64        | (v1_xboole_0 @ sk_C)
% 0.48/0.64        | (v1_xboole_0 @ sk_D))),
% 0.48/0.64      inference('simplify', [status(thm)], ['192'])).
% 0.48/0.64  thf('194', plain, (~ (v1_xboole_0 @ sk_D)),
% 0.48/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.48/0.64  thf('195', plain,
% 0.48/0.64      (((v1_xboole_0 @ sk_C) | (v1_xboole_0 @ sk_B) | (v1_xboole_0 @ sk_A))),
% 0.48/0.64      inference('sup-', [status(thm)], ['193', '194'])).
% 0.48/0.64  thf('196', plain, (~ (v1_xboole_0 @ sk_C)),
% 0.48/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.48/0.64  thf('197', plain, (((v1_xboole_0 @ sk_A) | (v1_xboole_0 @ sk_B))),
% 0.48/0.64      inference('clc', [status(thm)], ['195', '196'])).
% 0.48/0.64  thf('198', plain, (~ (v1_xboole_0 @ sk_A)),
% 0.48/0.64      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.48/0.64  thf('199', plain, ((v1_xboole_0 @ sk_B)),
% 0.48/0.64      inference('clc', [status(thm)], ['197', '198'])).
% 0.48/0.64  thf('200', plain, ($false), inference('demod', [status(thm)], ['0', '199'])).
% 0.48/0.64  
% 0.48/0.64  % SZS output end Refutation
% 0.48/0.64  
% 0.48/0.65  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
