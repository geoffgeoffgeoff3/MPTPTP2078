%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.7MDVeiO9oQ

% Computer   : n008.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:51:32 EST 2020

% Result     : Theorem 0.21s
% Output     : Refutation 0.21s
% Verified   : 
% Statistics : Number of formulae       :   84 ( 141 expanded)
%              Number of leaves         :   21 (  48 expanded)
%              Depth                    :   12
%              Number of atoms          : 1074 (3405 expanded)
%              Number of equality atoms :  150 ( 537 expanded)
%              Maximal formula depth    :   23 (   9 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(sk_D_type,type,(
    sk_D: $i )).

thf(sk_E_type,type,(
    sk_E: $i )).

thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(sk_C_type,type,(
    sk_C: $i )).

thf(k3_zfmisc_1_type,type,(
    k3_zfmisc_1: $i > $i > $i > $i )).

thf(k5_mcart_1_type,type,(
    k5_mcart_1: $i > $i > $i > $i > $i )).

thf(k6_mcart_1_type,type,(
    k6_mcart_1: $i > $i > $i > $i > $i )).

thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(k7_mcart_1_type,type,(
    k7_mcart_1: $i > $i > $i > $i > $i )).

thf(sk_F_3_type,type,(
    sk_F_3: $i )).

thf(sk_G_3_type,type,(
    sk_G_3: $i )).

thf(k3_mcart_1_type,type,(
    k3_mcart_1: $i > $i > $i > $i )).

thf(t47_mcart_1,conjecture,(
    ! [A: $i,B: $i,C: $i] :
      ~ ( ( A != k1_xboole_0 )
        & ( B != k1_xboole_0 )
        & ( C != k1_xboole_0 )
        & ? [D: $i] :
            ( ? [E: $i,F: $i,G: $i] :
                ( ~ ( ( ( k5_mcart_1 @ A @ B @ C @ D )
                      = E )
                    & ( ( k6_mcart_1 @ A @ B @ C @ D )
                      = F )
                    & ( ( k7_mcart_1 @ A @ B @ C @ D )
                      = G ) )
                & ( D
                  = ( k3_mcart_1 @ E @ F @ G ) ) )
            & ( m1_subset_1 @ D @ ( k3_zfmisc_1 @ A @ B @ C ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i,C: $i] :
        ~ ( ( A != k1_xboole_0 )
          & ( B != k1_xboole_0 )
          & ( C != k1_xboole_0 )
          & ? [D: $i] :
              ( ? [E: $i,F: $i,G: $i] :
                  ( ~ ( ( ( k5_mcart_1 @ A @ B @ C @ D )
                        = E )
                      & ( ( k6_mcart_1 @ A @ B @ C @ D )
                        = F )
                      & ( ( k7_mcart_1 @ A @ B @ C @ D )
                        = G ) )
                  & ( D
                    = ( k3_mcart_1 @ E @ F @ G ) ) )
              & ( m1_subset_1 @ D @ ( k3_zfmisc_1 @ A @ B @ C ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t47_mcart_1])).

thf('0',plain,(
    m1_subset_1 @ sk_D @ ( k3_zfmisc_1 @ sk_A @ sk_B @ sk_C ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('1',plain,
    ( sk_D
    = ( k3_mcart_1 @ sk_E @ sk_F_3 @ sk_G_3 ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(d7_mcart_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ~ ( ( A != k1_xboole_0 )
        & ( B != k1_xboole_0 )
        & ( C != k1_xboole_0 )
        & ~ ! [D: $i] :
              ( ( m1_subset_1 @ D @ ( k3_zfmisc_1 @ A @ B @ C ) )
             => ! [E: $i] :
                  ( ( m1_subset_1 @ E @ C )
                 => ( ( E
                      = ( k7_mcart_1 @ A @ B @ C @ D ) )
                  <=> ! [F: $i,G: $i,H: $i] :
                        ( ( D
                          = ( k3_mcart_1 @ F @ G @ H ) )
                       => ( E = H ) ) ) ) ) ) )).

thf('2',plain,(
    ! [X16: $i,X17: $i,X18: $i,X19: $i,X20: $i,X21: $i,X22: $i,X23: $i] :
      ( ( X16 = k1_xboole_0 )
      | ( X17 = k1_xboole_0 )
      | ~ ( m1_subset_1 @ X18 @ X19 )
      | ( X18
       != ( k7_mcart_1 @ X16 @ X17 @ X19 @ X20 ) )
      | ( X18 = X21 )
      | ( X20
       != ( k3_mcart_1 @ X22 @ X23 @ X21 ) )
      | ~ ( m1_subset_1 @ X20 @ ( k3_zfmisc_1 @ X16 @ X17 @ X19 ) )
      | ( X19 = k1_xboole_0 ) ) ),
    inference(cnf,[status(esa)],[d7_mcart_1])).

thf('3',plain,(
    ! [X16: $i,X17: $i,X19: $i,X21: $i,X22: $i,X23: $i] :
      ( ( X19 = k1_xboole_0 )
      | ~ ( m1_subset_1 @ ( k3_mcart_1 @ X22 @ X23 @ X21 ) @ ( k3_zfmisc_1 @ X16 @ X17 @ X19 ) )
      | ( ( k7_mcart_1 @ X16 @ X17 @ X19 @ ( k3_mcart_1 @ X22 @ X23 @ X21 ) )
        = X21 )
      | ~ ( m1_subset_1 @ ( k7_mcart_1 @ X16 @ X17 @ X19 @ ( k3_mcart_1 @ X22 @ X23 @ X21 ) ) @ X19 )
      | ( X17 = k1_xboole_0 )
      | ( X16 = k1_xboole_0 ) ) ),
    inference(simplify,[status(thm)],['2'])).

thf('4',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( m1_subset_1 @ sk_D @ ( k3_zfmisc_1 @ X2 @ X1 @ X0 ) )
      | ( X2 = k1_xboole_0 )
      | ( X1 = k1_xboole_0 )
      | ~ ( m1_subset_1 @ ( k7_mcart_1 @ X2 @ X1 @ X0 @ ( k3_mcart_1 @ sk_E @ sk_F_3 @ sk_G_3 ) ) @ X0 )
      | ( ( k7_mcart_1 @ X2 @ X1 @ X0 @ ( k3_mcart_1 @ sk_E @ sk_F_3 @ sk_G_3 ) )
        = sk_G_3 )
      | ( X0 = k1_xboole_0 ) ) ),
    inference('sup-',[status(thm)],['1','3'])).

thf('5',plain,
    ( sk_D
    = ( k3_mcart_1 @ sk_E @ sk_F_3 @ sk_G_3 ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('6',plain,
    ( sk_D
    = ( k3_mcart_1 @ sk_E @ sk_F_3 @ sk_G_3 ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('7',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( m1_subset_1 @ sk_D @ ( k3_zfmisc_1 @ X2 @ X1 @ X0 ) )
      | ( X2 = k1_xboole_0 )
      | ( X1 = k1_xboole_0 )
      | ~ ( m1_subset_1 @ ( k7_mcart_1 @ X2 @ X1 @ X0 @ sk_D ) @ X0 )
      | ( ( k7_mcart_1 @ X2 @ X1 @ X0 @ sk_D )
        = sk_G_3 )
      | ( X0 = k1_xboole_0 ) ) ),
    inference(demod,[status(thm)],['4','5','6'])).

thf('8',plain,
    ( ( sk_C = k1_xboole_0 )
    | ( ( k7_mcart_1 @ sk_A @ sk_B @ sk_C @ sk_D )
      = sk_G_3 )
    | ~ ( m1_subset_1 @ ( k7_mcart_1 @ sk_A @ sk_B @ sk_C @ sk_D ) @ sk_C )
    | ( sk_B = k1_xboole_0 )
    | ( sk_A = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['0','7'])).

thf('9',plain,(
    m1_subset_1 @ sk_D @ ( k3_zfmisc_1 @ sk_A @ sk_B @ sk_C ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(dt_k7_mcart_1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( m1_subset_1 @ D @ ( k3_zfmisc_1 @ A @ B @ C ) )
     => ( m1_subset_1 @ ( k7_mcart_1 @ A @ B @ C @ D ) @ C ) ) )).

thf('10',plain,(
    ! [X32: $i,X33: $i,X34: $i,X35: $i] :
      ( ( m1_subset_1 @ ( k7_mcart_1 @ X32 @ X33 @ X34 @ X35 ) @ X34 )
      | ~ ( m1_subset_1 @ X35 @ ( k3_zfmisc_1 @ X32 @ X33 @ X34 ) ) ) ),
    inference(cnf,[status(esa)],[dt_k7_mcart_1])).

thf('11',plain,(
    m1_subset_1 @ ( k7_mcart_1 @ sk_A @ sk_B @ sk_C @ sk_D ) @ sk_C ),
    inference('sup-',[status(thm)],['9','10'])).

thf('12',plain,
    ( ( sk_C = k1_xboole_0 )
    | ( ( k7_mcart_1 @ sk_A @ sk_B @ sk_C @ sk_D )
      = sk_G_3 )
    | ( sk_B = k1_xboole_0 )
    | ( sk_A = k1_xboole_0 ) ),
    inference(demod,[status(thm)],['8','11'])).

thf('13',plain,(
    sk_A != k1_xboole_0 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('14',plain,(
    sk_B != k1_xboole_0 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('15',plain,
    ( ( ( k5_mcart_1 @ sk_A @ sk_B @ sk_C @ sk_D )
     != sk_E )
    | ( ( k6_mcart_1 @ sk_A @ sk_B @ sk_C @ sk_D )
     != sk_F_3 )
    | ( ( k7_mcart_1 @ sk_A @ sk_B @ sk_C @ sk_D )
     != sk_G_3 ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('16',plain,
    ( ( ( k7_mcart_1 @ sk_A @ sk_B @ sk_C @ sk_D )
     != sk_G_3 )
   <= ( ( k7_mcart_1 @ sk_A @ sk_B @ sk_C @ sk_D )
     != sk_G_3 ) ),
    inference(split,[status(esa)],['15'])).

thf('17',plain,(
    m1_subset_1 @ sk_D @ ( k3_zfmisc_1 @ sk_A @ sk_B @ sk_C ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('18',plain,
    ( sk_D
    = ( k3_mcart_1 @ sk_E @ sk_F_3 @ sk_G_3 ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(d5_mcart_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ~ ( ( A != k1_xboole_0 )
        & ( B != k1_xboole_0 )
        & ( C != k1_xboole_0 )
        & ~ ! [D: $i] :
              ( ( m1_subset_1 @ D @ ( k3_zfmisc_1 @ A @ B @ C ) )
             => ! [E: $i] :
                  ( ( m1_subset_1 @ E @ A )
                 => ( ( E
                      = ( k5_mcart_1 @ A @ B @ C @ D ) )
                  <=> ! [F: $i,G: $i,H: $i] :
                        ( ( D
                          = ( k3_mcart_1 @ F @ G @ H ) )
                       => ( E = F ) ) ) ) ) ) )).

thf('19',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i,X4: $i,X5: $i,X6: $i,X7: $i] :
      ( ( X0 = k1_xboole_0 )
      | ( X1 = k1_xboole_0 )
      | ~ ( m1_subset_1 @ X2 @ X0 )
      | ( X2
       != ( k5_mcart_1 @ X0 @ X1 @ X3 @ X4 ) )
      | ( X2 = X5 )
      | ( X4
       != ( k3_mcart_1 @ X5 @ X6 @ X7 ) )
      | ~ ( m1_subset_1 @ X4 @ ( k3_zfmisc_1 @ X0 @ X1 @ X3 ) )
      | ( X3 = k1_xboole_0 ) ) ),
    inference(cnf,[status(esa)],[d5_mcart_1])).

thf('20',plain,(
    ! [X0: $i,X1: $i,X3: $i,X5: $i,X6: $i,X7: $i] :
      ( ( X3 = k1_xboole_0 )
      | ~ ( m1_subset_1 @ ( k3_mcart_1 @ X5 @ X6 @ X7 ) @ ( k3_zfmisc_1 @ X0 @ X1 @ X3 ) )
      | ( ( k5_mcart_1 @ X0 @ X1 @ X3 @ ( k3_mcart_1 @ X5 @ X6 @ X7 ) )
        = X5 )
      | ~ ( m1_subset_1 @ ( k5_mcart_1 @ X0 @ X1 @ X3 @ ( k3_mcart_1 @ X5 @ X6 @ X7 ) ) @ X0 )
      | ( X1 = k1_xboole_0 )
      | ( X0 = k1_xboole_0 ) ) ),
    inference(simplify,[status(thm)],['19'])).

thf('21',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( m1_subset_1 @ sk_D @ ( k3_zfmisc_1 @ X2 @ X1 @ X0 ) )
      | ( X2 = k1_xboole_0 )
      | ( X1 = k1_xboole_0 )
      | ~ ( m1_subset_1 @ ( k5_mcart_1 @ X2 @ X1 @ X0 @ ( k3_mcart_1 @ sk_E @ sk_F_3 @ sk_G_3 ) ) @ X2 )
      | ( ( k5_mcart_1 @ X2 @ X1 @ X0 @ ( k3_mcart_1 @ sk_E @ sk_F_3 @ sk_G_3 ) )
        = sk_E )
      | ( X0 = k1_xboole_0 ) ) ),
    inference('sup-',[status(thm)],['18','20'])).

thf('22',plain,
    ( sk_D
    = ( k3_mcart_1 @ sk_E @ sk_F_3 @ sk_G_3 ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('23',plain,
    ( sk_D
    = ( k3_mcart_1 @ sk_E @ sk_F_3 @ sk_G_3 ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('24',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( m1_subset_1 @ sk_D @ ( k3_zfmisc_1 @ X2 @ X1 @ X0 ) )
      | ( X2 = k1_xboole_0 )
      | ( X1 = k1_xboole_0 )
      | ~ ( m1_subset_1 @ ( k5_mcart_1 @ X2 @ X1 @ X0 @ sk_D ) @ X2 )
      | ( ( k5_mcart_1 @ X2 @ X1 @ X0 @ sk_D )
        = sk_E )
      | ( X0 = k1_xboole_0 ) ) ),
    inference(demod,[status(thm)],['21','22','23'])).

thf('25',plain,
    ( ( sk_C = k1_xboole_0 )
    | ( ( k5_mcart_1 @ sk_A @ sk_B @ sk_C @ sk_D )
      = sk_E )
    | ~ ( m1_subset_1 @ ( k5_mcart_1 @ sk_A @ sk_B @ sk_C @ sk_D ) @ sk_A )
    | ( sk_B = k1_xboole_0 )
    | ( sk_A = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['17','24'])).

thf('26',plain,(
    m1_subset_1 @ sk_D @ ( k3_zfmisc_1 @ sk_A @ sk_B @ sk_C ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(dt_k5_mcart_1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( m1_subset_1 @ D @ ( k3_zfmisc_1 @ A @ B @ C ) )
     => ( m1_subset_1 @ ( k5_mcart_1 @ A @ B @ C @ D ) @ A ) ) )).

thf('27',plain,(
    ! [X24: $i,X25: $i,X26: $i,X27: $i] :
      ( ( m1_subset_1 @ ( k5_mcart_1 @ X24 @ X25 @ X26 @ X27 ) @ X24 )
      | ~ ( m1_subset_1 @ X27 @ ( k3_zfmisc_1 @ X24 @ X25 @ X26 ) ) ) ),
    inference(cnf,[status(esa)],[dt_k5_mcart_1])).

thf('28',plain,(
    m1_subset_1 @ ( k5_mcart_1 @ sk_A @ sk_B @ sk_C @ sk_D ) @ sk_A ),
    inference('sup-',[status(thm)],['26','27'])).

thf('29',plain,
    ( ( sk_C = k1_xboole_0 )
    | ( ( k5_mcart_1 @ sk_A @ sk_B @ sk_C @ sk_D )
      = sk_E )
    | ( sk_B = k1_xboole_0 )
    | ( sk_A = k1_xboole_0 ) ),
    inference(demod,[status(thm)],['25','28'])).

thf('30',plain,(
    sk_A != k1_xboole_0 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('31',plain,(
    sk_B != k1_xboole_0 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('32',plain,(
    sk_C != k1_xboole_0 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('33',plain,
    ( ( k5_mcart_1 @ sk_A @ sk_B @ sk_C @ sk_D )
    = sk_E ),
    inference('simplify_reflect-',[status(thm)],['29','30','31','32'])).

thf('34',plain,
    ( ( ( k5_mcart_1 @ sk_A @ sk_B @ sk_C @ sk_D )
     != sk_E )
   <= ( ( k5_mcart_1 @ sk_A @ sk_B @ sk_C @ sk_D )
     != sk_E ) ),
    inference(split,[status(esa)],['15'])).

thf('35',plain,
    ( ( sk_E != sk_E )
   <= ( ( k5_mcart_1 @ sk_A @ sk_B @ sk_C @ sk_D )
     != sk_E ) ),
    inference('sup-',[status(thm)],['33','34'])).

thf('36',plain,
    ( ( k5_mcart_1 @ sk_A @ sk_B @ sk_C @ sk_D )
    = sk_E ),
    inference(simplify,[status(thm)],['35'])).

thf('37',plain,(
    m1_subset_1 @ sk_D @ ( k3_zfmisc_1 @ sk_A @ sk_B @ sk_C ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('38',plain,
    ( sk_D
    = ( k3_mcart_1 @ sk_E @ sk_F_3 @ sk_G_3 ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(d6_mcart_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ~ ( ( A != k1_xboole_0 )
        & ( B != k1_xboole_0 )
        & ( C != k1_xboole_0 )
        & ~ ! [D: $i] :
              ( ( m1_subset_1 @ D @ ( k3_zfmisc_1 @ A @ B @ C ) )
             => ! [E: $i] :
                  ( ( m1_subset_1 @ E @ B )
                 => ( ( E
                      = ( k6_mcart_1 @ A @ B @ C @ D ) )
                  <=> ! [F: $i,G: $i,H: $i] :
                        ( ( D
                          = ( k3_mcart_1 @ F @ G @ H ) )
                       => ( E = G ) ) ) ) ) ) )).

thf('39',plain,(
    ! [X8: $i,X9: $i,X10: $i,X11: $i,X12: $i,X13: $i,X14: $i,X15: $i] :
      ( ( X8 = k1_xboole_0 )
      | ( X9 = k1_xboole_0 )
      | ~ ( m1_subset_1 @ X10 @ X9 )
      | ( X10
       != ( k6_mcart_1 @ X8 @ X9 @ X11 @ X12 ) )
      | ( X10 = X13 )
      | ( X12
       != ( k3_mcart_1 @ X14 @ X13 @ X15 ) )
      | ~ ( m1_subset_1 @ X12 @ ( k3_zfmisc_1 @ X8 @ X9 @ X11 ) )
      | ( X11 = k1_xboole_0 ) ) ),
    inference(cnf,[status(esa)],[d6_mcart_1])).

thf('40',plain,(
    ! [X8: $i,X9: $i,X11: $i,X13: $i,X14: $i,X15: $i] :
      ( ( X11 = k1_xboole_0 )
      | ~ ( m1_subset_1 @ ( k3_mcart_1 @ X14 @ X13 @ X15 ) @ ( k3_zfmisc_1 @ X8 @ X9 @ X11 ) )
      | ( ( k6_mcart_1 @ X8 @ X9 @ X11 @ ( k3_mcart_1 @ X14 @ X13 @ X15 ) )
        = X13 )
      | ~ ( m1_subset_1 @ ( k6_mcart_1 @ X8 @ X9 @ X11 @ ( k3_mcart_1 @ X14 @ X13 @ X15 ) ) @ X9 )
      | ( X9 = k1_xboole_0 )
      | ( X8 = k1_xboole_0 ) ) ),
    inference(simplify,[status(thm)],['39'])).

thf('41',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( m1_subset_1 @ sk_D @ ( k3_zfmisc_1 @ X2 @ X1 @ X0 ) )
      | ( X2 = k1_xboole_0 )
      | ( X1 = k1_xboole_0 )
      | ~ ( m1_subset_1 @ ( k6_mcart_1 @ X2 @ X1 @ X0 @ ( k3_mcart_1 @ sk_E @ sk_F_3 @ sk_G_3 ) ) @ X1 )
      | ( ( k6_mcart_1 @ X2 @ X1 @ X0 @ ( k3_mcart_1 @ sk_E @ sk_F_3 @ sk_G_3 ) )
        = sk_F_3 )
      | ( X0 = k1_xboole_0 ) ) ),
    inference('sup-',[status(thm)],['38','40'])).

thf('42',plain,
    ( sk_D
    = ( k3_mcart_1 @ sk_E @ sk_F_3 @ sk_G_3 ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('43',plain,
    ( sk_D
    = ( k3_mcart_1 @ sk_E @ sk_F_3 @ sk_G_3 ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('44',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( m1_subset_1 @ sk_D @ ( k3_zfmisc_1 @ X2 @ X1 @ X0 ) )
      | ( X2 = k1_xboole_0 )
      | ( X1 = k1_xboole_0 )
      | ~ ( m1_subset_1 @ ( k6_mcart_1 @ X2 @ X1 @ X0 @ sk_D ) @ X1 )
      | ( ( k6_mcart_1 @ X2 @ X1 @ X0 @ sk_D )
        = sk_F_3 )
      | ( X0 = k1_xboole_0 ) ) ),
    inference(demod,[status(thm)],['41','42','43'])).

thf('45',plain,
    ( ( sk_C = k1_xboole_0 )
    | ( ( k6_mcart_1 @ sk_A @ sk_B @ sk_C @ sk_D )
      = sk_F_3 )
    | ~ ( m1_subset_1 @ ( k6_mcart_1 @ sk_A @ sk_B @ sk_C @ sk_D ) @ sk_B )
    | ( sk_B = k1_xboole_0 )
    | ( sk_A = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['37','44'])).

thf('46',plain,(
    m1_subset_1 @ sk_D @ ( k3_zfmisc_1 @ sk_A @ sk_B @ sk_C ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(dt_k6_mcart_1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( m1_subset_1 @ D @ ( k3_zfmisc_1 @ A @ B @ C ) )
     => ( m1_subset_1 @ ( k6_mcart_1 @ A @ B @ C @ D ) @ B ) ) )).

thf('47',plain,(
    ! [X28: $i,X29: $i,X30: $i,X31: $i] :
      ( ( m1_subset_1 @ ( k6_mcart_1 @ X28 @ X29 @ X30 @ X31 ) @ X29 )
      | ~ ( m1_subset_1 @ X31 @ ( k3_zfmisc_1 @ X28 @ X29 @ X30 ) ) ) ),
    inference(cnf,[status(esa)],[dt_k6_mcart_1])).

thf('48',plain,(
    m1_subset_1 @ ( k6_mcart_1 @ sk_A @ sk_B @ sk_C @ sk_D ) @ sk_B ),
    inference('sup-',[status(thm)],['46','47'])).

thf('49',plain,
    ( ( sk_C = k1_xboole_0 )
    | ( ( k6_mcart_1 @ sk_A @ sk_B @ sk_C @ sk_D )
      = sk_F_3 )
    | ( sk_B = k1_xboole_0 )
    | ( sk_A = k1_xboole_0 ) ),
    inference(demod,[status(thm)],['45','48'])).

thf('50',plain,(
    sk_A != k1_xboole_0 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('51',plain,(
    sk_B != k1_xboole_0 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('52',plain,(
    sk_C != k1_xboole_0 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('53',plain,
    ( ( k6_mcart_1 @ sk_A @ sk_B @ sk_C @ sk_D )
    = sk_F_3 ),
    inference('simplify_reflect-',[status(thm)],['49','50','51','52'])).

thf('54',plain,
    ( ( ( k6_mcart_1 @ sk_A @ sk_B @ sk_C @ sk_D )
     != sk_F_3 )
   <= ( ( k6_mcart_1 @ sk_A @ sk_B @ sk_C @ sk_D )
     != sk_F_3 ) ),
    inference(split,[status(esa)],['15'])).

thf('55',plain,
    ( ( sk_F_3 != sk_F_3 )
   <= ( ( k6_mcart_1 @ sk_A @ sk_B @ sk_C @ sk_D )
     != sk_F_3 ) ),
    inference('sup-',[status(thm)],['53','54'])).

thf('56',plain,
    ( ( k6_mcart_1 @ sk_A @ sk_B @ sk_C @ sk_D )
    = sk_F_3 ),
    inference(simplify,[status(thm)],['55'])).

thf('57',plain,
    ( ( ( k7_mcart_1 @ sk_A @ sk_B @ sk_C @ sk_D )
     != sk_G_3 )
    | ( ( k6_mcart_1 @ sk_A @ sk_B @ sk_C @ sk_D )
     != sk_F_3 )
    | ( ( k5_mcart_1 @ sk_A @ sk_B @ sk_C @ sk_D )
     != sk_E ) ),
    inference(split,[status(esa)],['15'])).

thf('58',plain,(
    ( k7_mcart_1 @ sk_A @ sk_B @ sk_C @ sk_D )
 != sk_G_3 ),
    inference('sat_resolution*',[status(thm)],['36','56','57'])).

thf('59',plain,(
    ( k7_mcart_1 @ sk_A @ sk_B @ sk_C @ sk_D )
 != sk_G_3 ),
    inference(simpl_trail,[status(thm)],['16','58'])).

thf('60',plain,(
    sk_C != k1_xboole_0 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('61',plain,(
    $false ),
    inference('simplify_reflect-',[status(thm)],['12','13','14','59','60'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.10/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.10/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.7MDVeiO9oQ
% 0.14/0.34  % Computer   : n008.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % DateTime   : Tue Dec  1 16:43:00 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.34  % Running portfolio for 600 s
% 0.14/0.34  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.14/0.34  % Number of cores: 8
% 0.14/0.35  % Python version: Python 3.6.8
% 0.14/0.35  % Running in FO mode
% 0.21/0.43  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.21/0.43  % Solved by: fo/fo7.sh
% 0.21/0.43  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.21/0.43  % done 39 iterations in 0.016s
% 0.21/0.43  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.21/0.43  % SZS output start Refutation
% 0.21/0.43  thf(sk_D_type, type, sk_D: $i).
% 0.21/0.43  thf(sk_E_type, type, sk_E: $i).
% 0.21/0.43  thf(m1_subset_1_type, type, m1_subset_1: $i > $i > $o).
% 0.21/0.43  thf(sk_C_type, type, sk_C: $i).
% 0.21/0.43  thf(k3_zfmisc_1_type, type, k3_zfmisc_1: $i > $i > $i > $i).
% 0.21/0.43  thf(k5_mcart_1_type, type, k5_mcart_1: $i > $i > $i > $i > $i).
% 0.21/0.43  thf(k6_mcart_1_type, type, k6_mcart_1: $i > $i > $i > $i > $i).
% 0.21/0.43  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 0.21/0.43  thf(sk_A_type, type, sk_A: $i).
% 0.21/0.43  thf(sk_B_type, type, sk_B: $i).
% 0.21/0.43  thf(k7_mcart_1_type, type, k7_mcart_1: $i > $i > $i > $i > $i).
% 0.21/0.43  thf(sk_F_3_type, type, sk_F_3: $i).
% 0.21/0.43  thf(sk_G_3_type, type, sk_G_3: $i).
% 0.21/0.43  thf(k3_mcart_1_type, type, k3_mcart_1: $i > $i > $i > $i).
% 0.21/0.43  thf(t47_mcart_1, conjecture,
% 0.21/0.43    (![A:$i,B:$i,C:$i]:
% 0.21/0.43     ( ~( ( ( A ) != ( k1_xboole_0 ) ) & ( ( B ) != ( k1_xboole_0 ) ) & 
% 0.21/0.43          ( ( C ) != ( k1_xboole_0 ) ) & 
% 0.21/0.43          ( ?[D:$i]:
% 0.21/0.43            ( ( ?[E:$i,F:$i,G:$i]:
% 0.21/0.43                ( ( ~( ( ( k5_mcart_1 @ A @ B @ C @ D ) = ( E ) ) & 
% 0.21/0.43                       ( ( k6_mcart_1 @ A @ B @ C @ D ) = ( F ) ) & 
% 0.21/0.43                       ( ( k7_mcart_1 @ A @ B @ C @ D ) = ( G ) ) ) ) & 
% 0.21/0.43                  ( ( D ) = ( k3_mcart_1 @ E @ F @ G ) ) ) ) & 
% 0.21/0.43              ( m1_subset_1 @ D @ ( k3_zfmisc_1 @ A @ B @ C ) ) ) ) ) ))).
% 0.21/0.43  thf(zf_stmt_0, negated_conjecture,
% 0.21/0.43    (~( ![A:$i,B:$i,C:$i]:
% 0.21/0.43        ( ~( ( ( A ) != ( k1_xboole_0 ) ) & ( ( B ) != ( k1_xboole_0 ) ) & 
% 0.21/0.43             ( ( C ) != ( k1_xboole_0 ) ) & 
% 0.21/0.43             ( ?[D:$i]:
% 0.21/0.43               ( ( ?[E:$i,F:$i,G:$i]:
% 0.21/0.43                   ( ( ~( ( ( k5_mcart_1 @ A @ B @ C @ D ) = ( E ) ) & 
% 0.21/0.43                          ( ( k6_mcart_1 @ A @ B @ C @ D ) = ( F ) ) & 
% 0.21/0.43                          ( ( k7_mcart_1 @ A @ B @ C @ D ) = ( G ) ) ) ) & 
% 0.21/0.43                     ( ( D ) = ( k3_mcart_1 @ E @ F @ G ) ) ) ) & 
% 0.21/0.43                 ( m1_subset_1 @ D @ ( k3_zfmisc_1 @ A @ B @ C ) ) ) ) ) ) )),
% 0.21/0.43    inference('cnf.neg', [status(esa)], [t47_mcart_1])).
% 0.21/0.43  thf('0', plain, ((m1_subset_1 @ sk_D @ (k3_zfmisc_1 @ sk_A @ sk_B @ sk_C))),
% 0.21/0.43      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.43  thf('1', plain, (((sk_D) = (k3_mcart_1 @ sk_E @ sk_F_3 @ sk_G_3))),
% 0.21/0.43      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.43  thf(d7_mcart_1, axiom,
% 0.21/0.43    (![A:$i,B:$i,C:$i]:
% 0.21/0.43     ( ~( ( ( A ) != ( k1_xboole_0 ) ) & ( ( B ) != ( k1_xboole_0 ) ) & 
% 0.21/0.43          ( ( C ) != ( k1_xboole_0 ) ) & 
% 0.21/0.43          ( ~( ![D:$i]:
% 0.21/0.43               ( ( m1_subset_1 @ D @ ( k3_zfmisc_1 @ A @ B @ C ) ) =>
% 0.21/0.43                 ( ![E:$i]:
% 0.21/0.43                   ( ( m1_subset_1 @ E @ C ) =>
% 0.21/0.43                     ( ( ( E ) = ( k7_mcart_1 @ A @ B @ C @ D ) ) <=>
% 0.21/0.43                       ( ![F:$i,G:$i,H:$i]:
% 0.21/0.43                         ( ( ( D ) = ( k3_mcart_1 @ F @ G @ H ) ) =>
% 0.21/0.43                           ( ( E ) = ( H ) ) ) ) ) ) ) ) ) ) ) ))).
% 0.21/0.43  thf('2', plain,
% 0.21/0.43      (![X16 : $i, X17 : $i, X18 : $i, X19 : $i, X20 : $i, X21 : $i, X22 : $i, 
% 0.21/0.43         X23 : $i]:
% 0.21/0.43         (((X16) = (k1_xboole_0))
% 0.21/0.43          | ((X17) = (k1_xboole_0))
% 0.21/0.43          | ~ (m1_subset_1 @ X18 @ X19)
% 0.21/0.43          | ((X18) != (k7_mcart_1 @ X16 @ X17 @ X19 @ X20))
% 0.21/0.43          | ((X18) = (X21))
% 0.21/0.43          | ((X20) != (k3_mcart_1 @ X22 @ X23 @ X21))
% 0.21/0.43          | ~ (m1_subset_1 @ X20 @ (k3_zfmisc_1 @ X16 @ X17 @ X19))
% 0.21/0.43          | ((X19) = (k1_xboole_0)))),
% 0.21/0.43      inference('cnf', [status(esa)], [d7_mcart_1])).
% 0.21/0.43  thf('3', plain,
% 0.21/0.43      (![X16 : $i, X17 : $i, X19 : $i, X21 : $i, X22 : $i, X23 : $i]:
% 0.21/0.43         (((X19) = (k1_xboole_0))
% 0.21/0.43          | ~ (m1_subset_1 @ (k3_mcart_1 @ X22 @ X23 @ X21) @ 
% 0.21/0.43               (k3_zfmisc_1 @ X16 @ X17 @ X19))
% 0.21/0.43          | ((k7_mcart_1 @ X16 @ X17 @ X19 @ (k3_mcart_1 @ X22 @ X23 @ X21))
% 0.21/0.43              = (X21))
% 0.21/0.43          | ~ (m1_subset_1 @ 
% 0.21/0.43               (k7_mcart_1 @ X16 @ X17 @ X19 @ (k3_mcart_1 @ X22 @ X23 @ X21)) @ 
% 0.21/0.43               X19)
% 0.21/0.43          | ((X17) = (k1_xboole_0))
% 0.21/0.43          | ((X16) = (k1_xboole_0)))),
% 0.21/0.43      inference('simplify', [status(thm)], ['2'])).
% 0.21/0.43  thf('4', plain,
% 0.21/0.43      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.21/0.43         (~ (m1_subset_1 @ sk_D @ (k3_zfmisc_1 @ X2 @ X1 @ X0))
% 0.21/0.43          | ((X2) = (k1_xboole_0))
% 0.21/0.43          | ((X1) = (k1_xboole_0))
% 0.21/0.43          | ~ (m1_subset_1 @ 
% 0.21/0.43               (k7_mcart_1 @ X2 @ X1 @ X0 @ 
% 0.21/0.43                (k3_mcart_1 @ sk_E @ sk_F_3 @ sk_G_3)) @ 
% 0.21/0.43               X0)
% 0.21/0.43          | ((k7_mcart_1 @ X2 @ X1 @ X0 @ (k3_mcart_1 @ sk_E @ sk_F_3 @ sk_G_3))
% 0.21/0.43              = (sk_G_3))
% 0.21/0.43          | ((X0) = (k1_xboole_0)))),
% 0.21/0.43      inference('sup-', [status(thm)], ['1', '3'])).
% 0.21/0.43  thf('5', plain, (((sk_D) = (k3_mcart_1 @ sk_E @ sk_F_3 @ sk_G_3))),
% 0.21/0.43      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.43  thf('6', plain, (((sk_D) = (k3_mcart_1 @ sk_E @ sk_F_3 @ sk_G_3))),
% 0.21/0.43      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.43  thf('7', plain,
% 0.21/0.43      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.21/0.43         (~ (m1_subset_1 @ sk_D @ (k3_zfmisc_1 @ X2 @ X1 @ X0))
% 0.21/0.43          | ((X2) = (k1_xboole_0))
% 0.21/0.43          | ((X1) = (k1_xboole_0))
% 0.21/0.43          | ~ (m1_subset_1 @ (k7_mcart_1 @ X2 @ X1 @ X0 @ sk_D) @ X0)
% 0.21/0.43          | ((k7_mcart_1 @ X2 @ X1 @ X0 @ sk_D) = (sk_G_3))
% 0.21/0.43          | ((X0) = (k1_xboole_0)))),
% 0.21/0.43      inference('demod', [status(thm)], ['4', '5', '6'])).
% 0.21/0.43  thf('8', plain,
% 0.21/0.43      ((((sk_C) = (k1_xboole_0))
% 0.21/0.43        | ((k7_mcart_1 @ sk_A @ sk_B @ sk_C @ sk_D) = (sk_G_3))
% 0.21/0.43        | ~ (m1_subset_1 @ (k7_mcart_1 @ sk_A @ sk_B @ sk_C @ sk_D) @ sk_C)
% 0.21/0.43        | ((sk_B) = (k1_xboole_0))
% 0.21/0.43        | ((sk_A) = (k1_xboole_0)))),
% 0.21/0.43      inference('sup-', [status(thm)], ['0', '7'])).
% 0.21/0.43  thf('9', plain, ((m1_subset_1 @ sk_D @ (k3_zfmisc_1 @ sk_A @ sk_B @ sk_C))),
% 0.21/0.43      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.43  thf(dt_k7_mcart_1, axiom,
% 0.21/0.43    (![A:$i,B:$i,C:$i,D:$i]:
% 0.21/0.43     ( ( m1_subset_1 @ D @ ( k3_zfmisc_1 @ A @ B @ C ) ) =>
% 0.21/0.43       ( m1_subset_1 @ ( k7_mcart_1 @ A @ B @ C @ D ) @ C ) ))).
% 0.21/0.43  thf('10', plain,
% 0.21/0.43      (![X32 : $i, X33 : $i, X34 : $i, X35 : $i]:
% 0.21/0.43         ((m1_subset_1 @ (k7_mcart_1 @ X32 @ X33 @ X34 @ X35) @ X34)
% 0.21/0.43          | ~ (m1_subset_1 @ X35 @ (k3_zfmisc_1 @ X32 @ X33 @ X34)))),
% 0.21/0.43      inference('cnf', [status(esa)], [dt_k7_mcart_1])).
% 0.21/0.43  thf('11', plain,
% 0.21/0.43      ((m1_subset_1 @ (k7_mcart_1 @ sk_A @ sk_B @ sk_C @ sk_D) @ sk_C)),
% 0.21/0.43      inference('sup-', [status(thm)], ['9', '10'])).
% 0.21/0.43  thf('12', plain,
% 0.21/0.43      ((((sk_C) = (k1_xboole_0))
% 0.21/0.43        | ((k7_mcart_1 @ sk_A @ sk_B @ sk_C @ sk_D) = (sk_G_3))
% 0.21/0.43        | ((sk_B) = (k1_xboole_0))
% 0.21/0.43        | ((sk_A) = (k1_xboole_0)))),
% 0.21/0.43      inference('demod', [status(thm)], ['8', '11'])).
% 0.21/0.43  thf('13', plain, (((sk_A) != (k1_xboole_0))),
% 0.21/0.43      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.43  thf('14', plain, (((sk_B) != (k1_xboole_0))),
% 0.21/0.43      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.43  thf('15', plain,
% 0.21/0.43      ((((k5_mcart_1 @ sk_A @ sk_B @ sk_C @ sk_D) != (sk_E))
% 0.21/0.43        | ((k6_mcart_1 @ sk_A @ sk_B @ sk_C @ sk_D) != (sk_F_3))
% 0.21/0.43        | ((k7_mcart_1 @ sk_A @ sk_B @ sk_C @ sk_D) != (sk_G_3)))),
% 0.21/0.43      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.43  thf('16', plain,
% 0.21/0.43      ((((k7_mcart_1 @ sk_A @ sk_B @ sk_C @ sk_D) != (sk_G_3)))
% 0.21/0.43         <= (~ (((k7_mcart_1 @ sk_A @ sk_B @ sk_C @ sk_D) = (sk_G_3))))),
% 0.21/0.43      inference('split', [status(esa)], ['15'])).
% 0.21/0.43  thf('17', plain, ((m1_subset_1 @ sk_D @ (k3_zfmisc_1 @ sk_A @ sk_B @ sk_C))),
% 0.21/0.43      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.43  thf('18', plain, (((sk_D) = (k3_mcart_1 @ sk_E @ sk_F_3 @ sk_G_3))),
% 0.21/0.43      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.43  thf(d5_mcart_1, axiom,
% 0.21/0.43    (![A:$i,B:$i,C:$i]:
% 0.21/0.43     ( ~( ( ( A ) != ( k1_xboole_0 ) ) & ( ( B ) != ( k1_xboole_0 ) ) & 
% 0.21/0.43          ( ( C ) != ( k1_xboole_0 ) ) & 
% 0.21/0.43          ( ~( ![D:$i]:
% 0.21/0.43               ( ( m1_subset_1 @ D @ ( k3_zfmisc_1 @ A @ B @ C ) ) =>
% 0.21/0.43                 ( ![E:$i]:
% 0.21/0.43                   ( ( m1_subset_1 @ E @ A ) =>
% 0.21/0.43                     ( ( ( E ) = ( k5_mcart_1 @ A @ B @ C @ D ) ) <=>
% 0.21/0.43                       ( ![F:$i,G:$i,H:$i]:
% 0.21/0.43                         ( ( ( D ) = ( k3_mcart_1 @ F @ G @ H ) ) =>
% 0.21/0.43                           ( ( E ) = ( F ) ) ) ) ) ) ) ) ) ) ) ))).
% 0.21/0.43  thf('19', plain,
% 0.21/0.43      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i, X4 : $i, X5 : $i, X6 : $i, X7 : $i]:
% 0.21/0.43         (((X0) = (k1_xboole_0))
% 0.21/0.43          | ((X1) = (k1_xboole_0))
% 0.21/0.43          | ~ (m1_subset_1 @ X2 @ X0)
% 0.21/0.43          | ((X2) != (k5_mcart_1 @ X0 @ X1 @ X3 @ X4))
% 0.21/0.43          | ((X2) = (X5))
% 0.21/0.43          | ((X4) != (k3_mcart_1 @ X5 @ X6 @ X7))
% 0.21/0.43          | ~ (m1_subset_1 @ X4 @ (k3_zfmisc_1 @ X0 @ X1 @ X3))
% 0.21/0.43          | ((X3) = (k1_xboole_0)))),
% 0.21/0.43      inference('cnf', [status(esa)], [d5_mcart_1])).
% 0.21/0.43  thf('20', plain,
% 0.21/0.43      (![X0 : $i, X1 : $i, X3 : $i, X5 : $i, X6 : $i, X7 : $i]:
% 0.21/0.43         (((X3) = (k1_xboole_0))
% 0.21/0.43          | ~ (m1_subset_1 @ (k3_mcart_1 @ X5 @ X6 @ X7) @ 
% 0.21/0.43               (k3_zfmisc_1 @ X0 @ X1 @ X3))
% 0.21/0.43          | ((k5_mcart_1 @ X0 @ X1 @ X3 @ (k3_mcart_1 @ X5 @ X6 @ X7)) = (X5))
% 0.21/0.43          | ~ (m1_subset_1 @ 
% 0.21/0.43               (k5_mcart_1 @ X0 @ X1 @ X3 @ (k3_mcart_1 @ X5 @ X6 @ X7)) @ X0)
% 0.21/0.43          | ((X1) = (k1_xboole_0))
% 0.21/0.43          | ((X0) = (k1_xboole_0)))),
% 0.21/0.43      inference('simplify', [status(thm)], ['19'])).
% 0.21/0.43  thf('21', plain,
% 0.21/0.43      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.21/0.43         (~ (m1_subset_1 @ sk_D @ (k3_zfmisc_1 @ X2 @ X1 @ X0))
% 0.21/0.43          | ((X2) = (k1_xboole_0))
% 0.21/0.43          | ((X1) = (k1_xboole_0))
% 0.21/0.43          | ~ (m1_subset_1 @ 
% 0.21/0.43               (k5_mcart_1 @ X2 @ X1 @ X0 @ 
% 0.21/0.43                (k3_mcart_1 @ sk_E @ sk_F_3 @ sk_G_3)) @ 
% 0.21/0.43               X2)
% 0.21/0.43          | ((k5_mcart_1 @ X2 @ X1 @ X0 @ (k3_mcart_1 @ sk_E @ sk_F_3 @ sk_G_3))
% 0.21/0.43              = (sk_E))
% 0.21/0.43          | ((X0) = (k1_xboole_0)))),
% 0.21/0.43      inference('sup-', [status(thm)], ['18', '20'])).
% 0.21/0.43  thf('22', plain, (((sk_D) = (k3_mcart_1 @ sk_E @ sk_F_3 @ sk_G_3))),
% 0.21/0.43      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.43  thf('23', plain, (((sk_D) = (k3_mcart_1 @ sk_E @ sk_F_3 @ sk_G_3))),
% 0.21/0.43      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.43  thf('24', plain,
% 0.21/0.43      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.21/0.43         (~ (m1_subset_1 @ sk_D @ (k3_zfmisc_1 @ X2 @ X1 @ X0))
% 0.21/0.43          | ((X2) = (k1_xboole_0))
% 0.21/0.43          | ((X1) = (k1_xboole_0))
% 0.21/0.43          | ~ (m1_subset_1 @ (k5_mcart_1 @ X2 @ X1 @ X0 @ sk_D) @ X2)
% 0.21/0.43          | ((k5_mcart_1 @ X2 @ X1 @ X0 @ sk_D) = (sk_E))
% 0.21/0.43          | ((X0) = (k1_xboole_0)))),
% 0.21/0.43      inference('demod', [status(thm)], ['21', '22', '23'])).
% 0.21/0.43  thf('25', plain,
% 0.21/0.43      ((((sk_C) = (k1_xboole_0))
% 0.21/0.43        | ((k5_mcart_1 @ sk_A @ sk_B @ sk_C @ sk_D) = (sk_E))
% 0.21/0.43        | ~ (m1_subset_1 @ (k5_mcart_1 @ sk_A @ sk_B @ sk_C @ sk_D) @ sk_A)
% 0.21/0.43        | ((sk_B) = (k1_xboole_0))
% 0.21/0.43        | ((sk_A) = (k1_xboole_0)))),
% 0.21/0.43      inference('sup-', [status(thm)], ['17', '24'])).
% 0.21/0.43  thf('26', plain, ((m1_subset_1 @ sk_D @ (k3_zfmisc_1 @ sk_A @ sk_B @ sk_C))),
% 0.21/0.43      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.43  thf(dt_k5_mcart_1, axiom,
% 0.21/0.43    (![A:$i,B:$i,C:$i,D:$i]:
% 0.21/0.43     ( ( m1_subset_1 @ D @ ( k3_zfmisc_1 @ A @ B @ C ) ) =>
% 0.21/0.43       ( m1_subset_1 @ ( k5_mcart_1 @ A @ B @ C @ D ) @ A ) ))).
% 0.21/0.43  thf('27', plain,
% 0.21/0.43      (![X24 : $i, X25 : $i, X26 : $i, X27 : $i]:
% 0.21/0.43         ((m1_subset_1 @ (k5_mcart_1 @ X24 @ X25 @ X26 @ X27) @ X24)
% 0.21/0.43          | ~ (m1_subset_1 @ X27 @ (k3_zfmisc_1 @ X24 @ X25 @ X26)))),
% 0.21/0.43      inference('cnf', [status(esa)], [dt_k5_mcart_1])).
% 0.21/0.43  thf('28', plain,
% 0.21/0.43      ((m1_subset_1 @ (k5_mcart_1 @ sk_A @ sk_B @ sk_C @ sk_D) @ sk_A)),
% 0.21/0.43      inference('sup-', [status(thm)], ['26', '27'])).
% 0.21/0.43  thf('29', plain,
% 0.21/0.43      ((((sk_C) = (k1_xboole_0))
% 0.21/0.43        | ((k5_mcart_1 @ sk_A @ sk_B @ sk_C @ sk_D) = (sk_E))
% 0.21/0.43        | ((sk_B) = (k1_xboole_0))
% 0.21/0.43        | ((sk_A) = (k1_xboole_0)))),
% 0.21/0.43      inference('demod', [status(thm)], ['25', '28'])).
% 0.21/0.43  thf('30', plain, (((sk_A) != (k1_xboole_0))),
% 0.21/0.43      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.43  thf('31', plain, (((sk_B) != (k1_xboole_0))),
% 0.21/0.43      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.43  thf('32', plain, (((sk_C) != (k1_xboole_0))),
% 0.21/0.43      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.43  thf('33', plain, (((k5_mcart_1 @ sk_A @ sk_B @ sk_C @ sk_D) = (sk_E))),
% 0.21/0.43      inference('simplify_reflect-', [status(thm)], ['29', '30', '31', '32'])).
% 0.21/0.43  thf('34', plain,
% 0.21/0.43      ((((k5_mcart_1 @ sk_A @ sk_B @ sk_C @ sk_D) != (sk_E)))
% 0.21/0.43         <= (~ (((k5_mcart_1 @ sk_A @ sk_B @ sk_C @ sk_D) = (sk_E))))),
% 0.21/0.43      inference('split', [status(esa)], ['15'])).
% 0.21/0.43  thf('35', plain,
% 0.21/0.43      ((((sk_E) != (sk_E)))
% 0.21/0.43         <= (~ (((k5_mcart_1 @ sk_A @ sk_B @ sk_C @ sk_D) = (sk_E))))),
% 0.21/0.43      inference('sup-', [status(thm)], ['33', '34'])).
% 0.21/0.43  thf('36', plain, ((((k5_mcart_1 @ sk_A @ sk_B @ sk_C @ sk_D) = (sk_E)))),
% 0.21/0.43      inference('simplify', [status(thm)], ['35'])).
% 0.21/0.43  thf('37', plain, ((m1_subset_1 @ sk_D @ (k3_zfmisc_1 @ sk_A @ sk_B @ sk_C))),
% 0.21/0.43      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.43  thf('38', plain, (((sk_D) = (k3_mcart_1 @ sk_E @ sk_F_3 @ sk_G_3))),
% 0.21/0.43      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.43  thf(d6_mcart_1, axiom,
% 0.21/0.43    (![A:$i,B:$i,C:$i]:
% 0.21/0.43     ( ~( ( ( A ) != ( k1_xboole_0 ) ) & ( ( B ) != ( k1_xboole_0 ) ) & 
% 0.21/0.43          ( ( C ) != ( k1_xboole_0 ) ) & 
% 0.21/0.43          ( ~( ![D:$i]:
% 0.21/0.43               ( ( m1_subset_1 @ D @ ( k3_zfmisc_1 @ A @ B @ C ) ) =>
% 0.21/0.43                 ( ![E:$i]:
% 0.21/0.43                   ( ( m1_subset_1 @ E @ B ) =>
% 0.21/0.43                     ( ( ( E ) = ( k6_mcart_1 @ A @ B @ C @ D ) ) <=>
% 0.21/0.43                       ( ![F:$i,G:$i,H:$i]:
% 0.21/0.43                         ( ( ( D ) = ( k3_mcart_1 @ F @ G @ H ) ) =>
% 0.21/0.43                           ( ( E ) = ( G ) ) ) ) ) ) ) ) ) ) ) ))).
% 0.21/0.43  thf('39', plain,
% 0.21/0.43      (![X8 : $i, X9 : $i, X10 : $i, X11 : $i, X12 : $i, X13 : $i, X14 : $i, 
% 0.21/0.43         X15 : $i]:
% 0.21/0.43         (((X8) = (k1_xboole_0))
% 0.21/0.43          | ((X9) = (k1_xboole_0))
% 0.21/0.43          | ~ (m1_subset_1 @ X10 @ X9)
% 0.21/0.43          | ((X10) != (k6_mcart_1 @ X8 @ X9 @ X11 @ X12))
% 0.21/0.43          | ((X10) = (X13))
% 0.21/0.43          | ((X12) != (k3_mcart_1 @ X14 @ X13 @ X15))
% 0.21/0.43          | ~ (m1_subset_1 @ X12 @ (k3_zfmisc_1 @ X8 @ X9 @ X11))
% 0.21/0.43          | ((X11) = (k1_xboole_0)))),
% 0.21/0.43      inference('cnf', [status(esa)], [d6_mcart_1])).
% 0.21/0.43  thf('40', plain,
% 0.21/0.43      (![X8 : $i, X9 : $i, X11 : $i, X13 : $i, X14 : $i, X15 : $i]:
% 0.21/0.43         (((X11) = (k1_xboole_0))
% 0.21/0.43          | ~ (m1_subset_1 @ (k3_mcart_1 @ X14 @ X13 @ X15) @ 
% 0.21/0.43               (k3_zfmisc_1 @ X8 @ X9 @ X11))
% 0.21/0.43          | ((k6_mcart_1 @ X8 @ X9 @ X11 @ (k3_mcart_1 @ X14 @ X13 @ X15))
% 0.21/0.43              = (X13))
% 0.21/0.43          | ~ (m1_subset_1 @ 
% 0.21/0.43               (k6_mcart_1 @ X8 @ X9 @ X11 @ (k3_mcart_1 @ X14 @ X13 @ X15)) @ 
% 0.21/0.43               X9)
% 0.21/0.43          | ((X9) = (k1_xboole_0))
% 0.21/0.43          | ((X8) = (k1_xboole_0)))),
% 0.21/0.43      inference('simplify', [status(thm)], ['39'])).
% 0.21/0.43  thf('41', plain,
% 0.21/0.43      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.21/0.43         (~ (m1_subset_1 @ sk_D @ (k3_zfmisc_1 @ X2 @ X1 @ X0))
% 0.21/0.43          | ((X2) = (k1_xboole_0))
% 0.21/0.43          | ((X1) = (k1_xboole_0))
% 0.21/0.43          | ~ (m1_subset_1 @ 
% 0.21/0.43               (k6_mcart_1 @ X2 @ X1 @ X0 @ 
% 0.21/0.43                (k3_mcart_1 @ sk_E @ sk_F_3 @ sk_G_3)) @ 
% 0.21/0.43               X1)
% 0.21/0.43          | ((k6_mcart_1 @ X2 @ X1 @ X0 @ (k3_mcart_1 @ sk_E @ sk_F_3 @ sk_G_3))
% 0.21/0.43              = (sk_F_3))
% 0.21/0.43          | ((X0) = (k1_xboole_0)))),
% 0.21/0.43      inference('sup-', [status(thm)], ['38', '40'])).
% 0.21/0.43  thf('42', plain, (((sk_D) = (k3_mcart_1 @ sk_E @ sk_F_3 @ sk_G_3))),
% 0.21/0.43      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.43  thf('43', plain, (((sk_D) = (k3_mcart_1 @ sk_E @ sk_F_3 @ sk_G_3))),
% 0.21/0.43      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.43  thf('44', plain,
% 0.21/0.43      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.21/0.43         (~ (m1_subset_1 @ sk_D @ (k3_zfmisc_1 @ X2 @ X1 @ X0))
% 0.21/0.43          | ((X2) = (k1_xboole_0))
% 0.21/0.43          | ((X1) = (k1_xboole_0))
% 0.21/0.43          | ~ (m1_subset_1 @ (k6_mcart_1 @ X2 @ X1 @ X0 @ sk_D) @ X1)
% 0.21/0.43          | ((k6_mcart_1 @ X2 @ X1 @ X0 @ sk_D) = (sk_F_3))
% 0.21/0.43          | ((X0) = (k1_xboole_0)))),
% 0.21/0.43      inference('demod', [status(thm)], ['41', '42', '43'])).
% 0.21/0.43  thf('45', plain,
% 0.21/0.43      ((((sk_C) = (k1_xboole_0))
% 0.21/0.43        | ((k6_mcart_1 @ sk_A @ sk_B @ sk_C @ sk_D) = (sk_F_3))
% 0.21/0.43        | ~ (m1_subset_1 @ (k6_mcart_1 @ sk_A @ sk_B @ sk_C @ sk_D) @ sk_B)
% 0.21/0.43        | ((sk_B) = (k1_xboole_0))
% 0.21/0.43        | ((sk_A) = (k1_xboole_0)))),
% 0.21/0.43      inference('sup-', [status(thm)], ['37', '44'])).
% 0.21/0.43  thf('46', plain, ((m1_subset_1 @ sk_D @ (k3_zfmisc_1 @ sk_A @ sk_B @ sk_C))),
% 0.21/0.43      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.43  thf(dt_k6_mcart_1, axiom,
% 0.21/0.43    (![A:$i,B:$i,C:$i,D:$i]:
% 0.21/0.43     ( ( m1_subset_1 @ D @ ( k3_zfmisc_1 @ A @ B @ C ) ) =>
% 0.21/0.43       ( m1_subset_1 @ ( k6_mcart_1 @ A @ B @ C @ D ) @ B ) ))).
% 0.21/0.43  thf('47', plain,
% 0.21/0.43      (![X28 : $i, X29 : $i, X30 : $i, X31 : $i]:
% 0.21/0.43         ((m1_subset_1 @ (k6_mcart_1 @ X28 @ X29 @ X30 @ X31) @ X29)
% 0.21/0.43          | ~ (m1_subset_1 @ X31 @ (k3_zfmisc_1 @ X28 @ X29 @ X30)))),
% 0.21/0.43      inference('cnf', [status(esa)], [dt_k6_mcart_1])).
% 0.21/0.43  thf('48', plain,
% 0.21/0.43      ((m1_subset_1 @ (k6_mcart_1 @ sk_A @ sk_B @ sk_C @ sk_D) @ sk_B)),
% 0.21/0.43      inference('sup-', [status(thm)], ['46', '47'])).
% 0.21/0.43  thf('49', plain,
% 0.21/0.43      ((((sk_C) = (k1_xboole_0))
% 0.21/0.43        | ((k6_mcart_1 @ sk_A @ sk_B @ sk_C @ sk_D) = (sk_F_3))
% 0.21/0.43        | ((sk_B) = (k1_xboole_0))
% 0.21/0.43        | ((sk_A) = (k1_xboole_0)))),
% 0.21/0.43      inference('demod', [status(thm)], ['45', '48'])).
% 0.21/0.43  thf('50', plain, (((sk_A) != (k1_xboole_0))),
% 0.21/0.43      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.43  thf('51', plain, (((sk_B) != (k1_xboole_0))),
% 0.21/0.43      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.43  thf('52', plain, (((sk_C) != (k1_xboole_0))),
% 0.21/0.43      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.43  thf('53', plain, (((k6_mcart_1 @ sk_A @ sk_B @ sk_C @ sk_D) = (sk_F_3))),
% 0.21/0.43      inference('simplify_reflect-', [status(thm)], ['49', '50', '51', '52'])).
% 0.21/0.43  thf('54', plain,
% 0.21/0.43      ((((k6_mcart_1 @ sk_A @ sk_B @ sk_C @ sk_D) != (sk_F_3)))
% 0.21/0.43         <= (~ (((k6_mcart_1 @ sk_A @ sk_B @ sk_C @ sk_D) = (sk_F_3))))),
% 0.21/0.43      inference('split', [status(esa)], ['15'])).
% 0.21/0.43  thf('55', plain,
% 0.21/0.43      ((((sk_F_3) != (sk_F_3)))
% 0.21/0.43         <= (~ (((k6_mcart_1 @ sk_A @ sk_B @ sk_C @ sk_D) = (sk_F_3))))),
% 0.21/0.43      inference('sup-', [status(thm)], ['53', '54'])).
% 0.21/0.43  thf('56', plain, ((((k6_mcart_1 @ sk_A @ sk_B @ sk_C @ sk_D) = (sk_F_3)))),
% 0.21/0.43      inference('simplify', [status(thm)], ['55'])).
% 0.21/0.43  thf('57', plain,
% 0.21/0.43      (~ (((k7_mcart_1 @ sk_A @ sk_B @ sk_C @ sk_D) = (sk_G_3))) | 
% 0.21/0.43       ~ (((k6_mcart_1 @ sk_A @ sk_B @ sk_C @ sk_D) = (sk_F_3))) | 
% 0.21/0.43       ~ (((k5_mcart_1 @ sk_A @ sk_B @ sk_C @ sk_D) = (sk_E)))),
% 0.21/0.43      inference('split', [status(esa)], ['15'])).
% 0.21/0.43  thf('58', plain, (~ (((k7_mcart_1 @ sk_A @ sk_B @ sk_C @ sk_D) = (sk_G_3)))),
% 0.21/0.43      inference('sat_resolution*', [status(thm)], ['36', '56', '57'])).
% 0.21/0.43  thf('59', plain, (((k7_mcart_1 @ sk_A @ sk_B @ sk_C @ sk_D) != (sk_G_3))),
% 0.21/0.43      inference('simpl_trail', [status(thm)], ['16', '58'])).
% 0.21/0.43  thf('60', plain, (((sk_C) != (k1_xboole_0))),
% 0.21/0.43      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.43  thf('61', plain, ($false),
% 0.21/0.43      inference('simplify_reflect-', [status(thm)],
% 0.21/0.43                ['12', '13', '14', '59', '60'])).
% 0.21/0.43  
% 0.21/0.43  % SZS output end Refutation
% 0.21/0.43  
% 0.21/0.44  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
