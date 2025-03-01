%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.palplIQjiF

% Computer   : n020.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:52:20 EST 2020

% Result     : Theorem 0.47s
% Output     : Refutation 0.47s
% Verified   : 
% Statistics : Number of formulae       :  213 ( 721 expanded)
%              Number of leaves         :   33 ( 241 expanded)
%              Depth                    :   29
%              Number of atoms          : 1995 (11244 expanded)
%              Number of equality atoms :  138 ( 226 expanded)
%              Maximal formula depth    :   27 (   7 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(sk_D_type,type,(
    sk_D: $i )).

thf(sk_E_type,type,(
    sk_E: $i )).

thf(k11_mcart_1_type,type,(
    k11_mcart_1: $i > $i > $i > $i > $i > $i )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(sk_C_1_type,type,(
    sk_C_1: $i )).

thf(sk_C_type,type,(
    sk_C: $i > $i > $i )).

thf(k3_zfmisc_1_type,type,(
    k3_zfmisc_1: $i > $i > $i > $i )).

thf(sk_H_type,type,(
    sk_H: $i )).

thf(k10_mcart_1_type,type,(
    k10_mcart_1: $i > $i > $i > $i > $i > $i )).

thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(k2_zfmisc_1_type,type,(
    k2_zfmisc_1: $i > $i > $i )).

thf(k4_zfmisc_1_type,type,(
    k4_zfmisc_1: $i > $i > $i > $i > $i )).

thf(k8_mcart_1_type,type,(
    k8_mcart_1: $i > $i > $i > $i > $i > $i )).

thf(k9_mcart_1_type,type,(
    k9_mcart_1: $i > $i > $i > $i > $i > $i )).

thf(k2_mcart_1_type,type,(
    k2_mcart_1: $i > $i )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(sk_I_type,type,(
    sk_I: $i )).

thf(sk_F_type,type,(
    sk_F: $i )).

thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(sk_G_type,type,(
    sk_G: $i )).

thf(k1_mcart_1_type,type,(
    k1_mcart_1: $i > $i )).

thf(t87_mcart_1,conjecture,(
    ! [A: $i,B: $i,C: $i,D: $i,E: $i] :
      ( ( m1_subset_1 @ E @ ( k1_zfmisc_1 @ A ) )
     => ! [F: $i] :
          ( ( m1_subset_1 @ F @ ( k1_zfmisc_1 @ B ) )
         => ! [G: $i] :
              ( ( m1_subset_1 @ G @ ( k1_zfmisc_1 @ C ) )
             => ! [H: $i] :
                  ( ( m1_subset_1 @ H @ ( k1_zfmisc_1 @ D ) )
                 => ! [I: $i] :
                      ( ( m1_subset_1 @ I @ ( k4_zfmisc_1 @ A @ B @ C @ D ) )
                     => ( ( r2_hidden @ I @ ( k4_zfmisc_1 @ E @ F @ G @ H ) )
                       => ( ( r2_hidden @ ( k8_mcart_1 @ A @ B @ C @ D @ I ) @ E )
                          & ( r2_hidden @ ( k9_mcart_1 @ A @ B @ C @ D @ I ) @ F )
                          & ( r2_hidden @ ( k10_mcart_1 @ A @ B @ C @ D @ I ) @ G )
                          & ( r2_hidden @ ( k11_mcart_1 @ A @ B @ C @ D @ I ) @ H ) ) ) ) ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i,C: $i,D: $i,E: $i] :
        ( ( m1_subset_1 @ E @ ( k1_zfmisc_1 @ A ) )
       => ! [F: $i] :
            ( ( m1_subset_1 @ F @ ( k1_zfmisc_1 @ B ) )
           => ! [G: $i] :
                ( ( m1_subset_1 @ G @ ( k1_zfmisc_1 @ C ) )
               => ! [H: $i] :
                    ( ( m1_subset_1 @ H @ ( k1_zfmisc_1 @ D ) )
                   => ! [I: $i] :
                        ( ( m1_subset_1 @ I @ ( k4_zfmisc_1 @ A @ B @ C @ D ) )
                       => ( ( r2_hidden @ I @ ( k4_zfmisc_1 @ E @ F @ G @ H ) )
                         => ( ( r2_hidden @ ( k8_mcart_1 @ A @ B @ C @ D @ I ) @ E )
                            & ( r2_hidden @ ( k9_mcart_1 @ A @ B @ C @ D @ I ) @ F )
                            & ( r2_hidden @ ( k10_mcart_1 @ A @ B @ C @ D @ I ) @ G )
                            & ( r2_hidden @ ( k11_mcart_1 @ A @ B @ C @ D @ I ) @ H ) ) ) ) ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t87_mcart_1])).

thf('0',plain,(
    r2_hidden @ sk_I @ ( k4_zfmisc_1 @ sk_E @ sk_F @ sk_G @ sk_H ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(d4_zfmisc_1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ( ( k4_zfmisc_1 @ A @ B @ C @ D )
      = ( k2_zfmisc_1 @ ( k3_zfmisc_1 @ A @ B @ C ) @ D ) ) )).

thf('1',plain,(
    ! [X16: $i,X17: $i,X18: $i,X19: $i] :
      ( ( k4_zfmisc_1 @ X16 @ X17 @ X18 @ X19 )
      = ( k2_zfmisc_1 @ ( k3_zfmisc_1 @ X16 @ X17 @ X18 ) @ X19 ) ) ),
    inference(cnf,[status(esa)],[d4_zfmisc_1])).

thf(t10_mcart_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( r2_hidden @ A @ ( k2_zfmisc_1 @ B @ C ) )
     => ( ( r2_hidden @ ( k1_mcart_1 @ A ) @ B )
        & ( r2_hidden @ ( k2_mcart_1 @ A ) @ C ) ) ) )).

thf('2',plain,(
    ! [X20: $i,X21: $i,X22: $i] :
      ( ( r2_hidden @ ( k1_mcart_1 @ X20 ) @ X21 )
      | ~ ( r2_hidden @ X20 @ ( k2_zfmisc_1 @ X21 @ X22 ) ) ) ),
    inference(cnf,[status(esa)],[t10_mcart_1])).

thf('3',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i,X4: $i] :
      ( ~ ( r2_hidden @ X4 @ ( k4_zfmisc_1 @ X3 @ X2 @ X1 @ X0 ) )
      | ( r2_hidden @ ( k1_mcart_1 @ X4 ) @ ( k3_zfmisc_1 @ X3 @ X2 @ X1 ) ) ) ),
    inference('sup-',[status(thm)],['1','2'])).

thf('4',plain,(
    r2_hidden @ ( k1_mcart_1 @ sk_I ) @ ( k3_zfmisc_1 @ sk_E @ sk_F @ sk_G ) ),
    inference('sup-',[status(thm)],['0','3'])).

thf(d3_zfmisc_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( k3_zfmisc_1 @ A @ B @ C )
      = ( k2_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) @ C ) ) )).

thf('5',plain,(
    ! [X13: $i,X14: $i,X15: $i] :
      ( ( k3_zfmisc_1 @ X13 @ X14 @ X15 )
      = ( k2_zfmisc_1 @ ( k2_zfmisc_1 @ X13 @ X14 ) @ X15 ) ) ),
    inference(cnf,[status(esa)],[d3_zfmisc_1])).

thf('6',plain,(
    ! [X20: $i,X21: $i,X22: $i] :
      ( ( r2_hidden @ ( k1_mcart_1 @ X20 ) @ X21 )
      | ~ ( r2_hidden @ X20 @ ( k2_zfmisc_1 @ X21 @ X22 ) ) ) ),
    inference(cnf,[status(esa)],[t10_mcart_1])).

thf('7',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i] :
      ( ~ ( r2_hidden @ X3 @ ( k3_zfmisc_1 @ X2 @ X1 @ X0 ) )
      | ( r2_hidden @ ( k1_mcart_1 @ X3 ) @ ( k2_zfmisc_1 @ X2 @ X1 ) ) ) ),
    inference('sup-',[status(thm)],['5','6'])).

thf('8',plain,(
    r2_hidden @ ( k1_mcart_1 @ ( k1_mcart_1 @ sk_I ) ) @ ( k2_zfmisc_1 @ sk_E @ sk_F ) ),
    inference('sup-',[status(thm)],['4','7'])).

thf('9',plain,(
    ! [X20: $i,X21: $i,X22: $i] :
      ( ( r2_hidden @ ( k1_mcart_1 @ X20 ) @ X21 )
      | ~ ( r2_hidden @ X20 @ ( k2_zfmisc_1 @ X21 @ X22 ) ) ) ),
    inference(cnf,[status(esa)],[t10_mcart_1])).

thf('10',plain,(
    r2_hidden @ ( k1_mcart_1 @ ( k1_mcart_1 @ ( k1_mcart_1 @ sk_I ) ) ) @ sk_E ),
    inference('sup-',[status(thm)],['8','9'])).

thf('11',plain,(
    m1_subset_1 @ sk_E @ ( k1_zfmisc_1 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t3_subset,axiom,(
    ! [A: $i,B: $i] :
      ( ( m1_subset_1 @ A @ ( k1_zfmisc_1 @ B ) )
    <=> ( r1_tarski @ A @ B ) ) )).

thf('12',plain,(
    ! [X5: $i,X6: $i] :
      ( ( r1_tarski @ X5 @ X6 )
      | ~ ( m1_subset_1 @ X5 @ ( k1_zfmisc_1 @ X6 ) ) ) ),
    inference(cnf,[status(esa)],[t3_subset])).

thf('13',plain,(
    r1_tarski @ sk_E @ sk_A ),
    inference('sup-',[status(thm)],['11','12'])).

thf(d3_tarski,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_tarski @ A @ B )
    <=> ! [C: $i] :
          ( ( r2_hidden @ C @ A )
         => ( r2_hidden @ C @ B ) ) ) )).

thf('14',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( r2_hidden @ X0 @ X1 )
      | ( r2_hidden @ X0 @ X2 )
      | ~ ( r1_tarski @ X1 @ X2 ) ) ),
    inference(cnf,[status(esa)],[d3_tarski])).

thf('15',plain,(
    ! [X0: $i] :
      ( ( r2_hidden @ X0 @ sk_A )
      | ~ ( r2_hidden @ X0 @ sk_E ) ) ),
    inference('sup-',[status(thm)],['13','14'])).

thf('16',plain,(
    r2_hidden @ ( k1_mcart_1 @ ( k1_mcart_1 @ ( k1_mcart_1 @ sk_I ) ) ) @ sk_A ),
    inference('sup-',[status(thm)],['10','15'])).

thf(t7_ordinal1,axiom,(
    ! [A: $i,B: $i] :
      ~ ( ( r2_hidden @ A @ B )
        & ( r1_tarski @ B @ A ) ) )).

thf('17',plain,(
    ! [X11: $i,X12: $i] :
      ( ~ ( r2_hidden @ X11 @ X12 )
      | ~ ( r1_tarski @ X12 @ X11 ) ) ),
    inference(cnf,[status(esa)],[t7_ordinal1])).

thf('18',plain,(
    ~ ( r1_tarski @ sk_A @ ( k1_mcart_1 @ ( k1_mcart_1 @ ( k1_mcart_1 @ sk_I ) ) ) ) ),
    inference('sup-',[status(thm)],['16','17'])).

thf('19',plain,(
    m1_subset_1 @ sk_I @ ( k4_zfmisc_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t61_mcart_1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ~ ( ( A != k1_xboole_0 )
        & ( B != k1_xboole_0 )
        & ( C != k1_xboole_0 )
        & ( D != k1_xboole_0 )
        & ~ ! [E: $i] :
              ( ( m1_subset_1 @ E @ ( k4_zfmisc_1 @ A @ B @ C @ D ) )
             => ( ( ( k8_mcart_1 @ A @ B @ C @ D @ E )
                  = ( k1_mcart_1 @ ( k1_mcart_1 @ ( k1_mcart_1 @ E ) ) ) )
                & ( ( k9_mcart_1 @ A @ B @ C @ D @ E )
                  = ( k2_mcart_1 @ ( k1_mcart_1 @ ( k1_mcart_1 @ E ) ) ) )
                & ( ( k10_mcart_1 @ A @ B @ C @ D @ E )
                  = ( k2_mcart_1 @ ( k1_mcart_1 @ E ) ) )
                & ( ( k11_mcart_1 @ A @ B @ C @ D @ E )
                  = ( k2_mcart_1 @ E ) ) ) ) ) )).

thf('20',plain,(
    ! [X23: $i,X24: $i,X25: $i,X26: $i,X27: $i] :
      ( ( X23 = k1_xboole_0 )
      | ( X24 = k1_xboole_0 )
      | ( X25 = k1_xboole_0 )
      | ( ( k8_mcart_1 @ X23 @ X24 @ X25 @ X27 @ X26 )
        = ( k1_mcart_1 @ ( k1_mcart_1 @ ( k1_mcart_1 @ X26 ) ) ) )
      | ~ ( m1_subset_1 @ X26 @ ( k4_zfmisc_1 @ X23 @ X24 @ X25 @ X27 ) )
      | ( X27 = k1_xboole_0 ) ) ),
    inference(cnf,[status(esa)],[t61_mcart_1])).

thf('21',plain,
    ( ( sk_D = k1_xboole_0 )
    | ( ( k8_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I )
      = ( k1_mcart_1 @ ( k1_mcart_1 @ ( k1_mcart_1 @ sk_I ) ) ) )
    | ( sk_C_1 = k1_xboole_0 )
    | ( sk_B = k1_xboole_0 )
    | ( sk_A = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['19','20'])).

thf('22',plain,
    ( ~ ( r2_hidden @ ( k8_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I ) @ sk_E )
    | ~ ( r2_hidden @ ( k9_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I ) @ sk_F )
    | ~ ( r2_hidden @ ( k10_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I ) @ sk_G )
    | ~ ( r2_hidden @ ( k11_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I ) @ sk_H ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('23',plain,
    ( ~ ( r2_hidden @ ( k8_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I ) @ sk_E )
   <= ~ ( r2_hidden @ ( k8_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I ) @ sk_E ) ),
    inference(split,[status(esa)],['22'])).

thf('24',plain,(
    m1_subset_1 @ sk_I @ ( k4_zfmisc_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('25',plain,(
    ! [X23: $i,X24: $i,X25: $i,X26: $i,X27: $i] :
      ( ( X23 = k1_xboole_0 )
      | ( X24 = k1_xboole_0 )
      | ( X25 = k1_xboole_0 )
      | ( ( k11_mcart_1 @ X23 @ X24 @ X25 @ X27 @ X26 )
        = ( k2_mcart_1 @ X26 ) )
      | ~ ( m1_subset_1 @ X26 @ ( k4_zfmisc_1 @ X23 @ X24 @ X25 @ X27 ) )
      | ( X27 = k1_xboole_0 ) ) ),
    inference(cnf,[status(esa)],[t61_mcart_1])).

thf('26',plain,
    ( ( sk_D = k1_xboole_0 )
    | ( ( k11_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I )
      = ( k2_mcart_1 @ sk_I ) )
    | ( sk_C_1 = k1_xboole_0 )
    | ( sk_B = k1_xboole_0 )
    | ( sk_A = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['24','25'])).

thf('27',plain,
    ( ~ ( r2_hidden @ ( k11_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I ) @ sk_H )
   <= ~ ( r2_hidden @ ( k11_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I ) @ sk_H ) ),
    inference(split,[status(esa)],['22'])).

thf('28',plain,
    ( ( ~ ( r2_hidden @ ( k2_mcart_1 @ sk_I ) @ sk_H )
      | ( sk_A = k1_xboole_0 )
      | ( sk_B = k1_xboole_0 )
      | ( sk_C_1 = k1_xboole_0 )
      | ( sk_D = k1_xboole_0 ) )
   <= ~ ( r2_hidden @ ( k11_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I ) @ sk_H ) ),
    inference('sup-',[status(thm)],['26','27'])).

thf('29',plain,(
    r2_hidden @ sk_I @ ( k4_zfmisc_1 @ sk_E @ sk_F @ sk_G @ sk_H ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('30',plain,(
    ! [X16: $i,X17: $i,X18: $i,X19: $i] :
      ( ( k4_zfmisc_1 @ X16 @ X17 @ X18 @ X19 )
      = ( k2_zfmisc_1 @ ( k3_zfmisc_1 @ X16 @ X17 @ X18 ) @ X19 ) ) ),
    inference(cnf,[status(esa)],[d4_zfmisc_1])).

thf('31',plain,(
    ! [X20: $i,X21: $i,X22: $i] :
      ( ( r2_hidden @ ( k2_mcart_1 @ X20 ) @ X22 )
      | ~ ( r2_hidden @ X20 @ ( k2_zfmisc_1 @ X21 @ X22 ) ) ) ),
    inference(cnf,[status(esa)],[t10_mcart_1])).

thf('32',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i,X4: $i] :
      ( ~ ( r2_hidden @ X4 @ ( k4_zfmisc_1 @ X3 @ X2 @ X1 @ X0 ) )
      | ( r2_hidden @ ( k2_mcart_1 @ X4 ) @ X0 ) ) ),
    inference('sup-',[status(thm)],['30','31'])).

thf('33',plain,(
    r2_hidden @ ( k2_mcart_1 @ sk_I ) @ sk_H ),
    inference('sup-',[status(thm)],['29','32'])).

thf('34',plain,
    ( ( ( sk_A = k1_xboole_0 )
      | ( sk_B = k1_xboole_0 )
      | ( sk_C_1 = k1_xboole_0 )
      | ( sk_D = k1_xboole_0 ) )
   <= ~ ( r2_hidden @ ( k11_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I ) @ sk_H ) ),
    inference(demod,[status(thm)],['28','33'])).

thf('35',plain,(
    r2_hidden @ ( k2_mcart_1 @ sk_I ) @ sk_H ),
    inference('sup-',[status(thm)],['29','32'])).

thf('36',plain,(
    m1_subset_1 @ sk_H @ ( k1_zfmisc_1 @ sk_D ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('37',plain,(
    ! [X5: $i,X6: $i] :
      ( ( r1_tarski @ X5 @ X6 )
      | ~ ( m1_subset_1 @ X5 @ ( k1_zfmisc_1 @ X6 ) ) ) ),
    inference(cnf,[status(esa)],[t3_subset])).

thf('38',plain,(
    r1_tarski @ sk_H @ sk_D ),
    inference('sup-',[status(thm)],['36','37'])).

thf('39',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( r2_hidden @ X0 @ X1 )
      | ( r2_hidden @ X0 @ X2 )
      | ~ ( r1_tarski @ X1 @ X2 ) ) ),
    inference(cnf,[status(esa)],[d3_tarski])).

thf('40',plain,(
    ! [X0: $i] :
      ( ( r2_hidden @ X0 @ sk_D )
      | ~ ( r2_hidden @ X0 @ sk_H ) ) ),
    inference('sup-',[status(thm)],['38','39'])).

thf('41',plain,(
    r2_hidden @ ( k2_mcart_1 @ sk_I ) @ sk_D ),
    inference('sup-',[status(thm)],['35','40'])).

thf('42',plain,(
    ! [X11: $i,X12: $i] :
      ( ~ ( r2_hidden @ X11 @ X12 )
      | ~ ( r1_tarski @ X12 @ X11 ) ) ),
    inference(cnf,[status(esa)],[t7_ordinal1])).

thf('43',plain,(
    ~ ( r1_tarski @ sk_D @ ( k2_mcart_1 @ sk_I ) ) ),
    inference('sup-',[status(thm)],['41','42'])).

thf('44',plain,
    ( ( ~ ( r1_tarski @ k1_xboole_0 @ ( k2_mcart_1 @ sk_I ) )
      | ( sk_C_1 = k1_xboole_0 )
      | ( sk_B = k1_xboole_0 )
      | ( sk_A = k1_xboole_0 ) )
   <= ~ ( r2_hidden @ ( k11_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I ) @ sk_H ) ),
    inference('sup-',[status(thm)],['34','43'])).

thf(t4_subset_1,axiom,(
    ! [A: $i] :
      ( m1_subset_1 @ k1_xboole_0 @ ( k1_zfmisc_1 @ A ) ) )).

thf('45',plain,(
    ! [X4: $i] :
      ( m1_subset_1 @ k1_xboole_0 @ ( k1_zfmisc_1 @ X4 ) ) ),
    inference(cnf,[status(esa)],[t4_subset_1])).

thf('46',plain,(
    ! [X5: $i,X6: $i] :
      ( ( r1_tarski @ X5 @ X6 )
      | ~ ( m1_subset_1 @ X5 @ ( k1_zfmisc_1 @ X6 ) ) ) ),
    inference(cnf,[status(esa)],[t3_subset])).

thf('47',plain,(
    ! [X0: $i] :
      ( r1_tarski @ k1_xboole_0 @ X0 ) ),
    inference('sup-',[status(thm)],['45','46'])).

thf('48',plain,
    ( ( ( sk_C_1 = k1_xboole_0 )
      | ( sk_B = k1_xboole_0 )
      | ( sk_A = k1_xboole_0 ) )
   <= ~ ( r2_hidden @ ( k11_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I ) @ sk_H ) ),
    inference(demod,[status(thm)],['44','47'])).

thf('49',plain,(
    ! [X1: $i,X3: $i] :
      ( ( r1_tarski @ X1 @ X3 )
      | ( r2_hidden @ ( sk_C @ X3 @ X1 ) @ X1 ) ) ),
    inference(cnf,[status(esa)],[d3_tarski])).

thf('50',plain,(
    m1_subset_1 @ sk_G @ ( k1_zfmisc_1 @ sk_C_1 ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('51',plain,(
    ! [X5: $i,X6: $i] :
      ( ( r1_tarski @ X5 @ X6 )
      | ~ ( m1_subset_1 @ X5 @ ( k1_zfmisc_1 @ X6 ) ) ) ),
    inference(cnf,[status(esa)],[t3_subset])).

thf('52',plain,(
    r1_tarski @ sk_G @ sk_C_1 ),
    inference('sup-',[status(thm)],['50','51'])).

thf('53',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( r2_hidden @ X0 @ X1 )
      | ( r2_hidden @ X0 @ X2 )
      | ~ ( r1_tarski @ X1 @ X2 ) ) ),
    inference(cnf,[status(esa)],[d3_tarski])).

thf('54',plain,(
    ! [X0: $i] :
      ( ( r2_hidden @ X0 @ sk_C_1 )
      | ~ ( r2_hidden @ X0 @ sk_G ) ) ),
    inference('sup-',[status(thm)],['52','53'])).

thf('55',plain,(
    ! [X0: $i] :
      ( ( r1_tarski @ sk_G @ X0 )
      | ( r2_hidden @ ( sk_C @ X0 @ sk_G ) @ sk_C_1 ) ) ),
    inference('sup-',[status(thm)],['49','54'])).

thf('56',plain,(
    ! [X11: $i,X12: $i] :
      ( ~ ( r2_hidden @ X11 @ X12 )
      | ~ ( r1_tarski @ X12 @ X11 ) ) ),
    inference(cnf,[status(esa)],[t7_ordinal1])).

thf('57',plain,(
    ! [X0: $i] :
      ( ( r1_tarski @ sk_G @ X0 )
      | ~ ( r1_tarski @ sk_C_1 @ ( sk_C @ X0 @ sk_G ) ) ) ),
    inference('sup-',[status(thm)],['55','56'])).

thf('58',plain,
    ( ! [X0: $i] :
        ( ~ ( r1_tarski @ k1_xboole_0 @ ( sk_C @ X0 @ sk_G ) )
        | ( sk_A = k1_xboole_0 )
        | ( sk_B = k1_xboole_0 )
        | ( r1_tarski @ sk_G @ X0 ) )
   <= ~ ( r2_hidden @ ( k11_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I ) @ sk_H ) ),
    inference('sup-',[status(thm)],['48','57'])).

thf('59',plain,(
    ! [X0: $i] :
      ( r1_tarski @ k1_xboole_0 @ X0 ) ),
    inference('sup-',[status(thm)],['45','46'])).

thf('60',plain,
    ( ! [X0: $i] :
        ( ( sk_A = k1_xboole_0 )
        | ( sk_B = k1_xboole_0 )
        | ( r1_tarski @ sk_G @ X0 ) )
   <= ~ ( r2_hidden @ ( k11_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I ) @ sk_H ) ),
    inference(demod,[status(thm)],['58','59'])).

thf('61',plain,(
    r2_hidden @ ( k1_mcart_1 @ sk_I ) @ ( k3_zfmisc_1 @ sk_E @ sk_F @ sk_G ) ),
    inference('sup-',[status(thm)],['0','3'])).

thf('62',plain,(
    ! [X13: $i,X14: $i,X15: $i] :
      ( ( k3_zfmisc_1 @ X13 @ X14 @ X15 )
      = ( k2_zfmisc_1 @ ( k2_zfmisc_1 @ X13 @ X14 ) @ X15 ) ) ),
    inference(cnf,[status(esa)],[d3_zfmisc_1])).

thf('63',plain,(
    ! [X20: $i,X21: $i,X22: $i] :
      ( ( r2_hidden @ ( k2_mcart_1 @ X20 ) @ X22 )
      | ~ ( r2_hidden @ X20 @ ( k2_zfmisc_1 @ X21 @ X22 ) ) ) ),
    inference(cnf,[status(esa)],[t10_mcart_1])).

thf('64',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i] :
      ( ~ ( r2_hidden @ X3 @ ( k3_zfmisc_1 @ X2 @ X1 @ X0 ) )
      | ( r2_hidden @ ( k2_mcart_1 @ X3 ) @ X0 ) ) ),
    inference('sup-',[status(thm)],['62','63'])).

thf('65',plain,(
    r2_hidden @ ( k2_mcart_1 @ ( k1_mcart_1 @ sk_I ) ) @ sk_G ),
    inference('sup-',[status(thm)],['61','64'])).

thf('66',plain,(
    ! [X11: $i,X12: $i] :
      ( ~ ( r2_hidden @ X11 @ X12 )
      | ~ ( r1_tarski @ X12 @ X11 ) ) ),
    inference(cnf,[status(esa)],[t7_ordinal1])).

thf('67',plain,(
    ~ ( r1_tarski @ sk_G @ ( k2_mcart_1 @ ( k1_mcart_1 @ sk_I ) ) ) ),
    inference('sup-',[status(thm)],['65','66'])).

thf('68',plain,
    ( ( ( sk_B = k1_xboole_0 )
      | ( sk_A = k1_xboole_0 ) )
   <= ~ ( r2_hidden @ ( k11_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I ) @ sk_H ) ),
    inference('sup-',[status(thm)],['60','67'])).

thf('69',plain,(
    ! [X1: $i,X3: $i] :
      ( ( r1_tarski @ X1 @ X3 )
      | ( r2_hidden @ ( sk_C @ X3 @ X1 ) @ X1 ) ) ),
    inference(cnf,[status(esa)],[d3_tarski])).

thf('70',plain,(
    m1_subset_1 @ sk_F @ ( k1_zfmisc_1 @ sk_B ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('71',plain,(
    ! [X5: $i,X6: $i] :
      ( ( r1_tarski @ X5 @ X6 )
      | ~ ( m1_subset_1 @ X5 @ ( k1_zfmisc_1 @ X6 ) ) ) ),
    inference(cnf,[status(esa)],[t3_subset])).

thf('72',plain,(
    r1_tarski @ sk_F @ sk_B ),
    inference('sup-',[status(thm)],['70','71'])).

thf('73',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( r2_hidden @ X0 @ X1 )
      | ( r2_hidden @ X0 @ X2 )
      | ~ ( r1_tarski @ X1 @ X2 ) ) ),
    inference(cnf,[status(esa)],[d3_tarski])).

thf('74',plain,(
    ! [X0: $i] :
      ( ( r2_hidden @ X0 @ sk_B )
      | ~ ( r2_hidden @ X0 @ sk_F ) ) ),
    inference('sup-',[status(thm)],['72','73'])).

thf('75',plain,(
    ! [X0: $i] :
      ( ( r1_tarski @ sk_F @ X0 )
      | ( r2_hidden @ ( sk_C @ X0 @ sk_F ) @ sk_B ) ) ),
    inference('sup-',[status(thm)],['69','74'])).

thf('76',plain,(
    ! [X11: $i,X12: $i] :
      ( ~ ( r2_hidden @ X11 @ X12 )
      | ~ ( r1_tarski @ X12 @ X11 ) ) ),
    inference(cnf,[status(esa)],[t7_ordinal1])).

thf('77',plain,(
    ! [X0: $i] :
      ( ( r1_tarski @ sk_F @ X0 )
      | ~ ( r1_tarski @ sk_B @ ( sk_C @ X0 @ sk_F ) ) ) ),
    inference('sup-',[status(thm)],['75','76'])).

thf('78',plain,
    ( ! [X0: $i] :
        ( ~ ( r1_tarski @ k1_xboole_0 @ ( sk_C @ X0 @ sk_F ) )
        | ( sk_A = k1_xboole_0 )
        | ( r1_tarski @ sk_F @ X0 ) )
   <= ~ ( r2_hidden @ ( k11_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I ) @ sk_H ) ),
    inference('sup-',[status(thm)],['68','77'])).

thf('79',plain,(
    ! [X0: $i] :
      ( r1_tarski @ k1_xboole_0 @ X0 ) ),
    inference('sup-',[status(thm)],['45','46'])).

thf('80',plain,
    ( ! [X0: $i] :
        ( ( sk_A = k1_xboole_0 )
        | ( r1_tarski @ sk_F @ X0 ) )
   <= ~ ( r2_hidden @ ( k11_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I ) @ sk_H ) ),
    inference(demod,[status(thm)],['78','79'])).

thf('81',plain,(
    ! [X1: $i,X3: $i] :
      ( ( r1_tarski @ X1 @ X3 )
      | ( r2_hidden @ ( sk_C @ X3 @ X1 ) @ X1 ) ) ),
    inference(cnf,[status(esa)],[d3_tarski])).

thf('82',plain,(
    ! [X20: $i,X21: $i,X22: $i] :
      ( ( r2_hidden @ ( k2_mcart_1 @ X20 ) @ X22 )
      | ~ ( r2_hidden @ X20 @ ( k2_zfmisc_1 @ X21 @ X22 ) ) ) ),
    inference(cnf,[status(esa)],[t10_mcart_1])).

thf('83',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( r1_tarski @ ( k2_zfmisc_1 @ X1 @ X0 ) @ X2 )
      | ( r2_hidden @ ( k2_mcart_1 @ ( sk_C @ X2 @ ( k2_zfmisc_1 @ X1 @ X0 ) ) ) @ X0 ) ) ),
    inference('sup-',[status(thm)],['81','82'])).

thf('84',plain,(
    ! [X11: $i,X12: $i] :
      ( ~ ( r2_hidden @ X11 @ X12 )
      | ~ ( r1_tarski @ X12 @ X11 ) ) ),
    inference(cnf,[status(esa)],[t7_ordinal1])).

thf('85',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ( r1_tarski @ ( k2_zfmisc_1 @ X1 @ X0 ) @ X2 )
      | ~ ( r1_tarski @ X0 @ ( k2_mcart_1 @ ( sk_C @ X2 @ ( k2_zfmisc_1 @ X1 @ X0 ) ) ) ) ) ),
    inference('sup-',[status(thm)],['83','84'])).

thf('86',plain,
    ( ! [X0: $i,X1: $i] :
        ( ( sk_A = k1_xboole_0 )
        | ( r1_tarski @ ( k2_zfmisc_1 @ X0 @ sk_F ) @ X1 ) )
   <= ~ ( r2_hidden @ ( k11_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I ) @ sk_H ) ),
    inference('sup-',[status(thm)],['80','85'])).

thf('87',plain,(
    r2_hidden @ ( k1_mcart_1 @ ( k1_mcart_1 @ sk_I ) ) @ ( k2_zfmisc_1 @ sk_E @ sk_F ) ),
    inference('sup-',[status(thm)],['4','7'])).

thf('88',plain,(
    ! [X11: $i,X12: $i] :
      ( ~ ( r2_hidden @ X11 @ X12 )
      | ~ ( r1_tarski @ X12 @ X11 ) ) ),
    inference(cnf,[status(esa)],[t7_ordinal1])).

thf('89',plain,(
    ~ ( r1_tarski @ ( k2_zfmisc_1 @ sk_E @ sk_F ) @ ( k1_mcart_1 @ ( k1_mcart_1 @ sk_I ) ) ) ),
    inference('sup-',[status(thm)],['87','88'])).

thf('90',plain,
    ( ( sk_A = k1_xboole_0 )
   <= ~ ( r2_hidden @ ( k11_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I ) @ sk_H ) ),
    inference('sup-',[status(thm)],['86','89'])).

thf('91',plain,(
    ! [X1: $i,X3: $i] :
      ( ( r1_tarski @ X1 @ X3 )
      | ( r2_hidden @ ( sk_C @ X3 @ X1 ) @ X1 ) ) ),
    inference(cnf,[status(esa)],[d3_tarski])).

thf('92',plain,(
    ! [X0: $i] :
      ( ( r2_hidden @ X0 @ sk_A )
      | ~ ( r2_hidden @ X0 @ sk_E ) ) ),
    inference('sup-',[status(thm)],['13','14'])).

thf('93',plain,(
    ! [X0: $i] :
      ( ( r1_tarski @ sk_E @ X0 )
      | ( r2_hidden @ ( sk_C @ X0 @ sk_E ) @ sk_A ) ) ),
    inference('sup-',[status(thm)],['91','92'])).

thf('94',plain,(
    ! [X11: $i,X12: $i] :
      ( ~ ( r2_hidden @ X11 @ X12 )
      | ~ ( r1_tarski @ X12 @ X11 ) ) ),
    inference(cnf,[status(esa)],[t7_ordinal1])).

thf('95',plain,(
    ! [X0: $i] :
      ( ( r1_tarski @ sk_E @ X0 )
      | ~ ( r1_tarski @ sk_A @ ( sk_C @ X0 @ sk_E ) ) ) ),
    inference('sup-',[status(thm)],['93','94'])).

thf('96',plain,
    ( ! [X0: $i] :
        ( ~ ( r1_tarski @ k1_xboole_0 @ ( sk_C @ X0 @ sk_E ) )
        | ( r1_tarski @ sk_E @ X0 ) )
   <= ~ ( r2_hidden @ ( k11_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I ) @ sk_H ) ),
    inference('sup-',[status(thm)],['90','95'])).

thf('97',plain,(
    ! [X0: $i] :
      ( r1_tarski @ k1_xboole_0 @ X0 ) ),
    inference('sup-',[status(thm)],['45','46'])).

thf('98',plain,
    ( ! [X0: $i] :
        ( r1_tarski @ sk_E @ X0 )
   <= ~ ( r2_hidden @ ( k11_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I ) @ sk_H ) ),
    inference(demod,[status(thm)],['96','97'])).

thf('99',plain,(
    r2_hidden @ ( k1_mcart_1 @ ( k1_mcart_1 @ ( k1_mcart_1 @ sk_I ) ) ) @ sk_E ),
    inference('sup-',[status(thm)],['8','9'])).

thf('100',plain,(
    ! [X11: $i,X12: $i] :
      ( ~ ( r2_hidden @ X11 @ X12 )
      | ~ ( r1_tarski @ X12 @ X11 ) ) ),
    inference(cnf,[status(esa)],[t7_ordinal1])).

thf('101',plain,(
    ~ ( r1_tarski @ sk_E @ ( k1_mcart_1 @ ( k1_mcart_1 @ ( k1_mcart_1 @ sk_I ) ) ) ) ),
    inference('sup-',[status(thm)],['99','100'])).

thf('102',plain,(
    r2_hidden @ ( k11_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I ) @ sk_H ),
    inference('sup-',[status(thm)],['98','101'])).

thf('103',plain,(
    m1_subset_1 @ sk_I @ ( k4_zfmisc_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('104',plain,(
    ! [X23: $i,X24: $i,X25: $i,X26: $i,X27: $i] :
      ( ( X23 = k1_xboole_0 )
      | ( X24 = k1_xboole_0 )
      | ( X25 = k1_xboole_0 )
      | ( ( k10_mcart_1 @ X23 @ X24 @ X25 @ X27 @ X26 )
        = ( k2_mcart_1 @ ( k1_mcart_1 @ X26 ) ) )
      | ~ ( m1_subset_1 @ X26 @ ( k4_zfmisc_1 @ X23 @ X24 @ X25 @ X27 ) )
      | ( X27 = k1_xboole_0 ) ) ),
    inference(cnf,[status(esa)],[t61_mcart_1])).

thf('105',plain,
    ( ( sk_D = k1_xboole_0 )
    | ( ( k10_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I )
      = ( k2_mcart_1 @ ( k1_mcart_1 @ sk_I ) ) )
    | ( sk_C_1 = k1_xboole_0 )
    | ( sk_B = k1_xboole_0 )
    | ( sk_A = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['103','104'])).

thf('106',plain,
    ( ~ ( r2_hidden @ ( k10_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I ) @ sk_G )
   <= ~ ( r2_hidden @ ( k10_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I ) @ sk_G ) ),
    inference(split,[status(esa)],['22'])).

thf('107',plain,
    ( ( ~ ( r2_hidden @ ( k2_mcart_1 @ ( k1_mcart_1 @ sk_I ) ) @ sk_G )
      | ( sk_A = k1_xboole_0 )
      | ( sk_B = k1_xboole_0 )
      | ( sk_C_1 = k1_xboole_0 )
      | ( sk_D = k1_xboole_0 ) )
   <= ~ ( r2_hidden @ ( k10_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I ) @ sk_G ) ),
    inference('sup-',[status(thm)],['105','106'])).

thf('108',plain,(
    r2_hidden @ ( k2_mcart_1 @ ( k1_mcart_1 @ sk_I ) ) @ sk_G ),
    inference('sup-',[status(thm)],['61','64'])).

thf('109',plain,
    ( ( ( sk_A = k1_xboole_0 )
      | ( sk_B = k1_xboole_0 )
      | ( sk_C_1 = k1_xboole_0 )
      | ( sk_D = k1_xboole_0 ) )
   <= ~ ( r2_hidden @ ( k10_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I ) @ sk_G ) ),
    inference(demod,[status(thm)],['107','108'])).

thf('110',plain,(
    ~ ( r1_tarski @ sk_D @ ( k2_mcart_1 @ sk_I ) ) ),
    inference('sup-',[status(thm)],['41','42'])).

thf('111',plain,
    ( ( ~ ( r1_tarski @ k1_xboole_0 @ ( k2_mcart_1 @ sk_I ) )
      | ( sk_C_1 = k1_xboole_0 )
      | ( sk_B = k1_xboole_0 )
      | ( sk_A = k1_xboole_0 ) )
   <= ~ ( r2_hidden @ ( k10_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I ) @ sk_G ) ),
    inference('sup-',[status(thm)],['109','110'])).

thf('112',plain,(
    ! [X0: $i] :
      ( r1_tarski @ k1_xboole_0 @ X0 ) ),
    inference('sup-',[status(thm)],['45','46'])).

thf('113',plain,
    ( ( ( sk_C_1 = k1_xboole_0 )
      | ( sk_B = k1_xboole_0 )
      | ( sk_A = k1_xboole_0 ) )
   <= ~ ( r2_hidden @ ( k10_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I ) @ sk_G ) ),
    inference(demod,[status(thm)],['111','112'])).

thf('114',plain,(
    r2_hidden @ ( k2_mcart_1 @ ( k1_mcart_1 @ sk_I ) ) @ sk_G ),
    inference('sup-',[status(thm)],['61','64'])).

thf('115',plain,(
    ! [X0: $i] :
      ( ( r2_hidden @ X0 @ sk_C_1 )
      | ~ ( r2_hidden @ X0 @ sk_G ) ) ),
    inference('sup-',[status(thm)],['52','53'])).

thf('116',plain,(
    r2_hidden @ ( k2_mcart_1 @ ( k1_mcart_1 @ sk_I ) ) @ sk_C_1 ),
    inference('sup-',[status(thm)],['114','115'])).

thf('117',plain,(
    ! [X11: $i,X12: $i] :
      ( ~ ( r2_hidden @ X11 @ X12 )
      | ~ ( r1_tarski @ X12 @ X11 ) ) ),
    inference(cnf,[status(esa)],[t7_ordinal1])).

thf('118',plain,(
    ~ ( r1_tarski @ sk_C_1 @ ( k2_mcart_1 @ ( k1_mcart_1 @ sk_I ) ) ) ),
    inference('sup-',[status(thm)],['116','117'])).

thf('119',plain,
    ( ( ~ ( r1_tarski @ k1_xboole_0 @ ( k2_mcart_1 @ ( k1_mcart_1 @ sk_I ) ) )
      | ( sk_A = k1_xboole_0 )
      | ( sk_B = k1_xboole_0 ) )
   <= ~ ( r2_hidden @ ( k10_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I ) @ sk_G ) ),
    inference('sup-',[status(thm)],['113','118'])).

thf('120',plain,(
    ! [X0: $i] :
      ( r1_tarski @ k1_xboole_0 @ X0 ) ),
    inference('sup-',[status(thm)],['45','46'])).

thf('121',plain,
    ( ( ( sk_A = k1_xboole_0 )
      | ( sk_B = k1_xboole_0 ) )
   <= ~ ( r2_hidden @ ( k10_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I ) @ sk_G ) ),
    inference(demod,[status(thm)],['119','120'])).

thf('122',plain,(
    r2_hidden @ ( k1_mcart_1 @ ( k1_mcart_1 @ sk_I ) ) @ ( k2_zfmisc_1 @ sk_E @ sk_F ) ),
    inference('sup-',[status(thm)],['4','7'])).

thf('123',plain,(
    ! [X20: $i,X21: $i,X22: $i] :
      ( ( r2_hidden @ ( k2_mcart_1 @ X20 ) @ X22 )
      | ~ ( r2_hidden @ X20 @ ( k2_zfmisc_1 @ X21 @ X22 ) ) ) ),
    inference(cnf,[status(esa)],[t10_mcart_1])).

thf('124',plain,(
    r2_hidden @ ( k2_mcart_1 @ ( k1_mcart_1 @ ( k1_mcart_1 @ sk_I ) ) ) @ sk_F ),
    inference('sup-',[status(thm)],['122','123'])).

thf('125',plain,(
    ! [X0: $i] :
      ( ( r2_hidden @ X0 @ sk_B )
      | ~ ( r2_hidden @ X0 @ sk_F ) ) ),
    inference('sup-',[status(thm)],['72','73'])).

thf('126',plain,(
    r2_hidden @ ( k2_mcart_1 @ ( k1_mcart_1 @ ( k1_mcart_1 @ sk_I ) ) ) @ sk_B ),
    inference('sup-',[status(thm)],['124','125'])).

thf('127',plain,(
    ! [X11: $i,X12: $i] :
      ( ~ ( r2_hidden @ X11 @ X12 )
      | ~ ( r1_tarski @ X12 @ X11 ) ) ),
    inference(cnf,[status(esa)],[t7_ordinal1])).

thf('128',plain,(
    ~ ( r1_tarski @ sk_B @ ( k2_mcart_1 @ ( k1_mcart_1 @ ( k1_mcart_1 @ sk_I ) ) ) ) ),
    inference('sup-',[status(thm)],['126','127'])).

thf('129',plain,
    ( ( ~ ( r1_tarski @ k1_xboole_0 @ ( k2_mcart_1 @ ( k1_mcart_1 @ ( k1_mcart_1 @ sk_I ) ) ) )
      | ( sk_A = k1_xboole_0 ) )
   <= ~ ( r2_hidden @ ( k10_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I ) @ sk_G ) ),
    inference('sup-',[status(thm)],['121','128'])).

thf('130',plain,(
    ! [X0: $i] :
      ( r1_tarski @ k1_xboole_0 @ X0 ) ),
    inference('sup-',[status(thm)],['45','46'])).

thf('131',plain,
    ( ( sk_A = k1_xboole_0 )
   <= ~ ( r2_hidden @ ( k10_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I ) @ sk_G ) ),
    inference(demod,[status(thm)],['129','130'])).

thf('132',plain,(
    ~ ( r1_tarski @ sk_A @ ( k1_mcart_1 @ ( k1_mcart_1 @ ( k1_mcart_1 @ sk_I ) ) ) ) ),
    inference('sup-',[status(thm)],['16','17'])).

thf('133',plain,
    ( ~ ( r1_tarski @ k1_xboole_0 @ ( k1_mcart_1 @ ( k1_mcart_1 @ ( k1_mcart_1 @ sk_I ) ) ) )
   <= ~ ( r2_hidden @ ( k10_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I ) @ sk_G ) ),
    inference('sup-',[status(thm)],['131','132'])).

thf('134',plain,(
    ! [X0: $i] :
      ( r1_tarski @ k1_xboole_0 @ X0 ) ),
    inference('sup-',[status(thm)],['45','46'])).

thf('135',plain,(
    r2_hidden @ ( k10_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I ) @ sk_G ),
    inference(demod,[status(thm)],['133','134'])).

thf('136',plain,(
    m1_subset_1 @ sk_I @ ( k4_zfmisc_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('137',plain,(
    ! [X23: $i,X24: $i,X25: $i,X26: $i,X27: $i] :
      ( ( X23 = k1_xboole_0 )
      | ( X24 = k1_xboole_0 )
      | ( X25 = k1_xboole_0 )
      | ( ( k9_mcart_1 @ X23 @ X24 @ X25 @ X27 @ X26 )
        = ( k2_mcart_1 @ ( k1_mcart_1 @ ( k1_mcart_1 @ X26 ) ) ) )
      | ~ ( m1_subset_1 @ X26 @ ( k4_zfmisc_1 @ X23 @ X24 @ X25 @ X27 ) )
      | ( X27 = k1_xboole_0 ) ) ),
    inference(cnf,[status(esa)],[t61_mcart_1])).

thf('138',plain,
    ( ( sk_D = k1_xboole_0 )
    | ( ( k9_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I )
      = ( k2_mcart_1 @ ( k1_mcart_1 @ ( k1_mcart_1 @ sk_I ) ) ) )
    | ( sk_C_1 = k1_xboole_0 )
    | ( sk_B = k1_xboole_0 )
    | ( sk_A = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['136','137'])).

thf('139',plain,
    ( ~ ( r2_hidden @ ( k9_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I ) @ sk_F )
   <= ~ ( r2_hidden @ ( k9_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I ) @ sk_F ) ),
    inference(split,[status(esa)],['22'])).

thf('140',plain,
    ( ( ~ ( r2_hidden @ ( k2_mcart_1 @ ( k1_mcart_1 @ ( k1_mcart_1 @ sk_I ) ) ) @ sk_F )
      | ( sk_A = k1_xboole_0 )
      | ( sk_B = k1_xboole_0 )
      | ( sk_C_1 = k1_xboole_0 )
      | ( sk_D = k1_xboole_0 ) )
   <= ~ ( r2_hidden @ ( k9_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I ) @ sk_F ) ),
    inference('sup-',[status(thm)],['138','139'])).

thf('141',plain,(
    r2_hidden @ ( k2_mcart_1 @ ( k1_mcart_1 @ ( k1_mcart_1 @ sk_I ) ) ) @ sk_F ),
    inference('sup-',[status(thm)],['122','123'])).

thf('142',plain,
    ( ( ( sk_A = k1_xboole_0 )
      | ( sk_B = k1_xboole_0 )
      | ( sk_C_1 = k1_xboole_0 )
      | ( sk_D = k1_xboole_0 ) )
   <= ~ ( r2_hidden @ ( k9_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I ) @ sk_F ) ),
    inference(demod,[status(thm)],['140','141'])).

thf('143',plain,(
    ~ ( r1_tarski @ sk_D @ ( k2_mcart_1 @ sk_I ) ) ),
    inference('sup-',[status(thm)],['41','42'])).

thf('144',plain,
    ( ( ~ ( r1_tarski @ k1_xboole_0 @ ( k2_mcart_1 @ sk_I ) )
      | ( sk_C_1 = k1_xboole_0 )
      | ( sk_B = k1_xboole_0 )
      | ( sk_A = k1_xboole_0 ) )
   <= ~ ( r2_hidden @ ( k9_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I ) @ sk_F ) ),
    inference('sup-',[status(thm)],['142','143'])).

thf('145',plain,(
    ! [X0: $i] :
      ( r1_tarski @ k1_xboole_0 @ X0 ) ),
    inference('sup-',[status(thm)],['45','46'])).

thf('146',plain,
    ( ( ( sk_C_1 = k1_xboole_0 )
      | ( sk_B = k1_xboole_0 )
      | ( sk_A = k1_xboole_0 ) )
   <= ~ ( r2_hidden @ ( k9_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I ) @ sk_F ) ),
    inference(demod,[status(thm)],['144','145'])).

thf('147',plain,(
    ~ ( r1_tarski @ sk_C_1 @ ( k2_mcart_1 @ ( k1_mcart_1 @ sk_I ) ) ) ),
    inference('sup-',[status(thm)],['116','117'])).

thf('148',plain,
    ( ( ~ ( r1_tarski @ k1_xboole_0 @ ( k2_mcart_1 @ ( k1_mcart_1 @ sk_I ) ) )
      | ( sk_A = k1_xboole_0 )
      | ( sk_B = k1_xboole_0 ) )
   <= ~ ( r2_hidden @ ( k9_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I ) @ sk_F ) ),
    inference('sup-',[status(thm)],['146','147'])).

thf('149',plain,(
    ! [X0: $i] :
      ( r1_tarski @ k1_xboole_0 @ X0 ) ),
    inference('sup-',[status(thm)],['45','46'])).

thf('150',plain,
    ( ( ( sk_A = k1_xboole_0 )
      | ( sk_B = k1_xboole_0 ) )
   <= ~ ( r2_hidden @ ( k9_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I ) @ sk_F ) ),
    inference(demod,[status(thm)],['148','149'])).

thf('151',plain,(
    ~ ( r1_tarski @ sk_B @ ( k2_mcart_1 @ ( k1_mcart_1 @ ( k1_mcart_1 @ sk_I ) ) ) ) ),
    inference('sup-',[status(thm)],['126','127'])).

thf('152',plain,
    ( ( ~ ( r1_tarski @ k1_xboole_0 @ ( k2_mcart_1 @ ( k1_mcart_1 @ ( k1_mcart_1 @ sk_I ) ) ) )
      | ( sk_A = k1_xboole_0 ) )
   <= ~ ( r2_hidden @ ( k9_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I ) @ sk_F ) ),
    inference('sup-',[status(thm)],['150','151'])).

thf('153',plain,(
    ! [X0: $i] :
      ( r1_tarski @ k1_xboole_0 @ X0 ) ),
    inference('sup-',[status(thm)],['45','46'])).

thf('154',plain,
    ( ( sk_A = k1_xboole_0 )
   <= ~ ( r2_hidden @ ( k9_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I ) @ sk_F ) ),
    inference(demod,[status(thm)],['152','153'])).

thf('155',plain,(
    ~ ( r1_tarski @ sk_A @ ( k1_mcart_1 @ ( k1_mcart_1 @ ( k1_mcart_1 @ sk_I ) ) ) ) ),
    inference('sup-',[status(thm)],['16','17'])).

thf('156',plain,
    ( ~ ( r1_tarski @ k1_xboole_0 @ ( k1_mcart_1 @ ( k1_mcart_1 @ ( k1_mcart_1 @ sk_I ) ) ) )
   <= ~ ( r2_hidden @ ( k9_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I ) @ sk_F ) ),
    inference('sup-',[status(thm)],['154','155'])).

thf('157',plain,(
    ! [X0: $i] :
      ( r1_tarski @ k1_xboole_0 @ X0 ) ),
    inference('sup-',[status(thm)],['45','46'])).

thf('158',plain,(
    r2_hidden @ ( k9_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I ) @ sk_F ),
    inference(demod,[status(thm)],['156','157'])).

thf('159',plain,
    ( ~ ( r2_hidden @ ( k8_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I ) @ sk_E )
    | ~ ( r2_hidden @ ( k9_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I ) @ sk_F )
    | ~ ( r2_hidden @ ( k10_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I ) @ sk_G )
    | ~ ( r2_hidden @ ( k11_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I ) @ sk_H ) ),
    inference(split,[status(esa)],['22'])).

thf('160',plain,(
    ~ ( r2_hidden @ ( k8_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I ) @ sk_E ) ),
    inference('sat_resolution*',[status(thm)],['102','135','158','159'])).

thf('161',plain,(
    ~ ( r2_hidden @ ( k8_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I ) @ sk_E ) ),
    inference(simpl_trail,[status(thm)],['23','160'])).

thf('162',plain,
    ( ~ ( r2_hidden @ ( k1_mcart_1 @ ( k1_mcart_1 @ ( k1_mcart_1 @ sk_I ) ) ) @ sk_E )
    | ( sk_A = k1_xboole_0 )
    | ( sk_B = k1_xboole_0 )
    | ( sk_C_1 = k1_xboole_0 )
    | ( sk_D = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['21','161'])).

thf('163',plain,(
    r2_hidden @ ( k1_mcart_1 @ ( k1_mcart_1 @ ( k1_mcart_1 @ sk_I ) ) ) @ sk_E ),
    inference('sup-',[status(thm)],['8','9'])).

thf('164',plain,
    ( ( sk_A = k1_xboole_0 )
    | ( sk_B = k1_xboole_0 )
    | ( sk_C_1 = k1_xboole_0 )
    | ( sk_D = k1_xboole_0 ) ),
    inference(demod,[status(thm)],['162','163'])).

thf('165',plain,(
    ~ ( r1_tarski @ sk_D @ ( k2_mcart_1 @ sk_I ) ) ),
    inference('sup-',[status(thm)],['41','42'])).

thf('166',plain,
    ( ~ ( r1_tarski @ k1_xboole_0 @ ( k2_mcart_1 @ sk_I ) )
    | ( sk_C_1 = k1_xboole_0 )
    | ( sk_B = k1_xboole_0 )
    | ( sk_A = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['164','165'])).

thf('167',plain,(
    ! [X0: $i] :
      ( r1_tarski @ k1_xboole_0 @ X0 ) ),
    inference('sup-',[status(thm)],['45','46'])).

thf('168',plain,
    ( ( sk_C_1 = k1_xboole_0 )
    | ( sk_B = k1_xboole_0 )
    | ( sk_A = k1_xboole_0 ) ),
    inference(demod,[status(thm)],['166','167'])).

thf('169',plain,(
    ~ ( r1_tarski @ sk_C_1 @ ( k2_mcart_1 @ ( k1_mcart_1 @ sk_I ) ) ) ),
    inference('sup-',[status(thm)],['116','117'])).

thf('170',plain,
    ( ~ ( r1_tarski @ k1_xboole_0 @ ( k2_mcart_1 @ ( k1_mcart_1 @ sk_I ) ) )
    | ( sk_A = k1_xboole_0 )
    | ( sk_B = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['168','169'])).

thf('171',plain,(
    ! [X0: $i] :
      ( r1_tarski @ k1_xboole_0 @ X0 ) ),
    inference('sup-',[status(thm)],['45','46'])).

thf('172',plain,
    ( ( sk_A = k1_xboole_0 )
    | ( sk_B = k1_xboole_0 ) ),
    inference(demod,[status(thm)],['170','171'])).

thf('173',plain,(
    ~ ( r1_tarski @ sk_B @ ( k2_mcart_1 @ ( k1_mcart_1 @ ( k1_mcart_1 @ sk_I ) ) ) ) ),
    inference('sup-',[status(thm)],['126','127'])).

thf('174',plain,
    ( ~ ( r1_tarski @ k1_xboole_0 @ ( k2_mcart_1 @ ( k1_mcart_1 @ ( k1_mcart_1 @ sk_I ) ) ) )
    | ( sk_A = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['172','173'])).

thf('175',plain,(
    ! [X0: $i] :
      ( r1_tarski @ k1_xboole_0 @ X0 ) ),
    inference('sup-',[status(thm)],['45','46'])).

thf('176',plain,(
    sk_A = k1_xboole_0 ),
    inference(demod,[status(thm)],['174','175'])).

thf('177',plain,(
    ! [X0: $i] :
      ( r1_tarski @ k1_xboole_0 @ X0 ) ),
    inference('sup-',[status(thm)],['45','46'])).

thf('178',plain,(
    $false ),
    inference(demod,[status(thm)],['18','176','177'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.00/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.12/0.12  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.palplIQjiF
% 0.13/0.32  % Computer   : n020.cluster.edu
% 0.13/0.32  % Model      : x86_64 x86_64
% 0.13/0.32  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.32  % Memory     : 8042.1875MB
% 0.13/0.32  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.32  % CPULimit   : 60
% 0.13/0.32  % DateTime   : Tue Dec  1 16:49:07 EST 2020
% 0.13/0.32  % CPUTime    : 
% 0.13/0.32  % Running portfolio for 600 s
% 0.13/0.32  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.13/0.32  % Number of cores: 8
% 0.13/0.33  % Python version: Python 3.6.8
% 0.13/0.33  % Running in FO mode
% 0.47/0.67  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.47/0.67  % Solved by: fo/fo7.sh
% 0.47/0.67  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.47/0.67  % done 442 iterations in 0.231s
% 0.47/0.67  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.47/0.67  % SZS output start Refutation
% 0.47/0.67  thf(sk_D_type, type, sk_D: $i).
% 0.47/0.67  thf(sk_E_type, type, sk_E: $i).
% 0.47/0.67  thf(k11_mcart_1_type, type, k11_mcart_1: $i > $i > $i > $i > $i > $i).
% 0.47/0.67  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.47/0.67  thf(sk_C_1_type, type, sk_C_1: $i).
% 0.47/0.67  thf(sk_C_type, type, sk_C: $i > $i > $i).
% 0.47/0.67  thf(k3_zfmisc_1_type, type, k3_zfmisc_1: $i > $i > $i > $i).
% 0.47/0.67  thf(sk_H_type, type, sk_H: $i).
% 0.47/0.67  thf(k10_mcart_1_type, type, k10_mcart_1: $i > $i > $i > $i > $i > $i).
% 0.47/0.67  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 0.47/0.67  thf(k2_zfmisc_1_type, type, k2_zfmisc_1: $i > $i > $i).
% 0.47/0.67  thf(k4_zfmisc_1_type, type, k4_zfmisc_1: $i > $i > $i > $i > $i).
% 0.47/0.67  thf(k8_mcart_1_type, type, k8_mcart_1: $i > $i > $i > $i > $i > $i).
% 0.47/0.67  thf(k9_mcart_1_type, type, k9_mcart_1: $i > $i > $i > $i > $i > $i).
% 0.47/0.67  thf(k2_mcart_1_type, type, k2_mcart_1: $i > $i).
% 0.47/0.67  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.47/0.67  thf(sk_A_type, type, sk_A: $i).
% 0.47/0.67  thf(k1_zfmisc_1_type, type, k1_zfmisc_1: $i > $i).
% 0.47/0.67  thf(sk_B_type, type, sk_B: $i).
% 0.47/0.67  thf(sk_I_type, type, sk_I: $i).
% 0.47/0.67  thf(sk_F_type, type, sk_F: $i).
% 0.47/0.67  thf(m1_subset_1_type, type, m1_subset_1: $i > $i > $o).
% 0.47/0.67  thf(sk_G_type, type, sk_G: $i).
% 0.47/0.67  thf(k1_mcart_1_type, type, k1_mcart_1: $i > $i).
% 0.47/0.67  thf(t87_mcart_1, conjecture,
% 0.47/0.67    (![A:$i,B:$i,C:$i,D:$i,E:$i]:
% 0.47/0.67     ( ( m1_subset_1 @ E @ ( k1_zfmisc_1 @ A ) ) =>
% 0.47/0.67       ( ![F:$i]:
% 0.47/0.67         ( ( m1_subset_1 @ F @ ( k1_zfmisc_1 @ B ) ) =>
% 0.47/0.67           ( ![G:$i]:
% 0.47/0.67             ( ( m1_subset_1 @ G @ ( k1_zfmisc_1 @ C ) ) =>
% 0.47/0.67               ( ![H:$i]:
% 0.47/0.67                 ( ( m1_subset_1 @ H @ ( k1_zfmisc_1 @ D ) ) =>
% 0.47/0.67                   ( ![I:$i]:
% 0.47/0.67                     ( ( m1_subset_1 @ I @ ( k4_zfmisc_1 @ A @ B @ C @ D ) ) =>
% 0.47/0.67                       ( ( r2_hidden @ I @ ( k4_zfmisc_1 @ E @ F @ G @ H ) ) =>
% 0.47/0.67                         ( ( r2_hidden @ ( k8_mcart_1 @ A @ B @ C @ D @ I ) @ E ) & 
% 0.47/0.67                           ( r2_hidden @ ( k9_mcart_1 @ A @ B @ C @ D @ I ) @ F ) & 
% 0.47/0.67                           ( r2_hidden @
% 0.47/0.67                             ( k10_mcart_1 @ A @ B @ C @ D @ I ) @ G ) & 
% 0.47/0.67                           ( r2_hidden @
% 0.47/0.67                             ( k11_mcart_1 @ A @ B @ C @ D @ I ) @ H ) ) ) ) ) ) ) ) ) ) ) ))).
% 0.47/0.67  thf(zf_stmt_0, negated_conjecture,
% 0.47/0.67    (~( ![A:$i,B:$i,C:$i,D:$i,E:$i]:
% 0.47/0.67        ( ( m1_subset_1 @ E @ ( k1_zfmisc_1 @ A ) ) =>
% 0.47/0.67          ( ![F:$i]:
% 0.47/0.67            ( ( m1_subset_1 @ F @ ( k1_zfmisc_1 @ B ) ) =>
% 0.47/0.67              ( ![G:$i]:
% 0.47/0.67                ( ( m1_subset_1 @ G @ ( k1_zfmisc_1 @ C ) ) =>
% 0.47/0.67                  ( ![H:$i]:
% 0.47/0.67                    ( ( m1_subset_1 @ H @ ( k1_zfmisc_1 @ D ) ) =>
% 0.47/0.67                      ( ![I:$i]:
% 0.47/0.67                        ( ( m1_subset_1 @ I @ ( k4_zfmisc_1 @ A @ B @ C @ D ) ) =>
% 0.47/0.67                          ( ( r2_hidden @ I @ ( k4_zfmisc_1 @ E @ F @ G @ H ) ) =>
% 0.47/0.67                            ( ( r2_hidden @
% 0.47/0.67                                ( k8_mcart_1 @ A @ B @ C @ D @ I ) @ E ) & 
% 0.47/0.67                              ( r2_hidden @
% 0.47/0.67                                ( k9_mcart_1 @ A @ B @ C @ D @ I ) @ F ) & 
% 0.47/0.67                              ( r2_hidden @
% 0.47/0.67                                ( k10_mcart_1 @ A @ B @ C @ D @ I ) @ G ) & 
% 0.47/0.67                              ( r2_hidden @
% 0.47/0.67                                ( k11_mcart_1 @ A @ B @ C @ D @ I ) @ H ) ) ) ) ) ) ) ) ) ) ) ) )),
% 0.47/0.67    inference('cnf.neg', [status(esa)], [t87_mcart_1])).
% 0.47/0.67  thf('0', plain,
% 0.47/0.67      ((r2_hidden @ sk_I @ (k4_zfmisc_1 @ sk_E @ sk_F @ sk_G @ sk_H))),
% 0.47/0.67      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.47/0.67  thf(d4_zfmisc_1, axiom,
% 0.47/0.67    (![A:$i,B:$i,C:$i,D:$i]:
% 0.47/0.67     ( ( k4_zfmisc_1 @ A @ B @ C @ D ) =
% 0.47/0.67       ( k2_zfmisc_1 @ ( k3_zfmisc_1 @ A @ B @ C ) @ D ) ))).
% 0.47/0.67  thf('1', plain,
% 0.47/0.67      (![X16 : $i, X17 : $i, X18 : $i, X19 : $i]:
% 0.47/0.67         ((k4_zfmisc_1 @ X16 @ X17 @ X18 @ X19)
% 0.47/0.67           = (k2_zfmisc_1 @ (k3_zfmisc_1 @ X16 @ X17 @ X18) @ X19))),
% 0.47/0.67      inference('cnf', [status(esa)], [d4_zfmisc_1])).
% 0.47/0.67  thf(t10_mcart_1, axiom,
% 0.47/0.67    (![A:$i,B:$i,C:$i]:
% 0.47/0.67     ( ( r2_hidden @ A @ ( k2_zfmisc_1 @ B @ C ) ) =>
% 0.47/0.67       ( ( r2_hidden @ ( k1_mcart_1 @ A ) @ B ) & 
% 0.47/0.67         ( r2_hidden @ ( k2_mcart_1 @ A ) @ C ) ) ))).
% 0.47/0.67  thf('2', plain,
% 0.47/0.67      (![X20 : $i, X21 : $i, X22 : $i]:
% 0.47/0.67         ((r2_hidden @ (k1_mcart_1 @ X20) @ X21)
% 0.47/0.67          | ~ (r2_hidden @ X20 @ (k2_zfmisc_1 @ X21 @ X22)))),
% 0.47/0.67      inference('cnf', [status(esa)], [t10_mcart_1])).
% 0.47/0.67  thf('3', plain,
% 0.47/0.67      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i, X4 : $i]:
% 0.47/0.67         (~ (r2_hidden @ X4 @ (k4_zfmisc_1 @ X3 @ X2 @ X1 @ X0))
% 0.47/0.67          | (r2_hidden @ (k1_mcart_1 @ X4) @ (k3_zfmisc_1 @ X3 @ X2 @ X1)))),
% 0.47/0.67      inference('sup-', [status(thm)], ['1', '2'])).
% 0.47/0.67  thf('4', plain,
% 0.47/0.67      ((r2_hidden @ (k1_mcart_1 @ sk_I) @ (k3_zfmisc_1 @ sk_E @ sk_F @ sk_G))),
% 0.47/0.67      inference('sup-', [status(thm)], ['0', '3'])).
% 0.47/0.67  thf(d3_zfmisc_1, axiom,
% 0.47/0.67    (![A:$i,B:$i,C:$i]:
% 0.47/0.67     ( ( k3_zfmisc_1 @ A @ B @ C ) =
% 0.47/0.67       ( k2_zfmisc_1 @ ( k2_zfmisc_1 @ A @ B ) @ C ) ))).
% 0.47/0.67  thf('5', plain,
% 0.47/0.67      (![X13 : $i, X14 : $i, X15 : $i]:
% 0.47/0.67         ((k3_zfmisc_1 @ X13 @ X14 @ X15)
% 0.47/0.67           = (k2_zfmisc_1 @ (k2_zfmisc_1 @ X13 @ X14) @ X15))),
% 0.47/0.67      inference('cnf', [status(esa)], [d3_zfmisc_1])).
% 0.47/0.67  thf('6', plain,
% 0.47/0.67      (![X20 : $i, X21 : $i, X22 : $i]:
% 0.47/0.67         ((r2_hidden @ (k1_mcart_1 @ X20) @ X21)
% 0.47/0.67          | ~ (r2_hidden @ X20 @ (k2_zfmisc_1 @ X21 @ X22)))),
% 0.47/0.67      inference('cnf', [status(esa)], [t10_mcart_1])).
% 0.47/0.67  thf('7', plain,
% 0.47/0.67      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i]:
% 0.47/0.67         (~ (r2_hidden @ X3 @ (k3_zfmisc_1 @ X2 @ X1 @ X0))
% 0.47/0.67          | (r2_hidden @ (k1_mcart_1 @ X3) @ (k2_zfmisc_1 @ X2 @ X1)))),
% 0.47/0.67      inference('sup-', [status(thm)], ['5', '6'])).
% 0.47/0.67  thf('8', plain,
% 0.47/0.67      ((r2_hidden @ (k1_mcart_1 @ (k1_mcart_1 @ sk_I)) @ 
% 0.47/0.67        (k2_zfmisc_1 @ sk_E @ sk_F))),
% 0.47/0.67      inference('sup-', [status(thm)], ['4', '7'])).
% 0.47/0.67  thf('9', plain,
% 0.47/0.67      (![X20 : $i, X21 : $i, X22 : $i]:
% 0.47/0.67         ((r2_hidden @ (k1_mcart_1 @ X20) @ X21)
% 0.47/0.67          | ~ (r2_hidden @ X20 @ (k2_zfmisc_1 @ X21 @ X22)))),
% 0.47/0.67      inference('cnf', [status(esa)], [t10_mcart_1])).
% 0.47/0.67  thf('10', plain,
% 0.47/0.67      ((r2_hidden @ (k1_mcart_1 @ (k1_mcart_1 @ (k1_mcart_1 @ sk_I))) @ sk_E)),
% 0.47/0.67      inference('sup-', [status(thm)], ['8', '9'])).
% 0.47/0.67  thf('11', plain, ((m1_subset_1 @ sk_E @ (k1_zfmisc_1 @ sk_A))),
% 0.47/0.67      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.47/0.67  thf(t3_subset, axiom,
% 0.47/0.67    (![A:$i,B:$i]:
% 0.47/0.67     ( ( m1_subset_1 @ A @ ( k1_zfmisc_1 @ B ) ) <=> ( r1_tarski @ A @ B ) ))).
% 0.47/0.67  thf('12', plain,
% 0.47/0.67      (![X5 : $i, X6 : $i]:
% 0.47/0.67         ((r1_tarski @ X5 @ X6) | ~ (m1_subset_1 @ X5 @ (k1_zfmisc_1 @ X6)))),
% 0.47/0.67      inference('cnf', [status(esa)], [t3_subset])).
% 0.47/0.67  thf('13', plain, ((r1_tarski @ sk_E @ sk_A)),
% 0.47/0.67      inference('sup-', [status(thm)], ['11', '12'])).
% 0.47/0.67  thf(d3_tarski, axiom,
% 0.47/0.67    (![A:$i,B:$i]:
% 0.47/0.67     ( ( r1_tarski @ A @ B ) <=>
% 0.47/0.67       ( ![C:$i]: ( ( r2_hidden @ C @ A ) => ( r2_hidden @ C @ B ) ) ) ))).
% 0.47/0.67  thf('14', plain,
% 0.47/0.67      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.47/0.67         (~ (r2_hidden @ X0 @ X1)
% 0.47/0.67          | (r2_hidden @ X0 @ X2)
% 0.47/0.67          | ~ (r1_tarski @ X1 @ X2))),
% 0.47/0.67      inference('cnf', [status(esa)], [d3_tarski])).
% 0.47/0.67  thf('15', plain,
% 0.47/0.67      (![X0 : $i]: ((r2_hidden @ X0 @ sk_A) | ~ (r2_hidden @ X0 @ sk_E))),
% 0.47/0.67      inference('sup-', [status(thm)], ['13', '14'])).
% 0.47/0.67  thf('16', plain,
% 0.47/0.67      ((r2_hidden @ (k1_mcart_1 @ (k1_mcart_1 @ (k1_mcart_1 @ sk_I))) @ sk_A)),
% 0.47/0.67      inference('sup-', [status(thm)], ['10', '15'])).
% 0.47/0.67  thf(t7_ordinal1, axiom,
% 0.47/0.67    (![A:$i,B:$i]: ( ~( ( r2_hidden @ A @ B ) & ( r1_tarski @ B @ A ) ) ))).
% 0.47/0.67  thf('17', plain,
% 0.47/0.67      (![X11 : $i, X12 : $i]:
% 0.47/0.67         (~ (r2_hidden @ X11 @ X12) | ~ (r1_tarski @ X12 @ X11))),
% 0.47/0.67      inference('cnf', [status(esa)], [t7_ordinal1])).
% 0.47/0.67  thf('18', plain,
% 0.47/0.67      (~ (r1_tarski @ sk_A @ (k1_mcart_1 @ (k1_mcart_1 @ (k1_mcart_1 @ sk_I))))),
% 0.47/0.67      inference('sup-', [status(thm)], ['16', '17'])).
% 0.47/0.67  thf('19', plain,
% 0.47/0.67      ((m1_subset_1 @ sk_I @ (k4_zfmisc_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D))),
% 0.47/0.67      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.47/0.67  thf(t61_mcart_1, axiom,
% 0.47/0.67    (![A:$i,B:$i,C:$i,D:$i]:
% 0.47/0.67     ( ~( ( ( A ) != ( k1_xboole_0 ) ) & ( ( B ) != ( k1_xboole_0 ) ) & 
% 0.47/0.67          ( ( C ) != ( k1_xboole_0 ) ) & ( ( D ) != ( k1_xboole_0 ) ) & 
% 0.47/0.67          ( ~( ![E:$i]:
% 0.47/0.67               ( ( m1_subset_1 @ E @ ( k4_zfmisc_1 @ A @ B @ C @ D ) ) =>
% 0.47/0.67                 ( ( ( k8_mcart_1 @ A @ B @ C @ D @ E ) =
% 0.47/0.67                     ( k1_mcart_1 @ ( k1_mcart_1 @ ( k1_mcart_1 @ E ) ) ) ) & 
% 0.47/0.67                   ( ( k9_mcart_1 @ A @ B @ C @ D @ E ) =
% 0.47/0.67                     ( k2_mcart_1 @ ( k1_mcart_1 @ ( k1_mcart_1 @ E ) ) ) ) & 
% 0.47/0.67                   ( ( k10_mcart_1 @ A @ B @ C @ D @ E ) =
% 0.47/0.67                     ( k2_mcart_1 @ ( k1_mcart_1 @ E ) ) ) & 
% 0.47/0.67                   ( ( k11_mcart_1 @ A @ B @ C @ D @ E ) = ( k2_mcart_1 @ E ) ) ) ) ) ) ) ))).
% 0.47/0.67  thf('20', plain,
% 0.47/0.67      (![X23 : $i, X24 : $i, X25 : $i, X26 : $i, X27 : $i]:
% 0.47/0.67         (((X23) = (k1_xboole_0))
% 0.47/0.67          | ((X24) = (k1_xboole_0))
% 0.47/0.67          | ((X25) = (k1_xboole_0))
% 0.47/0.67          | ((k8_mcart_1 @ X23 @ X24 @ X25 @ X27 @ X26)
% 0.47/0.67              = (k1_mcart_1 @ (k1_mcart_1 @ (k1_mcart_1 @ X26))))
% 0.47/0.67          | ~ (m1_subset_1 @ X26 @ (k4_zfmisc_1 @ X23 @ X24 @ X25 @ X27))
% 0.47/0.67          | ((X27) = (k1_xboole_0)))),
% 0.47/0.67      inference('cnf', [status(esa)], [t61_mcart_1])).
% 0.47/0.67  thf('21', plain,
% 0.47/0.67      ((((sk_D) = (k1_xboole_0))
% 0.47/0.67        | ((k8_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I)
% 0.47/0.67            = (k1_mcart_1 @ (k1_mcart_1 @ (k1_mcart_1 @ sk_I))))
% 0.47/0.67        | ((sk_C_1) = (k1_xboole_0))
% 0.47/0.67        | ((sk_B) = (k1_xboole_0))
% 0.47/0.67        | ((sk_A) = (k1_xboole_0)))),
% 0.47/0.67      inference('sup-', [status(thm)], ['19', '20'])).
% 0.47/0.67  thf('22', plain,
% 0.47/0.67      ((~ (r2_hidden @ (k8_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I) @ sk_E)
% 0.47/0.67        | ~ (r2_hidden @ (k9_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I) @ 
% 0.47/0.67             sk_F)
% 0.47/0.67        | ~ (r2_hidden @ (k10_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I) @ 
% 0.47/0.67             sk_G)
% 0.47/0.67        | ~ (r2_hidden @ (k11_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I) @ 
% 0.47/0.67             sk_H))),
% 0.47/0.67      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.47/0.67  thf('23', plain,
% 0.47/0.67      ((~ (r2_hidden @ (k8_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I) @ sk_E))
% 0.47/0.67         <= (~
% 0.47/0.67             ((r2_hidden @ (k8_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I) @ 
% 0.47/0.67               sk_E)))),
% 0.47/0.67      inference('split', [status(esa)], ['22'])).
% 0.47/0.67  thf('24', plain,
% 0.47/0.67      ((m1_subset_1 @ sk_I @ (k4_zfmisc_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D))),
% 0.47/0.67      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.47/0.67  thf('25', plain,
% 0.47/0.67      (![X23 : $i, X24 : $i, X25 : $i, X26 : $i, X27 : $i]:
% 0.47/0.67         (((X23) = (k1_xboole_0))
% 0.47/0.67          | ((X24) = (k1_xboole_0))
% 0.47/0.67          | ((X25) = (k1_xboole_0))
% 0.47/0.67          | ((k11_mcart_1 @ X23 @ X24 @ X25 @ X27 @ X26) = (k2_mcart_1 @ X26))
% 0.47/0.67          | ~ (m1_subset_1 @ X26 @ (k4_zfmisc_1 @ X23 @ X24 @ X25 @ X27))
% 0.47/0.67          | ((X27) = (k1_xboole_0)))),
% 0.47/0.67      inference('cnf', [status(esa)], [t61_mcart_1])).
% 0.47/0.67  thf('26', plain,
% 0.47/0.67      ((((sk_D) = (k1_xboole_0))
% 0.47/0.67        | ((k11_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I)
% 0.47/0.67            = (k2_mcart_1 @ sk_I))
% 0.47/0.67        | ((sk_C_1) = (k1_xboole_0))
% 0.47/0.67        | ((sk_B) = (k1_xboole_0))
% 0.47/0.67        | ((sk_A) = (k1_xboole_0)))),
% 0.47/0.67      inference('sup-', [status(thm)], ['24', '25'])).
% 0.47/0.67  thf('27', plain,
% 0.47/0.67      ((~ (r2_hidden @ (k11_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I) @ 
% 0.47/0.67           sk_H))
% 0.47/0.67         <= (~
% 0.47/0.67             ((r2_hidden @ 
% 0.47/0.67               (k11_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I) @ sk_H)))),
% 0.47/0.67      inference('split', [status(esa)], ['22'])).
% 0.47/0.67  thf('28', plain,
% 0.47/0.67      (((~ (r2_hidden @ (k2_mcart_1 @ sk_I) @ sk_H)
% 0.47/0.67         | ((sk_A) = (k1_xboole_0))
% 0.47/0.67         | ((sk_B) = (k1_xboole_0))
% 0.47/0.67         | ((sk_C_1) = (k1_xboole_0))
% 0.47/0.67         | ((sk_D) = (k1_xboole_0))))
% 0.47/0.67         <= (~
% 0.47/0.67             ((r2_hidden @ 
% 0.47/0.67               (k11_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I) @ sk_H)))),
% 0.47/0.67      inference('sup-', [status(thm)], ['26', '27'])).
% 0.47/0.67  thf('29', plain,
% 0.47/0.67      ((r2_hidden @ sk_I @ (k4_zfmisc_1 @ sk_E @ sk_F @ sk_G @ sk_H))),
% 0.47/0.67      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.47/0.67  thf('30', plain,
% 0.47/0.67      (![X16 : $i, X17 : $i, X18 : $i, X19 : $i]:
% 0.47/0.67         ((k4_zfmisc_1 @ X16 @ X17 @ X18 @ X19)
% 0.47/0.67           = (k2_zfmisc_1 @ (k3_zfmisc_1 @ X16 @ X17 @ X18) @ X19))),
% 0.47/0.67      inference('cnf', [status(esa)], [d4_zfmisc_1])).
% 0.47/0.67  thf('31', plain,
% 0.47/0.67      (![X20 : $i, X21 : $i, X22 : $i]:
% 0.47/0.67         ((r2_hidden @ (k2_mcart_1 @ X20) @ X22)
% 0.47/0.67          | ~ (r2_hidden @ X20 @ (k2_zfmisc_1 @ X21 @ X22)))),
% 0.47/0.67      inference('cnf', [status(esa)], [t10_mcart_1])).
% 0.47/0.67  thf('32', plain,
% 0.47/0.67      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i, X4 : $i]:
% 0.47/0.67         (~ (r2_hidden @ X4 @ (k4_zfmisc_1 @ X3 @ X2 @ X1 @ X0))
% 0.47/0.67          | (r2_hidden @ (k2_mcart_1 @ X4) @ X0))),
% 0.47/0.67      inference('sup-', [status(thm)], ['30', '31'])).
% 0.47/0.67  thf('33', plain, ((r2_hidden @ (k2_mcart_1 @ sk_I) @ sk_H)),
% 0.47/0.67      inference('sup-', [status(thm)], ['29', '32'])).
% 0.47/0.67  thf('34', plain,
% 0.47/0.67      (((((sk_A) = (k1_xboole_0))
% 0.47/0.67         | ((sk_B) = (k1_xboole_0))
% 0.47/0.67         | ((sk_C_1) = (k1_xboole_0))
% 0.47/0.67         | ((sk_D) = (k1_xboole_0))))
% 0.47/0.67         <= (~
% 0.47/0.67             ((r2_hidden @ 
% 0.47/0.67               (k11_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I) @ sk_H)))),
% 0.47/0.67      inference('demod', [status(thm)], ['28', '33'])).
% 0.47/0.67  thf('35', plain, ((r2_hidden @ (k2_mcart_1 @ sk_I) @ sk_H)),
% 0.47/0.67      inference('sup-', [status(thm)], ['29', '32'])).
% 0.47/0.67  thf('36', plain, ((m1_subset_1 @ sk_H @ (k1_zfmisc_1 @ sk_D))),
% 0.47/0.67      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.47/0.67  thf('37', plain,
% 0.47/0.67      (![X5 : $i, X6 : $i]:
% 0.47/0.67         ((r1_tarski @ X5 @ X6) | ~ (m1_subset_1 @ X5 @ (k1_zfmisc_1 @ X6)))),
% 0.47/0.67      inference('cnf', [status(esa)], [t3_subset])).
% 0.47/0.67  thf('38', plain, ((r1_tarski @ sk_H @ sk_D)),
% 0.47/0.67      inference('sup-', [status(thm)], ['36', '37'])).
% 0.47/0.67  thf('39', plain,
% 0.47/0.67      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.47/0.67         (~ (r2_hidden @ X0 @ X1)
% 0.47/0.67          | (r2_hidden @ X0 @ X2)
% 0.47/0.67          | ~ (r1_tarski @ X1 @ X2))),
% 0.47/0.67      inference('cnf', [status(esa)], [d3_tarski])).
% 0.47/0.67  thf('40', plain,
% 0.47/0.67      (![X0 : $i]: ((r2_hidden @ X0 @ sk_D) | ~ (r2_hidden @ X0 @ sk_H))),
% 0.47/0.67      inference('sup-', [status(thm)], ['38', '39'])).
% 0.47/0.67  thf('41', plain, ((r2_hidden @ (k2_mcart_1 @ sk_I) @ sk_D)),
% 0.47/0.67      inference('sup-', [status(thm)], ['35', '40'])).
% 0.47/0.67  thf('42', plain,
% 0.47/0.67      (![X11 : $i, X12 : $i]:
% 0.47/0.67         (~ (r2_hidden @ X11 @ X12) | ~ (r1_tarski @ X12 @ X11))),
% 0.47/0.67      inference('cnf', [status(esa)], [t7_ordinal1])).
% 0.47/0.67  thf('43', plain, (~ (r1_tarski @ sk_D @ (k2_mcart_1 @ sk_I))),
% 0.47/0.67      inference('sup-', [status(thm)], ['41', '42'])).
% 0.47/0.67  thf('44', plain,
% 0.47/0.67      (((~ (r1_tarski @ k1_xboole_0 @ (k2_mcart_1 @ sk_I))
% 0.47/0.67         | ((sk_C_1) = (k1_xboole_0))
% 0.47/0.67         | ((sk_B) = (k1_xboole_0))
% 0.47/0.67         | ((sk_A) = (k1_xboole_0))))
% 0.47/0.67         <= (~
% 0.47/0.67             ((r2_hidden @ 
% 0.47/0.67               (k11_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I) @ sk_H)))),
% 0.47/0.67      inference('sup-', [status(thm)], ['34', '43'])).
% 0.47/0.67  thf(t4_subset_1, axiom,
% 0.47/0.67    (![A:$i]: ( m1_subset_1 @ k1_xboole_0 @ ( k1_zfmisc_1 @ A ) ))).
% 0.47/0.67  thf('45', plain,
% 0.47/0.67      (![X4 : $i]: (m1_subset_1 @ k1_xboole_0 @ (k1_zfmisc_1 @ X4))),
% 0.47/0.67      inference('cnf', [status(esa)], [t4_subset_1])).
% 0.47/0.67  thf('46', plain,
% 0.47/0.67      (![X5 : $i, X6 : $i]:
% 0.47/0.67         ((r1_tarski @ X5 @ X6) | ~ (m1_subset_1 @ X5 @ (k1_zfmisc_1 @ X6)))),
% 0.47/0.67      inference('cnf', [status(esa)], [t3_subset])).
% 0.47/0.67  thf('47', plain, (![X0 : $i]: (r1_tarski @ k1_xboole_0 @ X0)),
% 0.47/0.67      inference('sup-', [status(thm)], ['45', '46'])).
% 0.47/0.67  thf('48', plain,
% 0.47/0.67      (((((sk_C_1) = (k1_xboole_0))
% 0.47/0.67         | ((sk_B) = (k1_xboole_0))
% 0.47/0.67         | ((sk_A) = (k1_xboole_0))))
% 0.47/0.67         <= (~
% 0.47/0.67             ((r2_hidden @ 
% 0.47/0.67               (k11_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I) @ sk_H)))),
% 0.47/0.67      inference('demod', [status(thm)], ['44', '47'])).
% 0.47/0.67  thf('49', plain,
% 0.47/0.67      (![X1 : $i, X3 : $i]:
% 0.47/0.67         ((r1_tarski @ X1 @ X3) | (r2_hidden @ (sk_C @ X3 @ X1) @ X1))),
% 0.47/0.67      inference('cnf', [status(esa)], [d3_tarski])).
% 0.47/0.67  thf('50', plain, ((m1_subset_1 @ sk_G @ (k1_zfmisc_1 @ sk_C_1))),
% 0.47/0.67      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.47/0.67  thf('51', plain,
% 0.47/0.67      (![X5 : $i, X6 : $i]:
% 0.47/0.67         ((r1_tarski @ X5 @ X6) | ~ (m1_subset_1 @ X5 @ (k1_zfmisc_1 @ X6)))),
% 0.47/0.67      inference('cnf', [status(esa)], [t3_subset])).
% 0.47/0.67  thf('52', plain, ((r1_tarski @ sk_G @ sk_C_1)),
% 0.47/0.67      inference('sup-', [status(thm)], ['50', '51'])).
% 0.47/0.67  thf('53', plain,
% 0.47/0.67      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.47/0.67         (~ (r2_hidden @ X0 @ X1)
% 0.47/0.67          | (r2_hidden @ X0 @ X2)
% 0.47/0.67          | ~ (r1_tarski @ X1 @ X2))),
% 0.47/0.67      inference('cnf', [status(esa)], [d3_tarski])).
% 0.47/0.67  thf('54', plain,
% 0.47/0.67      (![X0 : $i]: ((r2_hidden @ X0 @ sk_C_1) | ~ (r2_hidden @ X0 @ sk_G))),
% 0.47/0.67      inference('sup-', [status(thm)], ['52', '53'])).
% 0.47/0.67  thf('55', plain,
% 0.47/0.67      (![X0 : $i]:
% 0.47/0.67         ((r1_tarski @ sk_G @ X0) | (r2_hidden @ (sk_C @ X0 @ sk_G) @ sk_C_1))),
% 0.47/0.67      inference('sup-', [status(thm)], ['49', '54'])).
% 0.47/0.67  thf('56', plain,
% 0.47/0.67      (![X11 : $i, X12 : $i]:
% 0.47/0.67         (~ (r2_hidden @ X11 @ X12) | ~ (r1_tarski @ X12 @ X11))),
% 0.47/0.67      inference('cnf', [status(esa)], [t7_ordinal1])).
% 0.47/0.67  thf('57', plain,
% 0.47/0.67      (![X0 : $i]:
% 0.47/0.67         ((r1_tarski @ sk_G @ X0) | ~ (r1_tarski @ sk_C_1 @ (sk_C @ X0 @ sk_G)))),
% 0.47/0.67      inference('sup-', [status(thm)], ['55', '56'])).
% 0.47/0.67  thf('58', plain,
% 0.47/0.67      ((![X0 : $i]:
% 0.47/0.67          (~ (r1_tarski @ k1_xboole_0 @ (sk_C @ X0 @ sk_G))
% 0.47/0.67           | ((sk_A) = (k1_xboole_0))
% 0.47/0.67           | ((sk_B) = (k1_xboole_0))
% 0.47/0.67           | (r1_tarski @ sk_G @ X0)))
% 0.47/0.67         <= (~
% 0.47/0.67             ((r2_hidden @ 
% 0.47/0.67               (k11_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I) @ sk_H)))),
% 0.47/0.67      inference('sup-', [status(thm)], ['48', '57'])).
% 0.47/0.67  thf('59', plain, (![X0 : $i]: (r1_tarski @ k1_xboole_0 @ X0)),
% 0.47/0.67      inference('sup-', [status(thm)], ['45', '46'])).
% 0.47/0.67  thf('60', plain,
% 0.47/0.67      ((![X0 : $i]:
% 0.47/0.67          (((sk_A) = (k1_xboole_0))
% 0.47/0.67           | ((sk_B) = (k1_xboole_0))
% 0.47/0.67           | (r1_tarski @ sk_G @ X0)))
% 0.47/0.67         <= (~
% 0.47/0.67             ((r2_hidden @ 
% 0.47/0.67               (k11_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I) @ sk_H)))),
% 0.47/0.67      inference('demod', [status(thm)], ['58', '59'])).
% 0.47/0.67  thf('61', plain,
% 0.47/0.67      ((r2_hidden @ (k1_mcart_1 @ sk_I) @ (k3_zfmisc_1 @ sk_E @ sk_F @ sk_G))),
% 0.47/0.67      inference('sup-', [status(thm)], ['0', '3'])).
% 0.47/0.67  thf('62', plain,
% 0.47/0.67      (![X13 : $i, X14 : $i, X15 : $i]:
% 0.47/0.67         ((k3_zfmisc_1 @ X13 @ X14 @ X15)
% 0.47/0.67           = (k2_zfmisc_1 @ (k2_zfmisc_1 @ X13 @ X14) @ X15))),
% 0.47/0.67      inference('cnf', [status(esa)], [d3_zfmisc_1])).
% 0.47/0.67  thf('63', plain,
% 0.47/0.67      (![X20 : $i, X21 : $i, X22 : $i]:
% 0.47/0.67         ((r2_hidden @ (k2_mcart_1 @ X20) @ X22)
% 0.47/0.67          | ~ (r2_hidden @ X20 @ (k2_zfmisc_1 @ X21 @ X22)))),
% 0.47/0.67      inference('cnf', [status(esa)], [t10_mcart_1])).
% 0.47/0.67  thf('64', plain,
% 0.47/0.67      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i]:
% 0.47/0.67         (~ (r2_hidden @ X3 @ (k3_zfmisc_1 @ X2 @ X1 @ X0))
% 0.47/0.67          | (r2_hidden @ (k2_mcart_1 @ X3) @ X0))),
% 0.47/0.67      inference('sup-', [status(thm)], ['62', '63'])).
% 0.47/0.67  thf('65', plain, ((r2_hidden @ (k2_mcart_1 @ (k1_mcart_1 @ sk_I)) @ sk_G)),
% 0.47/0.67      inference('sup-', [status(thm)], ['61', '64'])).
% 0.47/0.67  thf('66', plain,
% 0.47/0.67      (![X11 : $i, X12 : $i]:
% 0.47/0.67         (~ (r2_hidden @ X11 @ X12) | ~ (r1_tarski @ X12 @ X11))),
% 0.47/0.67      inference('cnf', [status(esa)], [t7_ordinal1])).
% 0.47/0.67  thf('67', plain, (~ (r1_tarski @ sk_G @ (k2_mcart_1 @ (k1_mcart_1 @ sk_I)))),
% 0.47/0.67      inference('sup-', [status(thm)], ['65', '66'])).
% 0.47/0.67  thf('68', plain,
% 0.47/0.67      (((((sk_B) = (k1_xboole_0)) | ((sk_A) = (k1_xboole_0))))
% 0.47/0.67         <= (~
% 0.47/0.67             ((r2_hidden @ 
% 0.47/0.67               (k11_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I) @ sk_H)))),
% 0.47/0.67      inference('sup-', [status(thm)], ['60', '67'])).
% 0.47/0.67  thf('69', plain,
% 0.47/0.67      (![X1 : $i, X3 : $i]:
% 0.47/0.67         ((r1_tarski @ X1 @ X3) | (r2_hidden @ (sk_C @ X3 @ X1) @ X1))),
% 0.47/0.67      inference('cnf', [status(esa)], [d3_tarski])).
% 0.47/0.67  thf('70', plain, ((m1_subset_1 @ sk_F @ (k1_zfmisc_1 @ sk_B))),
% 0.47/0.67      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.47/0.67  thf('71', plain,
% 0.47/0.67      (![X5 : $i, X6 : $i]:
% 0.47/0.67         ((r1_tarski @ X5 @ X6) | ~ (m1_subset_1 @ X5 @ (k1_zfmisc_1 @ X6)))),
% 0.47/0.67      inference('cnf', [status(esa)], [t3_subset])).
% 0.47/0.67  thf('72', plain, ((r1_tarski @ sk_F @ sk_B)),
% 0.47/0.67      inference('sup-', [status(thm)], ['70', '71'])).
% 0.47/0.67  thf('73', plain,
% 0.47/0.67      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.47/0.67         (~ (r2_hidden @ X0 @ X1)
% 0.47/0.67          | (r2_hidden @ X0 @ X2)
% 0.47/0.67          | ~ (r1_tarski @ X1 @ X2))),
% 0.47/0.67      inference('cnf', [status(esa)], [d3_tarski])).
% 0.47/0.67  thf('74', plain,
% 0.47/0.67      (![X0 : $i]: ((r2_hidden @ X0 @ sk_B) | ~ (r2_hidden @ X0 @ sk_F))),
% 0.47/0.67      inference('sup-', [status(thm)], ['72', '73'])).
% 0.47/0.67  thf('75', plain,
% 0.47/0.67      (![X0 : $i]:
% 0.47/0.67         ((r1_tarski @ sk_F @ X0) | (r2_hidden @ (sk_C @ X0 @ sk_F) @ sk_B))),
% 0.47/0.67      inference('sup-', [status(thm)], ['69', '74'])).
% 0.47/0.67  thf('76', plain,
% 0.47/0.67      (![X11 : $i, X12 : $i]:
% 0.47/0.67         (~ (r2_hidden @ X11 @ X12) | ~ (r1_tarski @ X12 @ X11))),
% 0.47/0.67      inference('cnf', [status(esa)], [t7_ordinal1])).
% 0.47/0.67  thf('77', plain,
% 0.47/0.67      (![X0 : $i]:
% 0.47/0.67         ((r1_tarski @ sk_F @ X0) | ~ (r1_tarski @ sk_B @ (sk_C @ X0 @ sk_F)))),
% 0.47/0.67      inference('sup-', [status(thm)], ['75', '76'])).
% 0.47/0.67  thf('78', plain,
% 0.47/0.67      ((![X0 : $i]:
% 0.47/0.67          (~ (r1_tarski @ k1_xboole_0 @ (sk_C @ X0 @ sk_F))
% 0.47/0.67           | ((sk_A) = (k1_xboole_0))
% 0.47/0.67           | (r1_tarski @ sk_F @ X0)))
% 0.47/0.67         <= (~
% 0.47/0.67             ((r2_hidden @ 
% 0.47/0.67               (k11_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I) @ sk_H)))),
% 0.47/0.67      inference('sup-', [status(thm)], ['68', '77'])).
% 0.47/0.67  thf('79', plain, (![X0 : $i]: (r1_tarski @ k1_xboole_0 @ X0)),
% 0.47/0.67      inference('sup-', [status(thm)], ['45', '46'])).
% 0.47/0.67  thf('80', plain,
% 0.47/0.67      ((![X0 : $i]: (((sk_A) = (k1_xboole_0)) | (r1_tarski @ sk_F @ X0)))
% 0.47/0.67         <= (~
% 0.47/0.67             ((r2_hidden @ 
% 0.47/0.67               (k11_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I) @ sk_H)))),
% 0.47/0.67      inference('demod', [status(thm)], ['78', '79'])).
% 0.47/0.67  thf('81', plain,
% 0.47/0.67      (![X1 : $i, X3 : $i]:
% 0.47/0.67         ((r1_tarski @ X1 @ X3) | (r2_hidden @ (sk_C @ X3 @ X1) @ X1))),
% 0.47/0.67      inference('cnf', [status(esa)], [d3_tarski])).
% 0.47/0.67  thf('82', plain,
% 0.47/0.67      (![X20 : $i, X21 : $i, X22 : $i]:
% 0.47/0.67         ((r2_hidden @ (k2_mcart_1 @ X20) @ X22)
% 0.47/0.67          | ~ (r2_hidden @ X20 @ (k2_zfmisc_1 @ X21 @ X22)))),
% 0.47/0.67      inference('cnf', [status(esa)], [t10_mcart_1])).
% 0.47/0.67  thf('83', plain,
% 0.47/0.67      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.47/0.67         ((r1_tarski @ (k2_zfmisc_1 @ X1 @ X0) @ X2)
% 0.47/0.67          | (r2_hidden @ 
% 0.47/0.67             (k2_mcart_1 @ (sk_C @ X2 @ (k2_zfmisc_1 @ X1 @ X0))) @ X0))),
% 0.47/0.67      inference('sup-', [status(thm)], ['81', '82'])).
% 0.47/0.67  thf('84', plain,
% 0.47/0.67      (![X11 : $i, X12 : $i]:
% 0.47/0.67         (~ (r2_hidden @ X11 @ X12) | ~ (r1_tarski @ X12 @ X11))),
% 0.47/0.67      inference('cnf', [status(esa)], [t7_ordinal1])).
% 0.47/0.67  thf('85', plain,
% 0.47/0.67      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.47/0.67         ((r1_tarski @ (k2_zfmisc_1 @ X1 @ X0) @ X2)
% 0.47/0.67          | ~ (r1_tarski @ X0 @ 
% 0.47/0.67               (k2_mcart_1 @ (sk_C @ X2 @ (k2_zfmisc_1 @ X1 @ X0)))))),
% 0.47/0.67      inference('sup-', [status(thm)], ['83', '84'])).
% 0.47/0.67  thf('86', plain,
% 0.47/0.67      ((![X0 : $i, X1 : $i]:
% 0.47/0.67          (((sk_A) = (k1_xboole_0))
% 0.47/0.67           | (r1_tarski @ (k2_zfmisc_1 @ X0 @ sk_F) @ X1)))
% 0.47/0.67         <= (~
% 0.47/0.67             ((r2_hidden @ 
% 0.47/0.67               (k11_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I) @ sk_H)))),
% 0.47/0.67      inference('sup-', [status(thm)], ['80', '85'])).
% 0.47/0.67  thf('87', plain,
% 0.47/0.67      ((r2_hidden @ (k1_mcart_1 @ (k1_mcart_1 @ sk_I)) @ 
% 0.47/0.67        (k2_zfmisc_1 @ sk_E @ sk_F))),
% 0.47/0.67      inference('sup-', [status(thm)], ['4', '7'])).
% 0.47/0.67  thf('88', plain,
% 0.47/0.67      (![X11 : $i, X12 : $i]:
% 0.47/0.67         (~ (r2_hidden @ X11 @ X12) | ~ (r1_tarski @ X12 @ X11))),
% 0.47/0.67      inference('cnf', [status(esa)], [t7_ordinal1])).
% 0.47/0.67  thf('89', plain,
% 0.47/0.67      (~ (r1_tarski @ (k2_zfmisc_1 @ sk_E @ sk_F) @ 
% 0.47/0.67          (k1_mcart_1 @ (k1_mcart_1 @ sk_I)))),
% 0.47/0.67      inference('sup-', [status(thm)], ['87', '88'])).
% 0.47/0.67  thf('90', plain,
% 0.47/0.67      ((((sk_A) = (k1_xboole_0)))
% 0.47/0.67         <= (~
% 0.47/0.67             ((r2_hidden @ 
% 0.47/0.67               (k11_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I) @ sk_H)))),
% 0.47/0.67      inference('sup-', [status(thm)], ['86', '89'])).
% 0.47/0.67  thf('91', plain,
% 0.47/0.67      (![X1 : $i, X3 : $i]:
% 0.47/0.67         ((r1_tarski @ X1 @ X3) | (r2_hidden @ (sk_C @ X3 @ X1) @ X1))),
% 0.47/0.67      inference('cnf', [status(esa)], [d3_tarski])).
% 0.47/0.67  thf('92', plain,
% 0.47/0.67      (![X0 : $i]: ((r2_hidden @ X0 @ sk_A) | ~ (r2_hidden @ X0 @ sk_E))),
% 0.47/0.67      inference('sup-', [status(thm)], ['13', '14'])).
% 0.47/0.67  thf('93', plain,
% 0.47/0.67      (![X0 : $i]:
% 0.47/0.67         ((r1_tarski @ sk_E @ X0) | (r2_hidden @ (sk_C @ X0 @ sk_E) @ sk_A))),
% 0.47/0.67      inference('sup-', [status(thm)], ['91', '92'])).
% 0.47/0.67  thf('94', plain,
% 0.47/0.67      (![X11 : $i, X12 : $i]:
% 0.47/0.67         (~ (r2_hidden @ X11 @ X12) | ~ (r1_tarski @ X12 @ X11))),
% 0.47/0.67      inference('cnf', [status(esa)], [t7_ordinal1])).
% 0.47/0.67  thf('95', plain,
% 0.47/0.67      (![X0 : $i]:
% 0.47/0.67         ((r1_tarski @ sk_E @ X0) | ~ (r1_tarski @ sk_A @ (sk_C @ X0 @ sk_E)))),
% 0.47/0.67      inference('sup-', [status(thm)], ['93', '94'])).
% 0.47/0.67  thf('96', plain,
% 0.47/0.67      ((![X0 : $i]:
% 0.47/0.67          (~ (r1_tarski @ k1_xboole_0 @ (sk_C @ X0 @ sk_E))
% 0.47/0.67           | (r1_tarski @ sk_E @ X0)))
% 0.47/0.67         <= (~
% 0.47/0.67             ((r2_hidden @ 
% 0.47/0.67               (k11_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I) @ sk_H)))),
% 0.47/0.67      inference('sup-', [status(thm)], ['90', '95'])).
% 0.47/0.67  thf('97', plain, (![X0 : $i]: (r1_tarski @ k1_xboole_0 @ X0)),
% 0.47/0.67      inference('sup-', [status(thm)], ['45', '46'])).
% 0.47/0.67  thf('98', plain,
% 0.47/0.67      ((![X0 : $i]: (r1_tarski @ sk_E @ X0))
% 0.47/0.67         <= (~
% 0.47/0.67             ((r2_hidden @ 
% 0.47/0.67               (k11_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I) @ sk_H)))),
% 0.47/0.67      inference('demod', [status(thm)], ['96', '97'])).
% 0.47/0.67  thf('99', plain,
% 0.47/0.67      ((r2_hidden @ (k1_mcart_1 @ (k1_mcart_1 @ (k1_mcart_1 @ sk_I))) @ sk_E)),
% 0.47/0.67      inference('sup-', [status(thm)], ['8', '9'])).
% 0.47/0.67  thf('100', plain,
% 0.47/0.67      (![X11 : $i, X12 : $i]:
% 0.47/0.67         (~ (r2_hidden @ X11 @ X12) | ~ (r1_tarski @ X12 @ X11))),
% 0.47/0.67      inference('cnf', [status(esa)], [t7_ordinal1])).
% 0.47/0.67  thf('101', plain,
% 0.47/0.67      (~ (r1_tarski @ sk_E @ (k1_mcart_1 @ (k1_mcart_1 @ (k1_mcart_1 @ sk_I))))),
% 0.47/0.67      inference('sup-', [status(thm)], ['99', '100'])).
% 0.47/0.67  thf('102', plain,
% 0.47/0.67      (((r2_hidden @ (k11_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I) @ sk_H))),
% 0.47/0.67      inference('sup-', [status(thm)], ['98', '101'])).
% 0.47/0.67  thf('103', plain,
% 0.47/0.67      ((m1_subset_1 @ sk_I @ (k4_zfmisc_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D))),
% 0.47/0.67      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.47/0.67  thf('104', plain,
% 0.47/0.67      (![X23 : $i, X24 : $i, X25 : $i, X26 : $i, X27 : $i]:
% 0.47/0.67         (((X23) = (k1_xboole_0))
% 0.47/0.67          | ((X24) = (k1_xboole_0))
% 0.47/0.67          | ((X25) = (k1_xboole_0))
% 0.47/0.67          | ((k10_mcart_1 @ X23 @ X24 @ X25 @ X27 @ X26)
% 0.47/0.67              = (k2_mcart_1 @ (k1_mcart_1 @ X26)))
% 0.47/0.67          | ~ (m1_subset_1 @ X26 @ (k4_zfmisc_1 @ X23 @ X24 @ X25 @ X27))
% 0.47/0.67          | ((X27) = (k1_xboole_0)))),
% 0.47/0.67      inference('cnf', [status(esa)], [t61_mcart_1])).
% 0.47/0.67  thf('105', plain,
% 0.47/0.67      ((((sk_D) = (k1_xboole_0))
% 0.47/0.67        | ((k10_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I)
% 0.47/0.67            = (k2_mcart_1 @ (k1_mcart_1 @ sk_I)))
% 0.47/0.67        | ((sk_C_1) = (k1_xboole_0))
% 0.47/0.67        | ((sk_B) = (k1_xboole_0))
% 0.47/0.67        | ((sk_A) = (k1_xboole_0)))),
% 0.47/0.67      inference('sup-', [status(thm)], ['103', '104'])).
% 0.47/0.67  thf('106', plain,
% 0.47/0.67      ((~ (r2_hidden @ (k10_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I) @ 
% 0.47/0.67           sk_G))
% 0.47/0.67         <= (~
% 0.47/0.67             ((r2_hidden @ 
% 0.47/0.67               (k10_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I) @ sk_G)))),
% 0.47/0.67      inference('split', [status(esa)], ['22'])).
% 0.47/0.67  thf('107', plain,
% 0.47/0.67      (((~ (r2_hidden @ (k2_mcart_1 @ (k1_mcart_1 @ sk_I)) @ sk_G)
% 0.47/0.67         | ((sk_A) = (k1_xboole_0))
% 0.47/0.67         | ((sk_B) = (k1_xboole_0))
% 0.47/0.67         | ((sk_C_1) = (k1_xboole_0))
% 0.47/0.67         | ((sk_D) = (k1_xboole_0))))
% 0.47/0.67         <= (~
% 0.47/0.67             ((r2_hidden @ 
% 0.47/0.67               (k10_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I) @ sk_G)))),
% 0.47/0.67      inference('sup-', [status(thm)], ['105', '106'])).
% 0.47/0.67  thf('108', plain, ((r2_hidden @ (k2_mcart_1 @ (k1_mcart_1 @ sk_I)) @ sk_G)),
% 0.47/0.67      inference('sup-', [status(thm)], ['61', '64'])).
% 0.47/0.67  thf('109', plain,
% 0.47/0.67      (((((sk_A) = (k1_xboole_0))
% 0.47/0.67         | ((sk_B) = (k1_xboole_0))
% 0.47/0.67         | ((sk_C_1) = (k1_xboole_0))
% 0.47/0.67         | ((sk_D) = (k1_xboole_0))))
% 0.47/0.67         <= (~
% 0.47/0.67             ((r2_hidden @ 
% 0.47/0.67               (k10_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I) @ sk_G)))),
% 0.47/0.67      inference('demod', [status(thm)], ['107', '108'])).
% 0.47/0.67  thf('110', plain, (~ (r1_tarski @ sk_D @ (k2_mcart_1 @ sk_I))),
% 0.47/0.67      inference('sup-', [status(thm)], ['41', '42'])).
% 0.47/0.67  thf('111', plain,
% 0.47/0.67      (((~ (r1_tarski @ k1_xboole_0 @ (k2_mcart_1 @ sk_I))
% 0.47/0.67         | ((sk_C_1) = (k1_xboole_0))
% 0.47/0.67         | ((sk_B) = (k1_xboole_0))
% 0.47/0.67         | ((sk_A) = (k1_xboole_0))))
% 0.47/0.67         <= (~
% 0.47/0.67             ((r2_hidden @ 
% 0.47/0.67               (k10_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I) @ sk_G)))),
% 0.47/0.67      inference('sup-', [status(thm)], ['109', '110'])).
% 0.47/0.67  thf('112', plain, (![X0 : $i]: (r1_tarski @ k1_xboole_0 @ X0)),
% 0.47/0.67      inference('sup-', [status(thm)], ['45', '46'])).
% 0.47/0.67  thf('113', plain,
% 0.47/0.67      (((((sk_C_1) = (k1_xboole_0))
% 0.47/0.67         | ((sk_B) = (k1_xboole_0))
% 0.47/0.67         | ((sk_A) = (k1_xboole_0))))
% 0.47/0.67         <= (~
% 0.47/0.67             ((r2_hidden @ 
% 0.47/0.67               (k10_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I) @ sk_G)))),
% 0.47/0.67      inference('demod', [status(thm)], ['111', '112'])).
% 0.47/0.67  thf('114', plain, ((r2_hidden @ (k2_mcart_1 @ (k1_mcart_1 @ sk_I)) @ sk_G)),
% 0.47/0.67      inference('sup-', [status(thm)], ['61', '64'])).
% 0.47/0.67  thf('115', plain,
% 0.47/0.67      (![X0 : $i]: ((r2_hidden @ X0 @ sk_C_1) | ~ (r2_hidden @ X0 @ sk_G))),
% 0.47/0.67      inference('sup-', [status(thm)], ['52', '53'])).
% 0.47/0.67  thf('116', plain,
% 0.47/0.67      ((r2_hidden @ (k2_mcart_1 @ (k1_mcart_1 @ sk_I)) @ sk_C_1)),
% 0.47/0.67      inference('sup-', [status(thm)], ['114', '115'])).
% 0.47/0.67  thf('117', plain,
% 0.47/0.67      (![X11 : $i, X12 : $i]:
% 0.47/0.67         (~ (r2_hidden @ X11 @ X12) | ~ (r1_tarski @ X12 @ X11))),
% 0.47/0.67      inference('cnf', [status(esa)], [t7_ordinal1])).
% 0.47/0.67  thf('118', plain,
% 0.47/0.67      (~ (r1_tarski @ sk_C_1 @ (k2_mcart_1 @ (k1_mcart_1 @ sk_I)))),
% 0.47/0.67      inference('sup-', [status(thm)], ['116', '117'])).
% 0.47/0.67  thf('119', plain,
% 0.47/0.67      (((~ (r1_tarski @ k1_xboole_0 @ (k2_mcart_1 @ (k1_mcart_1 @ sk_I)))
% 0.47/0.67         | ((sk_A) = (k1_xboole_0))
% 0.47/0.67         | ((sk_B) = (k1_xboole_0))))
% 0.47/0.67         <= (~
% 0.47/0.67             ((r2_hidden @ 
% 0.47/0.67               (k10_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I) @ sk_G)))),
% 0.47/0.67      inference('sup-', [status(thm)], ['113', '118'])).
% 0.47/0.67  thf('120', plain, (![X0 : $i]: (r1_tarski @ k1_xboole_0 @ X0)),
% 0.47/0.67      inference('sup-', [status(thm)], ['45', '46'])).
% 0.47/0.67  thf('121', plain,
% 0.47/0.67      (((((sk_A) = (k1_xboole_0)) | ((sk_B) = (k1_xboole_0))))
% 0.47/0.67         <= (~
% 0.47/0.67             ((r2_hidden @ 
% 0.47/0.67               (k10_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I) @ sk_G)))),
% 0.47/0.67      inference('demod', [status(thm)], ['119', '120'])).
% 0.47/0.67  thf('122', plain,
% 0.47/0.67      ((r2_hidden @ (k1_mcart_1 @ (k1_mcart_1 @ sk_I)) @ 
% 0.47/0.67        (k2_zfmisc_1 @ sk_E @ sk_F))),
% 0.47/0.67      inference('sup-', [status(thm)], ['4', '7'])).
% 0.47/0.67  thf('123', plain,
% 0.47/0.67      (![X20 : $i, X21 : $i, X22 : $i]:
% 0.47/0.67         ((r2_hidden @ (k2_mcart_1 @ X20) @ X22)
% 0.47/0.67          | ~ (r2_hidden @ X20 @ (k2_zfmisc_1 @ X21 @ X22)))),
% 0.47/0.67      inference('cnf', [status(esa)], [t10_mcart_1])).
% 0.47/0.67  thf('124', plain,
% 0.47/0.67      ((r2_hidden @ (k2_mcart_1 @ (k1_mcart_1 @ (k1_mcart_1 @ sk_I))) @ sk_F)),
% 0.47/0.67      inference('sup-', [status(thm)], ['122', '123'])).
% 0.47/0.67  thf('125', plain,
% 0.47/0.67      (![X0 : $i]: ((r2_hidden @ X0 @ sk_B) | ~ (r2_hidden @ X0 @ sk_F))),
% 0.47/0.67      inference('sup-', [status(thm)], ['72', '73'])).
% 0.47/0.67  thf('126', plain,
% 0.47/0.67      ((r2_hidden @ (k2_mcart_1 @ (k1_mcart_1 @ (k1_mcart_1 @ sk_I))) @ sk_B)),
% 0.47/0.67      inference('sup-', [status(thm)], ['124', '125'])).
% 0.47/0.67  thf('127', plain,
% 0.47/0.67      (![X11 : $i, X12 : $i]:
% 0.47/0.67         (~ (r2_hidden @ X11 @ X12) | ~ (r1_tarski @ X12 @ X11))),
% 0.47/0.67      inference('cnf', [status(esa)], [t7_ordinal1])).
% 0.47/0.67  thf('128', plain,
% 0.47/0.67      (~ (r1_tarski @ sk_B @ (k2_mcart_1 @ (k1_mcart_1 @ (k1_mcart_1 @ sk_I))))),
% 0.47/0.67      inference('sup-', [status(thm)], ['126', '127'])).
% 0.47/0.67  thf('129', plain,
% 0.47/0.67      (((~ (r1_tarski @ k1_xboole_0 @ 
% 0.47/0.67            (k2_mcart_1 @ (k1_mcart_1 @ (k1_mcart_1 @ sk_I))))
% 0.47/0.67         | ((sk_A) = (k1_xboole_0))))
% 0.47/0.67         <= (~
% 0.47/0.67             ((r2_hidden @ 
% 0.47/0.67               (k10_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I) @ sk_G)))),
% 0.47/0.67      inference('sup-', [status(thm)], ['121', '128'])).
% 0.47/0.67  thf('130', plain, (![X0 : $i]: (r1_tarski @ k1_xboole_0 @ X0)),
% 0.47/0.67      inference('sup-', [status(thm)], ['45', '46'])).
% 0.47/0.67  thf('131', plain,
% 0.47/0.67      ((((sk_A) = (k1_xboole_0)))
% 0.47/0.67         <= (~
% 0.47/0.67             ((r2_hidden @ 
% 0.47/0.67               (k10_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I) @ sk_G)))),
% 0.47/0.67      inference('demod', [status(thm)], ['129', '130'])).
% 0.47/0.67  thf('132', plain,
% 0.47/0.67      (~ (r1_tarski @ sk_A @ (k1_mcart_1 @ (k1_mcart_1 @ (k1_mcart_1 @ sk_I))))),
% 0.47/0.67      inference('sup-', [status(thm)], ['16', '17'])).
% 0.47/0.67  thf('133', plain,
% 0.47/0.67      ((~ (r1_tarski @ k1_xboole_0 @ 
% 0.47/0.67           (k1_mcart_1 @ (k1_mcart_1 @ (k1_mcart_1 @ sk_I)))))
% 0.47/0.67         <= (~
% 0.47/0.67             ((r2_hidden @ 
% 0.47/0.67               (k10_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I) @ sk_G)))),
% 0.47/0.67      inference('sup-', [status(thm)], ['131', '132'])).
% 0.47/0.67  thf('134', plain, (![X0 : $i]: (r1_tarski @ k1_xboole_0 @ X0)),
% 0.47/0.67      inference('sup-', [status(thm)], ['45', '46'])).
% 0.47/0.67  thf('135', plain,
% 0.47/0.67      (((r2_hidden @ (k10_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I) @ sk_G))),
% 0.47/0.67      inference('demod', [status(thm)], ['133', '134'])).
% 0.47/0.67  thf('136', plain,
% 0.47/0.67      ((m1_subset_1 @ sk_I @ (k4_zfmisc_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D))),
% 0.47/0.67      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.47/0.67  thf('137', plain,
% 0.47/0.67      (![X23 : $i, X24 : $i, X25 : $i, X26 : $i, X27 : $i]:
% 0.47/0.67         (((X23) = (k1_xboole_0))
% 0.47/0.67          | ((X24) = (k1_xboole_0))
% 0.47/0.67          | ((X25) = (k1_xboole_0))
% 0.47/0.67          | ((k9_mcart_1 @ X23 @ X24 @ X25 @ X27 @ X26)
% 0.47/0.67              = (k2_mcart_1 @ (k1_mcart_1 @ (k1_mcart_1 @ X26))))
% 0.47/0.67          | ~ (m1_subset_1 @ X26 @ (k4_zfmisc_1 @ X23 @ X24 @ X25 @ X27))
% 0.47/0.67          | ((X27) = (k1_xboole_0)))),
% 0.47/0.67      inference('cnf', [status(esa)], [t61_mcart_1])).
% 0.47/0.67  thf('138', plain,
% 0.47/0.67      ((((sk_D) = (k1_xboole_0))
% 0.47/0.67        | ((k9_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I)
% 0.47/0.67            = (k2_mcart_1 @ (k1_mcart_1 @ (k1_mcart_1 @ sk_I))))
% 0.47/0.67        | ((sk_C_1) = (k1_xboole_0))
% 0.47/0.67        | ((sk_B) = (k1_xboole_0))
% 0.47/0.67        | ((sk_A) = (k1_xboole_0)))),
% 0.47/0.67      inference('sup-', [status(thm)], ['136', '137'])).
% 0.47/0.67  thf('139', plain,
% 0.47/0.67      ((~ (r2_hidden @ (k9_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I) @ sk_F))
% 0.47/0.67         <= (~
% 0.47/0.67             ((r2_hidden @ (k9_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I) @ 
% 0.47/0.67               sk_F)))),
% 0.47/0.67      inference('split', [status(esa)], ['22'])).
% 0.47/0.67  thf('140', plain,
% 0.47/0.67      (((~ (r2_hidden @ (k2_mcart_1 @ (k1_mcart_1 @ (k1_mcart_1 @ sk_I))) @ 
% 0.47/0.67            sk_F)
% 0.47/0.67         | ((sk_A) = (k1_xboole_0))
% 0.47/0.67         | ((sk_B) = (k1_xboole_0))
% 0.47/0.67         | ((sk_C_1) = (k1_xboole_0))
% 0.47/0.67         | ((sk_D) = (k1_xboole_0))))
% 0.47/0.67         <= (~
% 0.47/0.67             ((r2_hidden @ (k9_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I) @ 
% 0.47/0.67               sk_F)))),
% 0.47/0.67      inference('sup-', [status(thm)], ['138', '139'])).
% 0.47/0.67  thf('141', plain,
% 0.47/0.67      ((r2_hidden @ (k2_mcart_1 @ (k1_mcart_1 @ (k1_mcart_1 @ sk_I))) @ sk_F)),
% 0.47/0.67      inference('sup-', [status(thm)], ['122', '123'])).
% 0.47/0.67  thf('142', plain,
% 0.47/0.67      (((((sk_A) = (k1_xboole_0))
% 0.47/0.67         | ((sk_B) = (k1_xboole_0))
% 0.47/0.67         | ((sk_C_1) = (k1_xboole_0))
% 0.47/0.67         | ((sk_D) = (k1_xboole_0))))
% 0.47/0.67         <= (~
% 0.47/0.67             ((r2_hidden @ (k9_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I) @ 
% 0.47/0.67               sk_F)))),
% 0.47/0.67      inference('demod', [status(thm)], ['140', '141'])).
% 0.47/0.67  thf('143', plain, (~ (r1_tarski @ sk_D @ (k2_mcart_1 @ sk_I))),
% 0.47/0.67      inference('sup-', [status(thm)], ['41', '42'])).
% 0.47/0.67  thf('144', plain,
% 0.47/0.67      (((~ (r1_tarski @ k1_xboole_0 @ (k2_mcart_1 @ sk_I))
% 0.47/0.67         | ((sk_C_1) = (k1_xboole_0))
% 0.47/0.67         | ((sk_B) = (k1_xboole_0))
% 0.47/0.67         | ((sk_A) = (k1_xboole_0))))
% 0.47/0.67         <= (~
% 0.47/0.67             ((r2_hidden @ (k9_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I) @ 
% 0.47/0.67               sk_F)))),
% 0.47/0.67      inference('sup-', [status(thm)], ['142', '143'])).
% 0.47/0.67  thf('145', plain, (![X0 : $i]: (r1_tarski @ k1_xboole_0 @ X0)),
% 0.47/0.67      inference('sup-', [status(thm)], ['45', '46'])).
% 0.47/0.67  thf('146', plain,
% 0.47/0.67      (((((sk_C_1) = (k1_xboole_0))
% 0.47/0.67         | ((sk_B) = (k1_xboole_0))
% 0.47/0.67         | ((sk_A) = (k1_xboole_0))))
% 0.47/0.67         <= (~
% 0.47/0.67             ((r2_hidden @ (k9_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I) @ 
% 0.47/0.67               sk_F)))),
% 0.47/0.67      inference('demod', [status(thm)], ['144', '145'])).
% 0.47/0.67  thf('147', plain,
% 0.47/0.67      (~ (r1_tarski @ sk_C_1 @ (k2_mcart_1 @ (k1_mcart_1 @ sk_I)))),
% 0.47/0.67      inference('sup-', [status(thm)], ['116', '117'])).
% 0.47/0.67  thf('148', plain,
% 0.47/0.67      (((~ (r1_tarski @ k1_xboole_0 @ (k2_mcart_1 @ (k1_mcart_1 @ sk_I)))
% 0.47/0.67         | ((sk_A) = (k1_xboole_0))
% 0.47/0.67         | ((sk_B) = (k1_xboole_0))))
% 0.47/0.67         <= (~
% 0.47/0.67             ((r2_hidden @ (k9_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I) @ 
% 0.47/0.67               sk_F)))),
% 0.47/0.67      inference('sup-', [status(thm)], ['146', '147'])).
% 0.47/0.67  thf('149', plain, (![X0 : $i]: (r1_tarski @ k1_xboole_0 @ X0)),
% 0.47/0.67      inference('sup-', [status(thm)], ['45', '46'])).
% 0.47/0.67  thf('150', plain,
% 0.47/0.67      (((((sk_A) = (k1_xboole_0)) | ((sk_B) = (k1_xboole_0))))
% 0.47/0.67         <= (~
% 0.47/0.67             ((r2_hidden @ (k9_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I) @ 
% 0.47/0.67               sk_F)))),
% 0.47/0.67      inference('demod', [status(thm)], ['148', '149'])).
% 0.47/0.67  thf('151', plain,
% 0.47/0.67      (~ (r1_tarski @ sk_B @ (k2_mcart_1 @ (k1_mcart_1 @ (k1_mcart_1 @ sk_I))))),
% 0.47/0.67      inference('sup-', [status(thm)], ['126', '127'])).
% 0.47/0.67  thf('152', plain,
% 0.47/0.67      (((~ (r1_tarski @ k1_xboole_0 @ 
% 0.47/0.67            (k2_mcart_1 @ (k1_mcart_1 @ (k1_mcart_1 @ sk_I))))
% 0.47/0.67         | ((sk_A) = (k1_xboole_0))))
% 0.47/0.67         <= (~
% 0.47/0.67             ((r2_hidden @ (k9_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I) @ 
% 0.47/0.67               sk_F)))),
% 0.47/0.67      inference('sup-', [status(thm)], ['150', '151'])).
% 0.47/0.67  thf('153', plain, (![X0 : $i]: (r1_tarski @ k1_xboole_0 @ X0)),
% 0.47/0.67      inference('sup-', [status(thm)], ['45', '46'])).
% 0.47/0.67  thf('154', plain,
% 0.47/0.67      ((((sk_A) = (k1_xboole_0)))
% 0.47/0.67         <= (~
% 0.47/0.67             ((r2_hidden @ (k9_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I) @ 
% 0.47/0.67               sk_F)))),
% 0.47/0.67      inference('demod', [status(thm)], ['152', '153'])).
% 0.47/0.67  thf('155', plain,
% 0.47/0.67      (~ (r1_tarski @ sk_A @ (k1_mcart_1 @ (k1_mcart_1 @ (k1_mcart_1 @ sk_I))))),
% 0.47/0.67      inference('sup-', [status(thm)], ['16', '17'])).
% 0.47/0.67  thf('156', plain,
% 0.47/0.67      ((~ (r1_tarski @ k1_xboole_0 @ 
% 0.47/0.67           (k1_mcart_1 @ (k1_mcart_1 @ (k1_mcart_1 @ sk_I)))))
% 0.47/0.67         <= (~
% 0.47/0.67             ((r2_hidden @ (k9_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I) @ 
% 0.47/0.67               sk_F)))),
% 0.47/0.67      inference('sup-', [status(thm)], ['154', '155'])).
% 0.47/0.67  thf('157', plain, (![X0 : $i]: (r1_tarski @ k1_xboole_0 @ X0)),
% 0.47/0.67      inference('sup-', [status(thm)], ['45', '46'])).
% 0.47/0.67  thf('158', plain,
% 0.47/0.67      (((r2_hidden @ (k9_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I) @ sk_F))),
% 0.47/0.67      inference('demod', [status(thm)], ['156', '157'])).
% 0.47/0.67  thf('159', plain,
% 0.47/0.67      (~
% 0.47/0.67       ((r2_hidden @ (k8_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I) @ sk_E)) | 
% 0.47/0.67       ~
% 0.47/0.67       ((r2_hidden @ (k9_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I) @ sk_F)) | 
% 0.47/0.67       ~
% 0.47/0.67       ((r2_hidden @ (k10_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I) @ sk_G)) | 
% 0.47/0.67       ~
% 0.47/0.67       ((r2_hidden @ (k11_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I) @ sk_H))),
% 0.47/0.67      inference('split', [status(esa)], ['22'])).
% 0.47/0.67  thf('160', plain,
% 0.47/0.67      (~
% 0.47/0.67       ((r2_hidden @ (k8_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I) @ sk_E))),
% 0.47/0.67      inference('sat_resolution*', [status(thm)], ['102', '135', '158', '159'])).
% 0.47/0.67  thf('161', plain,
% 0.47/0.67      (~ (r2_hidden @ (k8_mcart_1 @ sk_A @ sk_B @ sk_C_1 @ sk_D @ sk_I) @ sk_E)),
% 0.47/0.67      inference('simpl_trail', [status(thm)], ['23', '160'])).
% 0.47/0.67  thf('162', plain,
% 0.47/0.67      ((~ (r2_hidden @ (k1_mcart_1 @ (k1_mcart_1 @ (k1_mcart_1 @ sk_I))) @ sk_E)
% 0.47/0.67        | ((sk_A) = (k1_xboole_0))
% 0.47/0.67        | ((sk_B) = (k1_xboole_0))
% 0.47/0.67        | ((sk_C_1) = (k1_xboole_0))
% 0.47/0.67        | ((sk_D) = (k1_xboole_0)))),
% 0.47/0.67      inference('sup-', [status(thm)], ['21', '161'])).
% 0.47/0.67  thf('163', plain,
% 0.47/0.67      ((r2_hidden @ (k1_mcart_1 @ (k1_mcart_1 @ (k1_mcart_1 @ sk_I))) @ sk_E)),
% 0.47/0.67      inference('sup-', [status(thm)], ['8', '9'])).
% 0.47/0.67  thf('164', plain,
% 0.47/0.67      ((((sk_A) = (k1_xboole_0))
% 0.47/0.67        | ((sk_B) = (k1_xboole_0))
% 0.47/0.67        | ((sk_C_1) = (k1_xboole_0))
% 0.47/0.67        | ((sk_D) = (k1_xboole_0)))),
% 0.47/0.67      inference('demod', [status(thm)], ['162', '163'])).
% 0.47/0.67  thf('165', plain, (~ (r1_tarski @ sk_D @ (k2_mcart_1 @ sk_I))),
% 0.47/0.67      inference('sup-', [status(thm)], ['41', '42'])).
% 0.47/0.67  thf('166', plain,
% 0.47/0.67      ((~ (r1_tarski @ k1_xboole_0 @ (k2_mcart_1 @ sk_I))
% 0.47/0.67        | ((sk_C_1) = (k1_xboole_0))
% 0.47/0.67        | ((sk_B) = (k1_xboole_0))
% 0.47/0.67        | ((sk_A) = (k1_xboole_0)))),
% 0.47/0.67      inference('sup-', [status(thm)], ['164', '165'])).
% 0.47/0.67  thf('167', plain, (![X0 : $i]: (r1_tarski @ k1_xboole_0 @ X0)),
% 0.47/0.67      inference('sup-', [status(thm)], ['45', '46'])).
% 0.47/0.67  thf('168', plain,
% 0.47/0.67      ((((sk_C_1) = (k1_xboole_0))
% 0.47/0.67        | ((sk_B) = (k1_xboole_0))
% 0.47/0.67        | ((sk_A) = (k1_xboole_0)))),
% 0.47/0.67      inference('demod', [status(thm)], ['166', '167'])).
% 0.47/0.67  thf('169', plain,
% 0.47/0.67      (~ (r1_tarski @ sk_C_1 @ (k2_mcart_1 @ (k1_mcart_1 @ sk_I)))),
% 0.47/0.67      inference('sup-', [status(thm)], ['116', '117'])).
% 0.47/0.67  thf('170', plain,
% 0.47/0.67      ((~ (r1_tarski @ k1_xboole_0 @ (k2_mcart_1 @ (k1_mcart_1 @ sk_I)))
% 0.47/0.67        | ((sk_A) = (k1_xboole_0))
% 0.47/0.67        | ((sk_B) = (k1_xboole_0)))),
% 0.47/0.67      inference('sup-', [status(thm)], ['168', '169'])).
% 0.47/0.67  thf('171', plain, (![X0 : $i]: (r1_tarski @ k1_xboole_0 @ X0)),
% 0.47/0.67      inference('sup-', [status(thm)], ['45', '46'])).
% 0.47/0.67  thf('172', plain, ((((sk_A) = (k1_xboole_0)) | ((sk_B) = (k1_xboole_0)))),
% 0.47/0.67      inference('demod', [status(thm)], ['170', '171'])).
% 0.47/0.67  thf('173', plain,
% 0.47/0.67      (~ (r1_tarski @ sk_B @ (k2_mcart_1 @ (k1_mcart_1 @ (k1_mcart_1 @ sk_I))))),
% 0.47/0.67      inference('sup-', [status(thm)], ['126', '127'])).
% 0.47/0.67  thf('174', plain,
% 0.47/0.67      ((~ (r1_tarski @ k1_xboole_0 @ 
% 0.47/0.67           (k2_mcart_1 @ (k1_mcart_1 @ (k1_mcart_1 @ sk_I))))
% 0.47/0.67        | ((sk_A) = (k1_xboole_0)))),
% 0.47/0.67      inference('sup-', [status(thm)], ['172', '173'])).
% 0.47/0.67  thf('175', plain, (![X0 : $i]: (r1_tarski @ k1_xboole_0 @ X0)),
% 0.47/0.67      inference('sup-', [status(thm)], ['45', '46'])).
% 0.47/0.67  thf('176', plain, (((sk_A) = (k1_xboole_0))),
% 0.47/0.67      inference('demod', [status(thm)], ['174', '175'])).
% 0.47/0.67  thf('177', plain, (![X0 : $i]: (r1_tarski @ k1_xboole_0 @ X0)),
% 0.47/0.67      inference('sup-', [status(thm)], ['45', '46'])).
% 0.47/0.67  thf('178', plain, ($false),
% 0.47/0.67      inference('demod', [status(thm)], ['18', '176', '177'])).
% 0.47/0.67  
% 0.47/0.67  % SZS output end Refutation
% 0.47/0.67  
% 0.47/0.68  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
