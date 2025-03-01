%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.1N6OOyWlqh

% Computer   : n018.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:52:11 EST 2020

% Result     : Theorem 0.21s
% Output     : Refutation 0.21s
% Verified   : 
% Statistics : Number of formulae       :   85 ( 413 expanded)
%              Number of leaves         :   19 ( 135 expanded)
%              Depth                    :   14
%              Number of atoms          : 1117 (12895 expanded)
%              Number of equality atoms :  139 (1798 expanded)
%              Maximal formula depth    :   26 (   8 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k4_zfmisc_1_type,type,(
    k4_zfmisc_1: $i > $i > $i > $i > $i )).

thf(k4_mcart_1_type,type,(
    k4_mcart_1: $i > $i > $i > $i > $i )).

thf(sk_F_1_type,type,(
    sk_F_1: $i )).

thf(sk_C_type,type,(
    sk_C: $i )).

thf(sk_E_type,type,(
    sk_E: $i )).

thf(sk_D_type,type,(
    sk_D: $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(sk_F_type,type,(
    sk_F: $i > $i > $i > $i > $i > $i )).

thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(sk_I_1_type,type,(
    sk_I_1: $i > $i > $i > $i > $i > $i )).

thf(k9_mcart_1_type,type,(
    k9_mcart_1: $i > $i > $i > $i > $i > $i )).

thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(sk_H_1_type,type,(
    sk_H_1: $i > $i > $i > $i > $i > $i )).

thf(sk_G_1_type,type,(
    sk_G_1: $i > $i > $i > $i > $i > $i )).

thf(t80_mcart_1,conjecture,(
    ! [A: $i,B: $i,C: $i,D: $i,E: $i,F: $i] :
      ( ( m1_subset_1 @ F @ ( k4_zfmisc_1 @ A @ B @ C @ D ) )
     => ( ! [G: $i] :
            ( ( m1_subset_1 @ G @ A )
           => ! [H: $i] :
                ( ( m1_subset_1 @ H @ B )
               => ! [I: $i] :
                    ( ( m1_subset_1 @ I @ C )
                   => ! [J: $i] :
                        ( ( m1_subset_1 @ J @ D )
                       => ( ( F
                            = ( k4_mcart_1 @ G @ H @ I @ J ) )
                         => ( E = H ) ) ) ) ) )
       => ( ( A = k1_xboole_0 )
          | ( B = k1_xboole_0 )
          | ( C = k1_xboole_0 )
          | ( D = k1_xboole_0 )
          | ( E
            = ( k9_mcart_1 @ A @ B @ C @ D @ F ) ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i,C: $i,D: $i,E: $i,F: $i] :
        ( ( m1_subset_1 @ F @ ( k4_zfmisc_1 @ A @ B @ C @ D ) )
       => ( ! [G: $i] :
              ( ( m1_subset_1 @ G @ A )
             => ! [H: $i] :
                  ( ( m1_subset_1 @ H @ B )
                 => ! [I: $i] :
                      ( ( m1_subset_1 @ I @ C )
                     => ! [J: $i] :
                          ( ( m1_subset_1 @ J @ D )
                         => ( ( F
                              = ( k4_mcart_1 @ G @ H @ I @ J ) )
                           => ( E = H ) ) ) ) ) )
         => ( ( A = k1_xboole_0 )
            | ( B = k1_xboole_0 )
            | ( C = k1_xboole_0 )
            | ( D = k1_xboole_0 )
            | ( E
              = ( k9_mcart_1 @ A @ B @ C @ D @ F ) ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t80_mcart_1])).

thf('0',plain,(
    m1_subset_1 @ sk_F_1 @ ( k4_zfmisc_1 @ sk_A @ sk_B @ sk_C @ sk_D ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('1',plain,(
    m1_subset_1 @ sk_F_1 @ ( k4_zfmisc_1 @ sk_A @ sk_B @ sk_C @ sk_D ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(l68_mcart_1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ~ ( ( A != k1_xboole_0 )
        & ( B != k1_xboole_0 )
        & ( C != k1_xboole_0 )
        & ( D != k1_xboole_0 )
        & ? [E: $i] :
            ( ! [F: $i] :
                ( ( m1_subset_1 @ F @ A )
               => ! [G: $i] :
                    ( ( m1_subset_1 @ G @ B )
                   => ! [H: $i] :
                        ( ( m1_subset_1 @ H @ C )
                       => ! [I: $i] :
                            ( ( m1_subset_1 @ I @ D )
                           => ( E
                             != ( k4_mcart_1 @ F @ G @ H @ I ) ) ) ) ) )
            & ( m1_subset_1 @ E @ ( k4_zfmisc_1 @ A @ B @ C @ D ) ) ) ) )).

thf('2',plain,(
    ! [X29: $i,X30: $i,X31: $i,X32: $i,X33: $i] :
      ( ( X29 = k1_xboole_0 )
      | ( X30 = k1_xboole_0 )
      | ( X31 = k1_xboole_0 )
      | ( X32
        = ( k4_mcart_1 @ ( sk_F @ X32 @ X33 @ X31 @ X30 @ X29 ) @ ( sk_G_1 @ X32 @ X33 @ X31 @ X30 @ X29 ) @ ( sk_H_1 @ X32 @ X33 @ X31 @ X30 @ X29 ) @ ( sk_I_1 @ X32 @ X33 @ X31 @ X30 @ X29 ) ) )
      | ~ ( m1_subset_1 @ X32 @ ( k4_zfmisc_1 @ X29 @ X30 @ X31 @ X33 ) )
      | ( X33 = k1_xboole_0 ) ) ),
    inference(cnf,[status(esa)],[l68_mcart_1])).

thf('3',plain,
    ( ( sk_D = k1_xboole_0 )
    | ( sk_F_1
      = ( k4_mcart_1 @ ( sk_F @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A ) @ ( sk_G_1 @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A ) @ ( sk_H_1 @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A ) @ ( sk_I_1 @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A ) ) )
    | ( sk_C = k1_xboole_0 )
    | ( sk_B = k1_xboole_0 )
    | ( sk_A = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['1','2'])).

thf('4',plain,(
    sk_A != k1_xboole_0 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('5',plain,(
    sk_B != k1_xboole_0 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('6',plain,(
    sk_C != k1_xboole_0 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('7',plain,(
    sk_D != k1_xboole_0 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('8',plain,
    ( sk_F_1
    = ( k4_mcart_1 @ ( sk_F @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A ) @ ( sk_G_1 @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A ) @ ( sk_H_1 @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A ) @ ( sk_I_1 @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A ) ) ),
    inference('simplify_reflect-',[status(thm)],['3','4','5','6','7'])).

thf('9',plain,
    ( sk_F_1
    = ( k4_mcart_1 @ ( sk_F @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A ) @ ( sk_G_1 @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A ) @ ( sk_H_1 @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A ) @ ( sk_I_1 @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A ) ) ),
    inference('simplify_reflect-',[status(thm)],['3','4','5','6','7'])).

thf('10',plain,(
    m1_subset_1 @ sk_F_1 @ ( k4_zfmisc_1 @ sk_A @ sk_B @ sk_C @ sk_D ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('11',plain,(
    ! [X29: $i,X30: $i,X31: $i,X32: $i,X33: $i] :
      ( ( X29 = k1_xboole_0 )
      | ( X30 = k1_xboole_0 )
      | ( X31 = k1_xboole_0 )
      | ( m1_subset_1 @ ( sk_G_1 @ X32 @ X33 @ X31 @ X30 @ X29 ) @ X30 )
      | ~ ( m1_subset_1 @ X32 @ ( k4_zfmisc_1 @ X29 @ X30 @ X31 @ X33 ) )
      | ( X33 = k1_xboole_0 ) ) ),
    inference(cnf,[status(esa)],[l68_mcart_1])).

thf('12',plain,
    ( ( sk_D = k1_xboole_0 )
    | ( m1_subset_1 @ ( sk_G_1 @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A ) @ sk_B )
    | ( sk_C = k1_xboole_0 )
    | ( sk_B = k1_xboole_0 )
    | ( sk_A = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['10','11'])).

thf('13',plain,(
    sk_A != k1_xboole_0 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('14',plain,(
    sk_B != k1_xboole_0 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('15',plain,(
    sk_C != k1_xboole_0 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('16',plain,(
    sk_D != k1_xboole_0 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('17',plain,(
    m1_subset_1 @ ( sk_G_1 @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A ) @ sk_B ),
    inference('simplify_reflect-',[status(thm)],['12','13','14','15','16'])).

thf('18',plain,(
    ! [X34: $i,X35: $i,X36: $i,X37: $i] :
      ( ~ ( m1_subset_1 @ X34 @ sk_B )
      | ~ ( m1_subset_1 @ X35 @ sk_D )
      | ( sk_F_1
       != ( k4_mcart_1 @ X36 @ X34 @ X37 @ X35 ) )
      | ( sk_E = X34 )
      | ~ ( m1_subset_1 @ X37 @ sk_C )
      | ~ ( m1_subset_1 @ X36 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('19',plain,(
    ! [X0: $i,X1: $i,X2: $i] :
      ( ~ ( m1_subset_1 @ X0 @ sk_A )
      | ~ ( m1_subset_1 @ X1 @ sk_C )
      | ( sk_E
        = ( sk_G_1 @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A ) )
      | ( sk_F_1
       != ( k4_mcart_1 @ X0 @ ( sk_G_1 @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A ) @ X1 @ X2 ) )
      | ~ ( m1_subset_1 @ X2 @ sk_D ) ) ),
    inference('sup-',[status(thm)],['17','18'])).

thf('20',plain,
    ( ( sk_F_1 != sk_F_1 )
    | ~ ( m1_subset_1 @ ( sk_I_1 @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A ) @ sk_D )
    | ( sk_E
      = ( sk_G_1 @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A ) )
    | ~ ( m1_subset_1 @ ( sk_H_1 @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A ) @ sk_C )
    | ~ ( m1_subset_1 @ ( sk_F @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A ) @ sk_A ) ),
    inference('sup-',[status(thm)],['9','19'])).

thf('21',plain,(
    m1_subset_1 @ sk_F_1 @ ( k4_zfmisc_1 @ sk_A @ sk_B @ sk_C @ sk_D ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('22',plain,(
    ! [X29: $i,X30: $i,X31: $i,X32: $i,X33: $i] :
      ( ( X29 = k1_xboole_0 )
      | ( X30 = k1_xboole_0 )
      | ( X31 = k1_xboole_0 )
      | ( m1_subset_1 @ ( sk_I_1 @ X32 @ X33 @ X31 @ X30 @ X29 ) @ X33 )
      | ~ ( m1_subset_1 @ X32 @ ( k4_zfmisc_1 @ X29 @ X30 @ X31 @ X33 ) )
      | ( X33 = k1_xboole_0 ) ) ),
    inference(cnf,[status(esa)],[l68_mcart_1])).

thf('23',plain,
    ( ( sk_D = k1_xboole_0 )
    | ( m1_subset_1 @ ( sk_I_1 @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A ) @ sk_D )
    | ( sk_C = k1_xboole_0 )
    | ( sk_B = k1_xboole_0 )
    | ( sk_A = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['21','22'])).

thf('24',plain,(
    sk_A != k1_xboole_0 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('25',plain,(
    sk_B != k1_xboole_0 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('26',plain,(
    sk_C != k1_xboole_0 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('27',plain,(
    sk_D != k1_xboole_0 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('28',plain,(
    m1_subset_1 @ ( sk_I_1 @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A ) @ sk_D ),
    inference('simplify_reflect-',[status(thm)],['23','24','25','26','27'])).

thf('29',plain,(
    m1_subset_1 @ sk_F_1 @ ( k4_zfmisc_1 @ sk_A @ sk_B @ sk_C @ sk_D ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('30',plain,(
    ! [X29: $i,X30: $i,X31: $i,X32: $i,X33: $i] :
      ( ( X29 = k1_xboole_0 )
      | ( X30 = k1_xboole_0 )
      | ( X31 = k1_xboole_0 )
      | ( m1_subset_1 @ ( sk_H_1 @ X32 @ X33 @ X31 @ X30 @ X29 ) @ X31 )
      | ~ ( m1_subset_1 @ X32 @ ( k4_zfmisc_1 @ X29 @ X30 @ X31 @ X33 ) )
      | ( X33 = k1_xboole_0 ) ) ),
    inference(cnf,[status(esa)],[l68_mcart_1])).

thf('31',plain,
    ( ( sk_D = k1_xboole_0 )
    | ( m1_subset_1 @ ( sk_H_1 @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A ) @ sk_C )
    | ( sk_C = k1_xboole_0 )
    | ( sk_B = k1_xboole_0 )
    | ( sk_A = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['29','30'])).

thf('32',plain,(
    sk_A != k1_xboole_0 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('33',plain,(
    sk_B != k1_xboole_0 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('34',plain,(
    sk_C != k1_xboole_0 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('35',plain,(
    sk_D != k1_xboole_0 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('36',plain,(
    m1_subset_1 @ ( sk_H_1 @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A ) @ sk_C ),
    inference('simplify_reflect-',[status(thm)],['31','32','33','34','35'])).

thf('37',plain,(
    m1_subset_1 @ sk_F_1 @ ( k4_zfmisc_1 @ sk_A @ sk_B @ sk_C @ sk_D ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('38',plain,(
    ! [X29: $i,X30: $i,X31: $i,X32: $i,X33: $i] :
      ( ( X29 = k1_xboole_0 )
      | ( X30 = k1_xboole_0 )
      | ( X31 = k1_xboole_0 )
      | ( m1_subset_1 @ ( sk_F @ X32 @ X33 @ X31 @ X30 @ X29 ) @ X29 )
      | ~ ( m1_subset_1 @ X32 @ ( k4_zfmisc_1 @ X29 @ X30 @ X31 @ X33 ) )
      | ( X33 = k1_xboole_0 ) ) ),
    inference(cnf,[status(esa)],[l68_mcart_1])).

thf('39',plain,
    ( ( sk_D = k1_xboole_0 )
    | ( m1_subset_1 @ ( sk_F @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A ) @ sk_A )
    | ( sk_C = k1_xboole_0 )
    | ( sk_B = k1_xboole_0 )
    | ( sk_A = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['37','38'])).

thf('40',plain,(
    sk_A != k1_xboole_0 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('41',plain,(
    sk_B != k1_xboole_0 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('42',plain,(
    sk_C != k1_xboole_0 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('43',plain,(
    sk_D != k1_xboole_0 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('44',plain,(
    m1_subset_1 @ ( sk_F @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A ) @ sk_A ),
    inference('simplify_reflect-',[status(thm)],['39','40','41','42','43'])).

thf('45',plain,
    ( ( sk_F_1 != sk_F_1 )
    | ( sk_E
      = ( sk_G_1 @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A ) ) ),
    inference(demod,[status(thm)],['20','28','36','44'])).

thf('46',plain,
    ( sk_E
    = ( sk_G_1 @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A ) ),
    inference(simplify,[status(thm)],['45'])).

thf('47',plain,
    ( sk_F_1
    = ( k4_mcart_1 @ ( sk_F @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A ) @ sk_E @ ( sk_H_1 @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A ) @ ( sk_I_1 @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A ) ) ),
    inference(demod,[status(thm)],['8','46'])).

thf(d9_mcart_1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i] :
      ~ ( ( A != k1_xboole_0 )
        & ( B != k1_xboole_0 )
        & ( C != k1_xboole_0 )
        & ( D != k1_xboole_0 )
        & ~ ! [E: $i] :
              ( ( m1_subset_1 @ E @ ( k4_zfmisc_1 @ A @ B @ C @ D ) )
             => ! [F: $i] :
                  ( ( m1_subset_1 @ F @ B )
                 => ( ( F
                      = ( k9_mcart_1 @ A @ B @ C @ D @ E ) )
                  <=> ! [G: $i,H: $i,I: $i,J: $i] :
                        ( ( E
                          = ( k4_mcart_1 @ G @ H @ I @ J ) )
                       => ( F = H ) ) ) ) ) ) )).

thf('48',plain,(
    ! [X14: $i,X15: $i,X16: $i,X17: $i,X18: $i,X19: $i,X20: $i,X21: $i,X22: $i,X23: $i] :
      ( ( X14 = k1_xboole_0 )
      | ( X15 = k1_xboole_0 )
      | ( X16 = k1_xboole_0 )
      | ~ ( m1_subset_1 @ X17 @ X15 )
      | ( X17
       != ( k9_mcart_1 @ X14 @ X15 @ X16 @ X19 @ X18 ) )
      | ( X17 = X20 )
      | ( X18
       != ( k4_mcart_1 @ X21 @ X20 @ X22 @ X23 ) )
      | ~ ( m1_subset_1 @ X18 @ ( k4_zfmisc_1 @ X14 @ X15 @ X16 @ X19 ) )
      | ( X19 = k1_xboole_0 ) ) ),
    inference(cnf,[status(esa)],[d9_mcart_1])).

thf('49',plain,(
    ! [X14: $i,X15: $i,X16: $i,X19: $i,X20: $i,X21: $i,X22: $i,X23: $i] :
      ( ( X19 = k1_xboole_0 )
      | ~ ( m1_subset_1 @ ( k4_mcart_1 @ X21 @ X20 @ X22 @ X23 ) @ ( k4_zfmisc_1 @ X14 @ X15 @ X16 @ X19 ) )
      | ( ( k9_mcart_1 @ X14 @ X15 @ X16 @ X19 @ ( k4_mcart_1 @ X21 @ X20 @ X22 @ X23 ) )
        = X20 )
      | ~ ( m1_subset_1 @ ( k9_mcart_1 @ X14 @ X15 @ X16 @ X19 @ ( k4_mcart_1 @ X21 @ X20 @ X22 @ X23 ) ) @ X15 )
      | ( X16 = k1_xboole_0 )
      | ( X15 = k1_xboole_0 )
      | ( X14 = k1_xboole_0 ) ) ),
    inference(simplify,[status(thm)],['48'])).

thf('50',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i] :
      ( ~ ( m1_subset_1 @ sk_F_1 @ ( k4_zfmisc_1 @ X3 @ X2 @ X1 @ X0 ) )
      | ( X3 = k1_xboole_0 )
      | ( X2 = k1_xboole_0 )
      | ( X1 = k1_xboole_0 )
      | ~ ( m1_subset_1 @ ( k9_mcart_1 @ X3 @ X2 @ X1 @ X0 @ ( k4_mcart_1 @ ( sk_F @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A ) @ sk_E @ ( sk_H_1 @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A ) @ ( sk_I_1 @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A ) ) ) @ X2 )
      | ( ( k9_mcart_1 @ X3 @ X2 @ X1 @ X0 @ ( k4_mcart_1 @ ( sk_F @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A ) @ sk_E @ ( sk_H_1 @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A ) @ ( sk_I_1 @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A ) ) )
        = sk_E )
      | ( X0 = k1_xboole_0 ) ) ),
    inference('sup-',[status(thm)],['47','49'])).

thf('51',plain,
    ( sk_F_1
    = ( k4_mcart_1 @ ( sk_F @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A ) @ sk_E @ ( sk_H_1 @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A ) @ ( sk_I_1 @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A ) ) ),
    inference(demod,[status(thm)],['8','46'])).

thf('52',plain,
    ( sk_F_1
    = ( k4_mcart_1 @ ( sk_F @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A ) @ sk_E @ ( sk_H_1 @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A ) @ ( sk_I_1 @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A ) ) ),
    inference(demod,[status(thm)],['8','46'])).

thf('53',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i] :
      ( ~ ( m1_subset_1 @ sk_F_1 @ ( k4_zfmisc_1 @ X3 @ X2 @ X1 @ X0 ) )
      | ( X3 = k1_xboole_0 )
      | ( X2 = k1_xboole_0 )
      | ( X1 = k1_xboole_0 )
      | ~ ( m1_subset_1 @ ( k9_mcart_1 @ X3 @ X2 @ X1 @ X0 @ sk_F_1 ) @ X2 )
      | ( ( k9_mcart_1 @ X3 @ X2 @ X1 @ X0 @ sk_F_1 )
        = sk_E )
      | ( X0 = k1_xboole_0 ) ) ),
    inference(demod,[status(thm)],['50','51','52'])).

thf('54',plain,
    ( ( sk_D = k1_xboole_0 )
    | ( ( k9_mcart_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_F_1 )
      = sk_E )
    | ~ ( m1_subset_1 @ ( k9_mcart_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_F_1 ) @ sk_B )
    | ( sk_C = k1_xboole_0 )
    | ( sk_B = k1_xboole_0 )
    | ( sk_A = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['0','53'])).

thf('55',plain,(
    m1_subset_1 @ sk_F_1 @ ( k4_zfmisc_1 @ sk_A @ sk_B @ sk_C @ sk_D ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(dt_k9_mcart_1,axiom,(
    ! [A: $i,B: $i,C: $i,D: $i,E: $i] :
      ( ( m1_subset_1 @ E @ ( k4_zfmisc_1 @ A @ B @ C @ D ) )
     => ( m1_subset_1 @ ( k9_mcart_1 @ A @ B @ C @ D @ E ) @ B ) ) )).

thf('56',plain,(
    ! [X24: $i,X25: $i,X26: $i,X27: $i,X28: $i] :
      ( ( m1_subset_1 @ ( k9_mcart_1 @ X24 @ X25 @ X26 @ X27 @ X28 ) @ X25 )
      | ~ ( m1_subset_1 @ X28 @ ( k4_zfmisc_1 @ X24 @ X25 @ X26 @ X27 ) ) ) ),
    inference(cnf,[status(esa)],[dt_k9_mcart_1])).

thf('57',plain,(
    m1_subset_1 @ ( k9_mcart_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_F_1 ) @ sk_B ),
    inference('sup-',[status(thm)],['55','56'])).

thf('58',plain,
    ( ( sk_D = k1_xboole_0 )
    | ( ( k9_mcart_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_F_1 )
      = sk_E )
    | ( sk_C = k1_xboole_0 )
    | ( sk_B = k1_xboole_0 )
    | ( sk_A = k1_xboole_0 ) ),
    inference(demod,[status(thm)],['54','57'])).

thf('59',plain,(
    sk_A != k1_xboole_0 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('60',plain,(
    sk_B != k1_xboole_0 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('61',plain,(
    sk_C != k1_xboole_0 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('62',plain,(
    sk_E
 != ( k9_mcart_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_F_1 ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('63',plain,(
    sk_D != k1_xboole_0 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('64',plain,(
    $false ),
    inference('simplify_reflect-',[status(thm)],['58','59','60','61','62','63'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.1N6OOyWlqh
% 0.13/0.34  % Computer   : n018.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 10:40:42 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running portfolio for 600 s
% 0.13/0.34  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.13/0.34  % Number of cores: 8
% 0.13/0.35  % Python version: Python 3.6.8
% 0.13/0.35  % Running in FO mode
% 0.21/0.53  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.21/0.53  % Solved by: fo/fo7.sh
% 0.21/0.53  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.21/0.53  % done 82 iterations in 0.074s
% 0.21/0.53  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.21/0.53  % SZS output start Refutation
% 0.21/0.53  thf(k4_zfmisc_1_type, type, k4_zfmisc_1: $i > $i > $i > $i > $i).
% 0.21/0.53  thf(k4_mcart_1_type, type, k4_mcart_1: $i > $i > $i > $i > $i).
% 0.21/0.53  thf(sk_F_1_type, type, sk_F_1: $i).
% 0.21/0.53  thf(sk_C_type, type, sk_C: $i).
% 0.21/0.53  thf(sk_E_type, type, sk_E: $i).
% 0.21/0.53  thf(sk_D_type, type, sk_D: $i).
% 0.21/0.53  thf(sk_A_type, type, sk_A: $i).
% 0.21/0.53  thf(sk_B_type, type, sk_B: $i).
% 0.21/0.53  thf(sk_F_type, type, sk_F: $i > $i > $i > $i > $i > $i).
% 0.21/0.53  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 0.21/0.53  thf(sk_I_1_type, type, sk_I_1: $i > $i > $i > $i > $i > $i).
% 0.21/0.53  thf(k9_mcart_1_type, type, k9_mcart_1: $i > $i > $i > $i > $i > $i).
% 0.21/0.53  thf(m1_subset_1_type, type, m1_subset_1: $i > $i > $o).
% 0.21/0.53  thf(sk_H_1_type, type, sk_H_1: $i > $i > $i > $i > $i > $i).
% 0.21/0.53  thf(sk_G_1_type, type, sk_G_1: $i > $i > $i > $i > $i > $i).
% 0.21/0.53  thf(t80_mcart_1, conjecture,
% 0.21/0.53    (![A:$i,B:$i,C:$i,D:$i,E:$i,F:$i]:
% 0.21/0.53     ( ( m1_subset_1 @ F @ ( k4_zfmisc_1 @ A @ B @ C @ D ) ) =>
% 0.21/0.53       ( ( ![G:$i]:
% 0.21/0.53           ( ( m1_subset_1 @ G @ A ) =>
% 0.21/0.53             ( ![H:$i]:
% 0.21/0.53               ( ( m1_subset_1 @ H @ B ) =>
% 0.21/0.53                 ( ![I:$i]:
% 0.21/0.53                   ( ( m1_subset_1 @ I @ C ) =>
% 0.21/0.53                     ( ![J:$i]:
% 0.21/0.53                       ( ( m1_subset_1 @ J @ D ) =>
% 0.21/0.53                         ( ( ( F ) = ( k4_mcart_1 @ G @ H @ I @ J ) ) =>
% 0.21/0.53                           ( ( E ) = ( H ) ) ) ) ) ) ) ) ) ) ) =>
% 0.21/0.53         ( ( ( A ) = ( k1_xboole_0 ) ) | ( ( B ) = ( k1_xboole_0 ) ) | 
% 0.21/0.53           ( ( C ) = ( k1_xboole_0 ) ) | ( ( D ) = ( k1_xboole_0 ) ) | 
% 0.21/0.53           ( ( E ) = ( k9_mcart_1 @ A @ B @ C @ D @ F ) ) ) ) ))).
% 0.21/0.53  thf(zf_stmt_0, negated_conjecture,
% 0.21/0.53    (~( ![A:$i,B:$i,C:$i,D:$i,E:$i,F:$i]:
% 0.21/0.53        ( ( m1_subset_1 @ F @ ( k4_zfmisc_1 @ A @ B @ C @ D ) ) =>
% 0.21/0.53          ( ( ![G:$i]:
% 0.21/0.53              ( ( m1_subset_1 @ G @ A ) =>
% 0.21/0.53                ( ![H:$i]:
% 0.21/0.53                  ( ( m1_subset_1 @ H @ B ) =>
% 0.21/0.53                    ( ![I:$i]:
% 0.21/0.53                      ( ( m1_subset_1 @ I @ C ) =>
% 0.21/0.53                        ( ![J:$i]:
% 0.21/0.53                          ( ( m1_subset_1 @ J @ D ) =>
% 0.21/0.53                            ( ( ( F ) = ( k4_mcart_1 @ G @ H @ I @ J ) ) =>
% 0.21/0.53                              ( ( E ) = ( H ) ) ) ) ) ) ) ) ) ) ) =>
% 0.21/0.53            ( ( ( A ) = ( k1_xboole_0 ) ) | ( ( B ) = ( k1_xboole_0 ) ) | 
% 0.21/0.53              ( ( C ) = ( k1_xboole_0 ) ) | ( ( D ) = ( k1_xboole_0 ) ) | 
% 0.21/0.53              ( ( E ) = ( k9_mcart_1 @ A @ B @ C @ D @ F ) ) ) ) ) )),
% 0.21/0.53    inference('cnf.neg', [status(esa)], [t80_mcart_1])).
% 0.21/0.53  thf('0', plain,
% 0.21/0.53      ((m1_subset_1 @ sk_F_1 @ (k4_zfmisc_1 @ sk_A @ sk_B @ sk_C @ sk_D))),
% 0.21/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.53  thf('1', plain,
% 0.21/0.53      ((m1_subset_1 @ sk_F_1 @ (k4_zfmisc_1 @ sk_A @ sk_B @ sk_C @ sk_D))),
% 0.21/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.53  thf(l68_mcart_1, axiom,
% 0.21/0.53    (![A:$i,B:$i,C:$i,D:$i]:
% 0.21/0.53     ( ~( ( ( A ) != ( k1_xboole_0 ) ) & ( ( B ) != ( k1_xboole_0 ) ) & 
% 0.21/0.53          ( ( C ) != ( k1_xboole_0 ) ) & ( ( D ) != ( k1_xboole_0 ) ) & 
% 0.21/0.53          ( ?[E:$i]:
% 0.21/0.53            ( ( ![F:$i]:
% 0.21/0.53                ( ( m1_subset_1 @ F @ A ) =>
% 0.21/0.53                  ( ![G:$i]:
% 0.21/0.53                    ( ( m1_subset_1 @ G @ B ) =>
% 0.21/0.53                      ( ![H:$i]:
% 0.21/0.53                        ( ( m1_subset_1 @ H @ C ) =>
% 0.21/0.53                          ( ![I:$i]:
% 0.21/0.53                            ( ( m1_subset_1 @ I @ D ) =>
% 0.21/0.53                              ( ( E ) != ( k4_mcart_1 @ F @ G @ H @ I ) ) ) ) ) ) ) ) ) ) & 
% 0.21/0.53              ( m1_subset_1 @ E @ ( k4_zfmisc_1 @ A @ B @ C @ D ) ) ) ) ) ))).
% 0.21/0.53  thf('2', plain,
% 0.21/0.53      (![X29 : $i, X30 : $i, X31 : $i, X32 : $i, X33 : $i]:
% 0.21/0.53         (((X29) = (k1_xboole_0))
% 0.21/0.53          | ((X30) = (k1_xboole_0))
% 0.21/0.53          | ((X31) = (k1_xboole_0))
% 0.21/0.53          | ((X32)
% 0.21/0.53              = (k4_mcart_1 @ (sk_F @ X32 @ X33 @ X31 @ X30 @ X29) @ 
% 0.21/0.53                 (sk_G_1 @ X32 @ X33 @ X31 @ X30 @ X29) @ 
% 0.21/0.53                 (sk_H_1 @ X32 @ X33 @ X31 @ X30 @ X29) @ 
% 0.21/0.53                 (sk_I_1 @ X32 @ X33 @ X31 @ X30 @ X29)))
% 0.21/0.53          | ~ (m1_subset_1 @ X32 @ (k4_zfmisc_1 @ X29 @ X30 @ X31 @ X33))
% 0.21/0.53          | ((X33) = (k1_xboole_0)))),
% 0.21/0.53      inference('cnf', [status(esa)], [l68_mcart_1])).
% 0.21/0.53  thf('3', plain,
% 0.21/0.53      ((((sk_D) = (k1_xboole_0))
% 0.21/0.53        | ((sk_F_1)
% 0.21/0.53            = (k4_mcart_1 @ (sk_F @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A) @ 
% 0.21/0.53               (sk_G_1 @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A) @ 
% 0.21/0.53               (sk_H_1 @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A) @ 
% 0.21/0.53               (sk_I_1 @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A)))
% 0.21/0.53        | ((sk_C) = (k1_xboole_0))
% 0.21/0.53        | ((sk_B) = (k1_xboole_0))
% 0.21/0.53        | ((sk_A) = (k1_xboole_0)))),
% 0.21/0.53      inference('sup-', [status(thm)], ['1', '2'])).
% 0.21/0.53  thf('4', plain, (((sk_A) != (k1_xboole_0))),
% 0.21/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.53  thf('5', plain, (((sk_B) != (k1_xboole_0))),
% 0.21/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.53  thf('6', plain, (((sk_C) != (k1_xboole_0))),
% 0.21/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.53  thf('7', plain, (((sk_D) != (k1_xboole_0))),
% 0.21/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.53  thf('8', plain,
% 0.21/0.53      (((sk_F_1)
% 0.21/0.53         = (k4_mcart_1 @ (sk_F @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A) @ 
% 0.21/0.53            (sk_G_1 @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A) @ 
% 0.21/0.53            (sk_H_1 @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A) @ 
% 0.21/0.53            (sk_I_1 @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A)))),
% 0.21/0.53      inference('simplify_reflect-', [status(thm)], ['3', '4', '5', '6', '7'])).
% 0.21/0.53  thf('9', plain,
% 0.21/0.53      (((sk_F_1)
% 0.21/0.53         = (k4_mcart_1 @ (sk_F @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A) @ 
% 0.21/0.53            (sk_G_1 @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A) @ 
% 0.21/0.53            (sk_H_1 @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A) @ 
% 0.21/0.53            (sk_I_1 @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A)))),
% 0.21/0.53      inference('simplify_reflect-', [status(thm)], ['3', '4', '5', '6', '7'])).
% 0.21/0.53  thf('10', plain,
% 0.21/0.53      ((m1_subset_1 @ sk_F_1 @ (k4_zfmisc_1 @ sk_A @ sk_B @ sk_C @ sk_D))),
% 0.21/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.53  thf('11', plain,
% 0.21/0.53      (![X29 : $i, X30 : $i, X31 : $i, X32 : $i, X33 : $i]:
% 0.21/0.53         (((X29) = (k1_xboole_0))
% 0.21/0.53          | ((X30) = (k1_xboole_0))
% 0.21/0.53          | ((X31) = (k1_xboole_0))
% 0.21/0.53          | (m1_subset_1 @ (sk_G_1 @ X32 @ X33 @ X31 @ X30 @ X29) @ X30)
% 0.21/0.53          | ~ (m1_subset_1 @ X32 @ (k4_zfmisc_1 @ X29 @ X30 @ X31 @ X33))
% 0.21/0.53          | ((X33) = (k1_xboole_0)))),
% 0.21/0.53      inference('cnf', [status(esa)], [l68_mcart_1])).
% 0.21/0.53  thf('12', plain,
% 0.21/0.53      ((((sk_D) = (k1_xboole_0))
% 0.21/0.53        | (m1_subset_1 @ (sk_G_1 @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A) @ sk_B)
% 0.21/0.53        | ((sk_C) = (k1_xboole_0))
% 0.21/0.53        | ((sk_B) = (k1_xboole_0))
% 0.21/0.53        | ((sk_A) = (k1_xboole_0)))),
% 0.21/0.53      inference('sup-', [status(thm)], ['10', '11'])).
% 0.21/0.53  thf('13', plain, (((sk_A) != (k1_xboole_0))),
% 0.21/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.53  thf('14', plain, (((sk_B) != (k1_xboole_0))),
% 0.21/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.53  thf('15', plain, (((sk_C) != (k1_xboole_0))),
% 0.21/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.53  thf('16', plain, (((sk_D) != (k1_xboole_0))),
% 0.21/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.53  thf('17', plain,
% 0.21/0.53      ((m1_subset_1 @ (sk_G_1 @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A) @ sk_B)),
% 0.21/0.53      inference('simplify_reflect-', [status(thm)],
% 0.21/0.53                ['12', '13', '14', '15', '16'])).
% 0.21/0.53  thf('18', plain,
% 0.21/0.53      (![X34 : $i, X35 : $i, X36 : $i, X37 : $i]:
% 0.21/0.53         (~ (m1_subset_1 @ X34 @ sk_B)
% 0.21/0.53          | ~ (m1_subset_1 @ X35 @ sk_D)
% 0.21/0.53          | ((sk_F_1) != (k4_mcart_1 @ X36 @ X34 @ X37 @ X35))
% 0.21/0.53          | ((sk_E) = (X34))
% 0.21/0.53          | ~ (m1_subset_1 @ X37 @ sk_C)
% 0.21/0.53          | ~ (m1_subset_1 @ X36 @ sk_A))),
% 0.21/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.53  thf('19', plain,
% 0.21/0.53      (![X0 : $i, X1 : $i, X2 : $i]:
% 0.21/0.53         (~ (m1_subset_1 @ X0 @ sk_A)
% 0.21/0.53          | ~ (m1_subset_1 @ X1 @ sk_C)
% 0.21/0.53          | ((sk_E) = (sk_G_1 @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A))
% 0.21/0.53          | ((sk_F_1)
% 0.21/0.53              != (k4_mcart_1 @ X0 @ 
% 0.21/0.53                  (sk_G_1 @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A) @ X1 @ X2))
% 0.21/0.53          | ~ (m1_subset_1 @ X2 @ sk_D))),
% 0.21/0.53      inference('sup-', [status(thm)], ['17', '18'])).
% 0.21/0.53  thf('20', plain,
% 0.21/0.53      ((((sk_F_1) != (sk_F_1))
% 0.21/0.53        | ~ (m1_subset_1 @ (sk_I_1 @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A) @ sk_D)
% 0.21/0.53        | ((sk_E) = (sk_G_1 @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A))
% 0.21/0.53        | ~ (m1_subset_1 @ (sk_H_1 @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A) @ sk_C)
% 0.21/0.53        | ~ (m1_subset_1 @ (sk_F @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A) @ sk_A))),
% 0.21/0.53      inference('sup-', [status(thm)], ['9', '19'])).
% 0.21/0.53  thf('21', plain,
% 0.21/0.53      ((m1_subset_1 @ sk_F_1 @ (k4_zfmisc_1 @ sk_A @ sk_B @ sk_C @ sk_D))),
% 0.21/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.53  thf('22', plain,
% 0.21/0.53      (![X29 : $i, X30 : $i, X31 : $i, X32 : $i, X33 : $i]:
% 0.21/0.53         (((X29) = (k1_xboole_0))
% 0.21/0.53          | ((X30) = (k1_xboole_0))
% 0.21/0.53          | ((X31) = (k1_xboole_0))
% 0.21/0.53          | (m1_subset_1 @ (sk_I_1 @ X32 @ X33 @ X31 @ X30 @ X29) @ X33)
% 0.21/0.53          | ~ (m1_subset_1 @ X32 @ (k4_zfmisc_1 @ X29 @ X30 @ X31 @ X33))
% 0.21/0.53          | ((X33) = (k1_xboole_0)))),
% 0.21/0.53      inference('cnf', [status(esa)], [l68_mcart_1])).
% 0.21/0.53  thf('23', plain,
% 0.21/0.53      ((((sk_D) = (k1_xboole_0))
% 0.21/0.53        | (m1_subset_1 @ (sk_I_1 @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A) @ sk_D)
% 0.21/0.53        | ((sk_C) = (k1_xboole_0))
% 0.21/0.53        | ((sk_B) = (k1_xboole_0))
% 0.21/0.53        | ((sk_A) = (k1_xboole_0)))),
% 0.21/0.53      inference('sup-', [status(thm)], ['21', '22'])).
% 0.21/0.53  thf('24', plain, (((sk_A) != (k1_xboole_0))),
% 0.21/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.53  thf('25', plain, (((sk_B) != (k1_xboole_0))),
% 0.21/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.53  thf('26', plain, (((sk_C) != (k1_xboole_0))),
% 0.21/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.53  thf('27', plain, (((sk_D) != (k1_xboole_0))),
% 0.21/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.53  thf('28', plain,
% 0.21/0.53      ((m1_subset_1 @ (sk_I_1 @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A) @ sk_D)),
% 0.21/0.53      inference('simplify_reflect-', [status(thm)],
% 0.21/0.53                ['23', '24', '25', '26', '27'])).
% 0.21/0.53  thf('29', plain,
% 0.21/0.53      ((m1_subset_1 @ sk_F_1 @ (k4_zfmisc_1 @ sk_A @ sk_B @ sk_C @ sk_D))),
% 0.21/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.53  thf('30', plain,
% 0.21/0.53      (![X29 : $i, X30 : $i, X31 : $i, X32 : $i, X33 : $i]:
% 0.21/0.53         (((X29) = (k1_xboole_0))
% 0.21/0.53          | ((X30) = (k1_xboole_0))
% 0.21/0.53          | ((X31) = (k1_xboole_0))
% 0.21/0.53          | (m1_subset_1 @ (sk_H_1 @ X32 @ X33 @ X31 @ X30 @ X29) @ X31)
% 0.21/0.53          | ~ (m1_subset_1 @ X32 @ (k4_zfmisc_1 @ X29 @ X30 @ X31 @ X33))
% 0.21/0.53          | ((X33) = (k1_xboole_0)))),
% 0.21/0.53      inference('cnf', [status(esa)], [l68_mcart_1])).
% 0.21/0.53  thf('31', plain,
% 0.21/0.53      ((((sk_D) = (k1_xboole_0))
% 0.21/0.53        | (m1_subset_1 @ (sk_H_1 @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A) @ sk_C)
% 0.21/0.53        | ((sk_C) = (k1_xboole_0))
% 0.21/0.53        | ((sk_B) = (k1_xboole_0))
% 0.21/0.53        | ((sk_A) = (k1_xboole_0)))),
% 0.21/0.53      inference('sup-', [status(thm)], ['29', '30'])).
% 0.21/0.53  thf('32', plain, (((sk_A) != (k1_xboole_0))),
% 0.21/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.53  thf('33', plain, (((sk_B) != (k1_xboole_0))),
% 0.21/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.53  thf('34', plain, (((sk_C) != (k1_xboole_0))),
% 0.21/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.53  thf('35', plain, (((sk_D) != (k1_xboole_0))),
% 0.21/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.53  thf('36', plain,
% 0.21/0.53      ((m1_subset_1 @ (sk_H_1 @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A) @ sk_C)),
% 0.21/0.53      inference('simplify_reflect-', [status(thm)],
% 0.21/0.53                ['31', '32', '33', '34', '35'])).
% 0.21/0.53  thf('37', plain,
% 0.21/0.53      ((m1_subset_1 @ sk_F_1 @ (k4_zfmisc_1 @ sk_A @ sk_B @ sk_C @ sk_D))),
% 0.21/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.53  thf('38', plain,
% 0.21/0.53      (![X29 : $i, X30 : $i, X31 : $i, X32 : $i, X33 : $i]:
% 0.21/0.53         (((X29) = (k1_xboole_0))
% 0.21/0.53          | ((X30) = (k1_xboole_0))
% 0.21/0.53          | ((X31) = (k1_xboole_0))
% 0.21/0.53          | (m1_subset_1 @ (sk_F @ X32 @ X33 @ X31 @ X30 @ X29) @ X29)
% 0.21/0.53          | ~ (m1_subset_1 @ X32 @ (k4_zfmisc_1 @ X29 @ X30 @ X31 @ X33))
% 0.21/0.53          | ((X33) = (k1_xboole_0)))),
% 0.21/0.53      inference('cnf', [status(esa)], [l68_mcart_1])).
% 0.21/0.53  thf('39', plain,
% 0.21/0.53      ((((sk_D) = (k1_xboole_0))
% 0.21/0.53        | (m1_subset_1 @ (sk_F @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A) @ sk_A)
% 0.21/0.53        | ((sk_C) = (k1_xboole_0))
% 0.21/0.53        | ((sk_B) = (k1_xboole_0))
% 0.21/0.53        | ((sk_A) = (k1_xboole_0)))),
% 0.21/0.53      inference('sup-', [status(thm)], ['37', '38'])).
% 0.21/0.53  thf('40', plain, (((sk_A) != (k1_xboole_0))),
% 0.21/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.53  thf('41', plain, (((sk_B) != (k1_xboole_0))),
% 0.21/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.53  thf('42', plain, (((sk_C) != (k1_xboole_0))),
% 0.21/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.53  thf('43', plain, (((sk_D) != (k1_xboole_0))),
% 0.21/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.53  thf('44', plain,
% 0.21/0.53      ((m1_subset_1 @ (sk_F @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A) @ sk_A)),
% 0.21/0.53      inference('simplify_reflect-', [status(thm)],
% 0.21/0.53                ['39', '40', '41', '42', '43'])).
% 0.21/0.53  thf('45', plain,
% 0.21/0.53      ((((sk_F_1) != (sk_F_1))
% 0.21/0.53        | ((sk_E) = (sk_G_1 @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A)))),
% 0.21/0.53      inference('demod', [status(thm)], ['20', '28', '36', '44'])).
% 0.21/0.53  thf('46', plain, (((sk_E) = (sk_G_1 @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A))),
% 0.21/0.53      inference('simplify', [status(thm)], ['45'])).
% 0.21/0.53  thf('47', plain,
% 0.21/0.53      (((sk_F_1)
% 0.21/0.53         = (k4_mcart_1 @ (sk_F @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A) @ sk_E @ 
% 0.21/0.53            (sk_H_1 @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A) @ 
% 0.21/0.53            (sk_I_1 @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A)))),
% 0.21/0.53      inference('demod', [status(thm)], ['8', '46'])).
% 0.21/0.53  thf(d9_mcart_1, axiom,
% 0.21/0.53    (![A:$i,B:$i,C:$i,D:$i]:
% 0.21/0.53     ( ~( ( ( A ) != ( k1_xboole_0 ) ) & ( ( B ) != ( k1_xboole_0 ) ) & 
% 0.21/0.53          ( ( C ) != ( k1_xboole_0 ) ) & ( ( D ) != ( k1_xboole_0 ) ) & 
% 0.21/0.53          ( ~( ![E:$i]:
% 0.21/0.53               ( ( m1_subset_1 @ E @ ( k4_zfmisc_1 @ A @ B @ C @ D ) ) =>
% 0.21/0.53                 ( ![F:$i]:
% 0.21/0.53                   ( ( m1_subset_1 @ F @ B ) =>
% 0.21/0.53                     ( ( ( F ) = ( k9_mcart_1 @ A @ B @ C @ D @ E ) ) <=>
% 0.21/0.53                       ( ![G:$i,H:$i,I:$i,J:$i]:
% 0.21/0.53                         ( ( ( E ) = ( k4_mcart_1 @ G @ H @ I @ J ) ) =>
% 0.21/0.53                           ( ( F ) = ( H ) ) ) ) ) ) ) ) ) ) ) ))).
% 0.21/0.53  thf('48', plain,
% 0.21/0.53      (![X14 : $i, X15 : $i, X16 : $i, X17 : $i, X18 : $i, X19 : $i, X20 : $i, 
% 0.21/0.53         X21 : $i, X22 : $i, X23 : $i]:
% 0.21/0.53         (((X14) = (k1_xboole_0))
% 0.21/0.53          | ((X15) = (k1_xboole_0))
% 0.21/0.53          | ((X16) = (k1_xboole_0))
% 0.21/0.53          | ~ (m1_subset_1 @ X17 @ X15)
% 0.21/0.53          | ((X17) != (k9_mcart_1 @ X14 @ X15 @ X16 @ X19 @ X18))
% 0.21/0.53          | ((X17) = (X20))
% 0.21/0.53          | ((X18) != (k4_mcart_1 @ X21 @ X20 @ X22 @ X23))
% 0.21/0.53          | ~ (m1_subset_1 @ X18 @ (k4_zfmisc_1 @ X14 @ X15 @ X16 @ X19))
% 0.21/0.53          | ((X19) = (k1_xboole_0)))),
% 0.21/0.53      inference('cnf', [status(esa)], [d9_mcart_1])).
% 0.21/0.53  thf('49', plain,
% 0.21/0.53      (![X14 : $i, X15 : $i, X16 : $i, X19 : $i, X20 : $i, X21 : $i, X22 : $i, 
% 0.21/0.53         X23 : $i]:
% 0.21/0.53         (((X19) = (k1_xboole_0))
% 0.21/0.53          | ~ (m1_subset_1 @ (k4_mcart_1 @ X21 @ X20 @ X22 @ X23) @ 
% 0.21/0.53               (k4_zfmisc_1 @ X14 @ X15 @ X16 @ X19))
% 0.21/0.53          | ((k9_mcart_1 @ X14 @ X15 @ X16 @ X19 @ 
% 0.21/0.53              (k4_mcart_1 @ X21 @ X20 @ X22 @ X23)) = (X20))
% 0.21/0.53          | ~ (m1_subset_1 @ 
% 0.21/0.53               (k9_mcart_1 @ X14 @ X15 @ X16 @ X19 @ 
% 0.21/0.53                (k4_mcart_1 @ X21 @ X20 @ X22 @ X23)) @ 
% 0.21/0.53               X15)
% 0.21/0.53          | ((X16) = (k1_xboole_0))
% 0.21/0.53          | ((X15) = (k1_xboole_0))
% 0.21/0.53          | ((X14) = (k1_xboole_0)))),
% 0.21/0.53      inference('simplify', [status(thm)], ['48'])).
% 0.21/0.53  thf('50', plain,
% 0.21/0.53      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i]:
% 0.21/0.53         (~ (m1_subset_1 @ sk_F_1 @ (k4_zfmisc_1 @ X3 @ X2 @ X1 @ X0))
% 0.21/0.53          | ((X3) = (k1_xboole_0))
% 0.21/0.53          | ((X2) = (k1_xboole_0))
% 0.21/0.53          | ((X1) = (k1_xboole_0))
% 0.21/0.53          | ~ (m1_subset_1 @ 
% 0.21/0.53               (k9_mcart_1 @ X3 @ X2 @ X1 @ X0 @ 
% 0.21/0.53                (k4_mcart_1 @ (sk_F @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A) @ 
% 0.21/0.53                 sk_E @ (sk_H_1 @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A) @ 
% 0.21/0.53                 (sk_I_1 @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A))) @ 
% 0.21/0.53               X2)
% 0.21/0.53          | ((k9_mcart_1 @ X3 @ X2 @ X1 @ X0 @ 
% 0.21/0.53              (k4_mcart_1 @ (sk_F @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A) @ 
% 0.21/0.53               sk_E @ (sk_H_1 @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A) @ 
% 0.21/0.53               (sk_I_1 @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A)))
% 0.21/0.53              = (sk_E))
% 0.21/0.53          | ((X0) = (k1_xboole_0)))),
% 0.21/0.53      inference('sup-', [status(thm)], ['47', '49'])).
% 0.21/0.53  thf('51', plain,
% 0.21/0.53      (((sk_F_1)
% 0.21/0.53         = (k4_mcart_1 @ (sk_F @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A) @ sk_E @ 
% 0.21/0.53            (sk_H_1 @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A) @ 
% 0.21/0.53            (sk_I_1 @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A)))),
% 0.21/0.53      inference('demod', [status(thm)], ['8', '46'])).
% 0.21/0.53  thf('52', plain,
% 0.21/0.53      (((sk_F_1)
% 0.21/0.53         = (k4_mcart_1 @ (sk_F @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A) @ sk_E @ 
% 0.21/0.53            (sk_H_1 @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A) @ 
% 0.21/0.53            (sk_I_1 @ sk_F_1 @ sk_D @ sk_C @ sk_B @ sk_A)))),
% 0.21/0.53      inference('demod', [status(thm)], ['8', '46'])).
% 0.21/0.53  thf('53', plain,
% 0.21/0.53      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i]:
% 0.21/0.53         (~ (m1_subset_1 @ sk_F_1 @ (k4_zfmisc_1 @ X3 @ X2 @ X1 @ X0))
% 0.21/0.53          | ((X3) = (k1_xboole_0))
% 0.21/0.53          | ((X2) = (k1_xboole_0))
% 0.21/0.53          | ((X1) = (k1_xboole_0))
% 0.21/0.53          | ~ (m1_subset_1 @ (k9_mcart_1 @ X3 @ X2 @ X1 @ X0 @ sk_F_1) @ X2)
% 0.21/0.53          | ((k9_mcart_1 @ X3 @ X2 @ X1 @ X0 @ sk_F_1) = (sk_E))
% 0.21/0.53          | ((X0) = (k1_xboole_0)))),
% 0.21/0.53      inference('demod', [status(thm)], ['50', '51', '52'])).
% 0.21/0.53  thf('54', plain,
% 0.21/0.53      ((((sk_D) = (k1_xboole_0))
% 0.21/0.53        | ((k9_mcart_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_F_1) = (sk_E))
% 0.21/0.53        | ~ (m1_subset_1 @ (k9_mcart_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_F_1) @ 
% 0.21/0.53             sk_B)
% 0.21/0.53        | ((sk_C) = (k1_xboole_0))
% 0.21/0.53        | ((sk_B) = (k1_xboole_0))
% 0.21/0.53        | ((sk_A) = (k1_xboole_0)))),
% 0.21/0.53      inference('sup-', [status(thm)], ['0', '53'])).
% 0.21/0.53  thf('55', plain,
% 0.21/0.53      ((m1_subset_1 @ sk_F_1 @ (k4_zfmisc_1 @ sk_A @ sk_B @ sk_C @ sk_D))),
% 0.21/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.53  thf(dt_k9_mcart_1, axiom,
% 0.21/0.53    (![A:$i,B:$i,C:$i,D:$i,E:$i]:
% 0.21/0.53     ( ( m1_subset_1 @ E @ ( k4_zfmisc_1 @ A @ B @ C @ D ) ) =>
% 0.21/0.53       ( m1_subset_1 @ ( k9_mcart_1 @ A @ B @ C @ D @ E ) @ B ) ))).
% 0.21/0.53  thf('56', plain,
% 0.21/0.53      (![X24 : $i, X25 : $i, X26 : $i, X27 : $i, X28 : $i]:
% 0.21/0.53         ((m1_subset_1 @ (k9_mcart_1 @ X24 @ X25 @ X26 @ X27 @ X28) @ X25)
% 0.21/0.53          | ~ (m1_subset_1 @ X28 @ (k4_zfmisc_1 @ X24 @ X25 @ X26 @ X27)))),
% 0.21/0.53      inference('cnf', [status(esa)], [dt_k9_mcart_1])).
% 0.21/0.53  thf('57', plain,
% 0.21/0.53      ((m1_subset_1 @ (k9_mcart_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_F_1) @ sk_B)),
% 0.21/0.53      inference('sup-', [status(thm)], ['55', '56'])).
% 0.21/0.53  thf('58', plain,
% 0.21/0.53      ((((sk_D) = (k1_xboole_0))
% 0.21/0.53        | ((k9_mcart_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_F_1) = (sk_E))
% 0.21/0.53        | ((sk_C) = (k1_xboole_0))
% 0.21/0.53        | ((sk_B) = (k1_xboole_0))
% 0.21/0.53        | ((sk_A) = (k1_xboole_0)))),
% 0.21/0.53      inference('demod', [status(thm)], ['54', '57'])).
% 0.21/0.53  thf('59', plain, (((sk_A) != (k1_xboole_0))),
% 0.21/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.53  thf('60', plain, (((sk_B) != (k1_xboole_0))),
% 0.21/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.53  thf('61', plain, (((sk_C) != (k1_xboole_0))),
% 0.21/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.53  thf('62', plain,
% 0.21/0.53      (((sk_E) != (k9_mcart_1 @ sk_A @ sk_B @ sk_C @ sk_D @ sk_F_1))),
% 0.21/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.53  thf('63', plain, (((sk_D) != (k1_xboole_0))),
% 0.21/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.53  thf('64', plain, ($false),
% 0.21/0.53      inference('simplify_reflect-', [status(thm)],
% 0.21/0.53                ['58', '59', '60', '61', '62', '63'])).
% 0.21/0.53  
% 0.21/0.53  % SZS output end Refutation
% 0.21/0.53  
% 0.21/0.54  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
