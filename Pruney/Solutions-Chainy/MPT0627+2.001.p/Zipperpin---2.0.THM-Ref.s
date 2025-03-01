%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.R9hDKl34Eb

% Computer   : n003.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:44:47 EST 2020

% Result     : Theorem 0.20s
% Output     : Refutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   68 ( 143 expanded)
%              Number of leaves         :   16 (  50 expanded)
%              Depth                    :   19
%              Number of atoms          :  651 (2214 expanded)
%              Number of equality atoms :   14 (  71 expanded)
%              Maximal formula depth    :   17 (   7 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k1_funct_1_type,type,(
    k1_funct_1: $i > $i > $i )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(sk_F_1_type,type,(
    sk_F_1: $i > $i > $i > $i > $i )).

thf(k4_tarski_type,type,(
    k4_tarski: $i > $i > $i )).

thf(k5_relat_1_type,type,(
    k5_relat_1: $i > $i > $i )).

thf(k1_relat_1_type,type,(
    k1_relat_1: $i > $i )).

thf(sk_C_type,type,(
    sk_C: $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(v1_funct_1_type,type,(
    v1_funct_1: $i > $o )).

thf(dt_k5_relat_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( ( v1_relat_1 @ A )
        & ( v1_relat_1 @ B ) )
     => ( v1_relat_1 @ ( k5_relat_1 @ A @ B ) ) ) )).

thf('0',plain,(
    ! [X8: $i,X9: $i] :
      ( ~ ( v1_relat_1 @ X8 )
      | ~ ( v1_relat_1 @ X9 )
      | ( v1_relat_1 @ ( k5_relat_1 @ X8 @ X9 ) ) ) ),
    inference(cnf,[status(esa)],[dt_k5_relat_1])).

thf('1',plain,(
    ! [X8: $i,X9: $i] :
      ( ~ ( v1_relat_1 @ X8 )
      | ~ ( v1_relat_1 @ X9 )
      | ( v1_relat_1 @ ( k5_relat_1 @ X8 @ X9 ) ) ) ),
    inference(cnf,[status(esa)],[dt_k5_relat_1])).

thf(fc2_funct_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( ( v1_relat_1 @ A )
        & ( v1_funct_1 @ A )
        & ( v1_relat_1 @ B )
        & ( v1_funct_1 @ B ) )
     => ( ( v1_relat_1 @ ( k5_relat_1 @ A @ B ) )
        & ( v1_funct_1 @ ( k5_relat_1 @ A @ B ) ) ) ) )).

thf('2',plain,(
    ! [X10: $i,X11: $i] :
      ( ~ ( v1_funct_1 @ X10 )
      | ~ ( v1_relat_1 @ X10 )
      | ~ ( v1_relat_1 @ X11 )
      | ~ ( v1_funct_1 @ X11 )
      | ( v1_funct_1 @ ( k5_relat_1 @ X10 @ X11 ) ) ) ),
    inference(cnf,[status(esa)],[fc2_funct_1])).

thf(t22_funct_1,conjecture,(
    ! [A: $i,B: $i] :
      ( ( ( v1_relat_1 @ B )
        & ( v1_funct_1 @ B ) )
     => ! [C: $i] :
          ( ( ( v1_relat_1 @ C )
            & ( v1_funct_1 @ C ) )
         => ( ( r2_hidden @ A @ ( k1_relat_1 @ ( k5_relat_1 @ C @ B ) ) )
           => ( ( k1_funct_1 @ ( k5_relat_1 @ C @ B ) @ A )
              = ( k1_funct_1 @ B @ ( k1_funct_1 @ C @ A ) ) ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i] :
        ( ( ( v1_relat_1 @ B )
          & ( v1_funct_1 @ B ) )
       => ! [C: $i] :
            ( ( ( v1_relat_1 @ C )
              & ( v1_funct_1 @ C ) )
           => ( ( r2_hidden @ A @ ( k1_relat_1 @ ( k5_relat_1 @ C @ B ) ) )
             => ( ( k1_funct_1 @ ( k5_relat_1 @ C @ B ) @ A )
                = ( k1_funct_1 @ B @ ( k1_funct_1 @ C @ A ) ) ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t22_funct_1])).

thf('3',plain,(
    r2_hidden @ sk_A @ ( k1_relat_1 @ ( k5_relat_1 @ sk_C @ sk_B ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t8_funct_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( ( v1_relat_1 @ C )
        & ( v1_funct_1 @ C ) )
     => ( ( r2_hidden @ ( k4_tarski @ A @ B ) @ C )
      <=> ( ( r2_hidden @ A @ ( k1_relat_1 @ C ) )
          & ( B
            = ( k1_funct_1 @ C @ A ) ) ) ) ) )).

thf('4',plain,(
    ! [X12: $i,X13: $i,X14: $i] :
      ( ~ ( r2_hidden @ X12 @ ( k1_relat_1 @ X13 ) )
      | ( X14
       != ( k1_funct_1 @ X13 @ X12 ) )
      | ( r2_hidden @ ( k4_tarski @ X12 @ X14 ) @ X13 )
      | ~ ( v1_funct_1 @ X13 )
      | ~ ( v1_relat_1 @ X13 ) ) ),
    inference(cnf,[status(esa)],[t8_funct_1])).

thf('5',plain,(
    ! [X12: $i,X13: $i] :
      ( ~ ( v1_relat_1 @ X13 )
      | ~ ( v1_funct_1 @ X13 )
      | ( r2_hidden @ ( k4_tarski @ X12 @ ( k1_funct_1 @ X13 @ X12 ) ) @ X13 )
      | ~ ( r2_hidden @ X12 @ ( k1_relat_1 @ X13 ) ) ) ),
    inference(simplify,[status(thm)],['4'])).

thf('6',plain,
    ( ( r2_hidden @ ( k4_tarski @ sk_A @ ( k1_funct_1 @ ( k5_relat_1 @ sk_C @ sk_B ) @ sk_A ) ) @ ( k5_relat_1 @ sk_C @ sk_B ) )
    | ~ ( v1_funct_1 @ ( k5_relat_1 @ sk_C @ sk_B ) )
    | ~ ( v1_relat_1 @ ( k5_relat_1 @ sk_C @ sk_B ) ) ),
    inference('sup-',[status(thm)],['3','5'])).

thf('7',plain,
    ( ~ ( v1_funct_1 @ sk_B )
    | ~ ( v1_relat_1 @ sk_B )
    | ~ ( v1_relat_1 @ sk_C )
    | ~ ( v1_funct_1 @ sk_C )
    | ~ ( v1_relat_1 @ ( k5_relat_1 @ sk_C @ sk_B ) )
    | ( r2_hidden @ ( k4_tarski @ sk_A @ ( k1_funct_1 @ ( k5_relat_1 @ sk_C @ sk_B ) @ sk_A ) ) @ ( k5_relat_1 @ sk_C @ sk_B ) ) ),
    inference('sup-',[status(thm)],['2','6'])).

thf('8',plain,(
    v1_funct_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('9',plain,(
    v1_relat_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('10',plain,(
    v1_relat_1 @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('11',plain,(
    v1_funct_1 @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('12',plain,
    ( ~ ( v1_relat_1 @ ( k5_relat_1 @ sk_C @ sk_B ) )
    | ( r2_hidden @ ( k4_tarski @ sk_A @ ( k1_funct_1 @ ( k5_relat_1 @ sk_C @ sk_B ) @ sk_A ) ) @ ( k5_relat_1 @ sk_C @ sk_B ) ) ),
    inference(demod,[status(thm)],['7','8','9','10','11'])).

thf('13',plain,
    ( ~ ( v1_relat_1 @ sk_B )
    | ~ ( v1_relat_1 @ sk_C )
    | ( r2_hidden @ ( k4_tarski @ sk_A @ ( k1_funct_1 @ ( k5_relat_1 @ sk_C @ sk_B ) @ sk_A ) ) @ ( k5_relat_1 @ sk_C @ sk_B ) ) ),
    inference('sup-',[status(thm)],['1','12'])).

thf('14',plain,(
    v1_relat_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('15',plain,(
    v1_relat_1 @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('16',plain,(
    r2_hidden @ ( k4_tarski @ sk_A @ ( k1_funct_1 @ ( k5_relat_1 @ sk_C @ sk_B ) @ sk_A ) ) @ ( k5_relat_1 @ sk_C @ sk_B ) ),
    inference(demod,[status(thm)],['13','14','15'])).

thf(d8_relat_1,axiom,(
    ! [A: $i] :
      ( ( v1_relat_1 @ A )
     => ! [B: $i] :
          ( ( v1_relat_1 @ B )
         => ! [C: $i] :
              ( ( v1_relat_1 @ C )
             => ( ( C
                  = ( k5_relat_1 @ A @ B ) )
              <=> ! [D: $i,E: $i] :
                    ( ( r2_hidden @ ( k4_tarski @ D @ E ) @ C )
                  <=> ? [F: $i] :
                        ( ( r2_hidden @ ( k4_tarski @ F @ E ) @ B )
                        & ( r2_hidden @ ( k4_tarski @ D @ F ) @ A ) ) ) ) ) ) ) )).

thf('17',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i,X6: $i] :
      ( ~ ( v1_relat_1 @ X0 )
      | ( X2
       != ( k5_relat_1 @ X1 @ X0 ) )
      | ( r2_hidden @ ( k4_tarski @ ( sk_F_1 @ X6 @ X3 @ X0 @ X1 ) @ X6 ) @ X0 )
      | ~ ( r2_hidden @ ( k4_tarski @ X3 @ X6 ) @ X2 )
      | ~ ( v1_relat_1 @ X2 )
      | ~ ( v1_relat_1 @ X1 ) ) ),
    inference(cnf,[status(esa)],[d8_relat_1])).

thf('18',plain,(
    ! [X0: $i,X1: $i,X3: $i,X6: $i] :
      ( ~ ( v1_relat_1 @ X1 )
      | ~ ( v1_relat_1 @ ( k5_relat_1 @ X1 @ X0 ) )
      | ~ ( r2_hidden @ ( k4_tarski @ X3 @ X6 ) @ ( k5_relat_1 @ X1 @ X0 ) )
      | ( r2_hidden @ ( k4_tarski @ ( sk_F_1 @ X6 @ X3 @ X0 @ X1 ) @ X6 ) @ X0 )
      | ~ ( v1_relat_1 @ X0 ) ) ),
    inference(simplify,[status(thm)],['17'])).

thf('19',plain,
    ( ~ ( v1_relat_1 @ sk_B )
    | ( r2_hidden @ ( k4_tarski @ ( sk_F_1 @ ( k1_funct_1 @ ( k5_relat_1 @ sk_C @ sk_B ) @ sk_A ) @ sk_A @ sk_B @ sk_C ) @ ( k1_funct_1 @ ( k5_relat_1 @ sk_C @ sk_B ) @ sk_A ) ) @ sk_B )
    | ~ ( v1_relat_1 @ ( k5_relat_1 @ sk_C @ sk_B ) )
    | ~ ( v1_relat_1 @ sk_C ) ),
    inference('sup-',[status(thm)],['16','18'])).

thf('20',plain,(
    v1_relat_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('21',plain,(
    ! [X8: $i,X9: $i] :
      ( ~ ( v1_relat_1 @ X8 )
      | ~ ( v1_relat_1 @ X9 )
      | ( v1_relat_1 @ ( k5_relat_1 @ X8 @ X9 ) ) ) ),
    inference(cnf,[status(esa)],[dt_k5_relat_1])).

thf('22',plain,(
    r2_hidden @ ( k4_tarski @ sk_A @ ( k1_funct_1 @ ( k5_relat_1 @ sk_C @ sk_B ) @ sk_A ) ) @ ( k5_relat_1 @ sk_C @ sk_B ) ),
    inference(demod,[status(thm)],['13','14','15'])).

thf('23',plain,(
    ! [X0: $i,X1: $i,X2: $i,X3: $i,X6: $i] :
      ( ~ ( v1_relat_1 @ X0 )
      | ( X2
       != ( k5_relat_1 @ X1 @ X0 ) )
      | ( r2_hidden @ ( k4_tarski @ X3 @ ( sk_F_1 @ X6 @ X3 @ X0 @ X1 ) ) @ X1 )
      | ~ ( r2_hidden @ ( k4_tarski @ X3 @ X6 ) @ X2 )
      | ~ ( v1_relat_1 @ X2 )
      | ~ ( v1_relat_1 @ X1 ) ) ),
    inference(cnf,[status(esa)],[d8_relat_1])).

thf('24',plain,(
    ! [X0: $i,X1: $i,X3: $i,X6: $i] :
      ( ~ ( v1_relat_1 @ X1 )
      | ~ ( v1_relat_1 @ ( k5_relat_1 @ X1 @ X0 ) )
      | ~ ( r2_hidden @ ( k4_tarski @ X3 @ X6 ) @ ( k5_relat_1 @ X1 @ X0 ) )
      | ( r2_hidden @ ( k4_tarski @ X3 @ ( sk_F_1 @ X6 @ X3 @ X0 @ X1 ) ) @ X1 )
      | ~ ( v1_relat_1 @ X0 ) ) ),
    inference(simplify,[status(thm)],['23'])).

thf('25',plain,
    ( ~ ( v1_relat_1 @ sk_B )
    | ( r2_hidden @ ( k4_tarski @ sk_A @ ( sk_F_1 @ ( k1_funct_1 @ ( k5_relat_1 @ sk_C @ sk_B ) @ sk_A ) @ sk_A @ sk_B @ sk_C ) ) @ sk_C )
    | ~ ( v1_relat_1 @ ( k5_relat_1 @ sk_C @ sk_B ) )
    | ~ ( v1_relat_1 @ sk_C ) ),
    inference('sup-',[status(thm)],['22','24'])).

thf('26',plain,(
    v1_relat_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('27',plain,(
    v1_relat_1 @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('28',plain,
    ( ( r2_hidden @ ( k4_tarski @ sk_A @ ( sk_F_1 @ ( k1_funct_1 @ ( k5_relat_1 @ sk_C @ sk_B ) @ sk_A ) @ sk_A @ sk_B @ sk_C ) ) @ sk_C )
    | ~ ( v1_relat_1 @ ( k5_relat_1 @ sk_C @ sk_B ) ) ),
    inference(demod,[status(thm)],['25','26','27'])).

thf('29',plain,
    ( ~ ( v1_relat_1 @ sk_B )
    | ~ ( v1_relat_1 @ sk_C )
    | ( r2_hidden @ ( k4_tarski @ sk_A @ ( sk_F_1 @ ( k1_funct_1 @ ( k5_relat_1 @ sk_C @ sk_B ) @ sk_A ) @ sk_A @ sk_B @ sk_C ) ) @ sk_C ) ),
    inference('sup-',[status(thm)],['21','28'])).

thf('30',plain,(
    v1_relat_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('31',plain,(
    v1_relat_1 @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('32',plain,(
    r2_hidden @ ( k4_tarski @ sk_A @ ( sk_F_1 @ ( k1_funct_1 @ ( k5_relat_1 @ sk_C @ sk_B ) @ sk_A ) @ sk_A @ sk_B @ sk_C ) ) @ sk_C ),
    inference(demod,[status(thm)],['29','30','31'])).

thf('33',plain,(
    ! [X12: $i,X13: $i,X14: $i] :
      ( ~ ( r2_hidden @ ( k4_tarski @ X12 @ X14 ) @ X13 )
      | ( X14
        = ( k1_funct_1 @ X13 @ X12 ) )
      | ~ ( v1_funct_1 @ X13 )
      | ~ ( v1_relat_1 @ X13 ) ) ),
    inference(cnf,[status(esa)],[t8_funct_1])).

thf('34',plain,
    ( ~ ( v1_relat_1 @ sk_C )
    | ~ ( v1_funct_1 @ sk_C )
    | ( ( sk_F_1 @ ( k1_funct_1 @ ( k5_relat_1 @ sk_C @ sk_B ) @ sk_A ) @ sk_A @ sk_B @ sk_C )
      = ( k1_funct_1 @ sk_C @ sk_A ) ) ),
    inference('sup-',[status(thm)],['32','33'])).

thf('35',plain,(
    v1_relat_1 @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('36',plain,(
    v1_funct_1 @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('37',plain,
    ( ( sk_F_1 @ ( k1_funct_1 @ ( k5_relat_1 @ sk_C @ sk_B ) @ sk_A ) @ sk_A @ sk_B @ sk_C )
    = ( k1_funct_1 @ sk_C @ sk_A ) ),
    inference(demod,[status(thm)],['34','35','36'])).

thf('38',plain,(
    v1_relat_1 @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('39',plain,
    ( ( r2_hidden @ ( k4_tarski @ ( k1_funct_1 @ sk_C @ sk_A ) @ ( k1_funct_1 @ ( k5_relat_1 @ sk_C @ sk_B ) @ sk_A ) ) @ sk_B )
    | ~ ( v1_relat_1 @ ( k5_relat_1 @ sk_C @ sk_B ) ) ),
    inference(demod,[status(thm)],['19','20','37','38'])).

thf('40',plain,
    ( ~ ( v1_relat_1 @ sk_B )
    | ~ ( v1_relat_1 @ sk_C )
    | ( r2_hidden @ ( k4_tarski @ ( k1_funct_1 @ sk_C @ sk_A ) @ ( k1_funct_1 @ ( k5_relat_1 @ sk_C @ sk_B ) @ sk_A ) ) @ sk_B ) ),
    inference('sup-',[status(thm)],['0','39'])).

thf('41',plain,(
    v1_relat_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('42',plain,(
    v1_relat_1 @ sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('43',plain,(
    r2_hidden @ ( k4_tarski @ ( k1_funct_1 @ sk_C @ sk_A ) @ ( k1_funct_1 @ ( k5_relat_1 @ sk_C @ sk_B ) @ sk_A ) ) @ sk_B ),
    inference(demod,[status(thm)],['40','41','42'])).

thf('44',plain,(
    ! [X12: $i,X13: $i,X14: $i] :
      ( ~ ( r2_hidden @ ( k4_tarski @ X12 @ X14 ) @ X13 )
      | ( X14
        = ( k1_funct_1 @ X13 @ X12 ) )
      | ~ ( v1_funct_1 @ X13 )
      | ~ ( v1_relat_1 @ X13 ) ) ),
    inference(cnf,[status(esa)],[t8_funct_1])).

thf('45',plain,
    ( ~ ( v1_relat_1 @ sk_B )
    | ~ ( v1_funct_1 @ sk_B )
    | ( ( k1_funct_1 @ ( k5_relat_1 @ sk_C @ sk_B ) @ sk_A )
      = ( k1_funct_1 @ sk_B @ ( k1_funct_1 @ sk_C @ sk_A ) ) ) ),
    inference('sup-',[status(thm)],['43','44'])).

thf('46',plain,(
    v1_relat_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('47',plain,(
    v1_funct_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('48',plain,
    ( ( k1_funct_1 @ ( k5_relat_1 @ sk_C @ sk_B ) @ sk_A )
    = ( k1_funct_1 @ sk_B @ ( k1_funct_1 @ sk_C @ sk_A ) ) ),
    inference(demod,[status(thm)],['45','46','47'])).

thf('49',plain,(
    ( k1_funct_1 @ ( k5_relat_1 @ sk_C @ sk_B ) @ sk_A )
 != ( k1_funct_1 @ sk_B @ ( k1_funct_1 @ sk_C @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('50',plain,(
    $false ),
    inference('simplify_reflect-',[status(thm)],['48','49'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.10/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.10/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.R9hDKl34Eb
% 0.13/0.34  % Computer   : n003.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 20:20:42 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running portfolio for 600 s
% 0.13/0.34  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.13/0.34  % Number of cores: 8
% 0.13/0.34  % Python version: Python 3.6.8
% 0.13/0.35  % Running in FO mode
% 0.20/0.50  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.20/0.50  % Solved by: fo/fo7.sh
% 0.20/0.50  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.20/0.50  % done 38 iterations in 0.046s
% 0.20/0.50  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.20/0.50  % SZS output start Refutation
% 0.20/0.50  thf(k1_funct_1_type, type, k1_funct_1: $i > $i > $i).
% 0.20/0.50  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.20/0.50  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 0.20/0.50  thf(sk_F_1_type, type, sk_F_1: $i > $i > $i > $i > $i).
% 0.20/0.50  thf(k4_tarski_type, type, k4_tarski: $i > $i > $i).
% 0.20/0.50  thf(k5_relat_1_type, type, k5_relat_1: $i > $i > $i).
% 0.20/0.50  thf(k1_relat_1_type, type, k1_relat_1: $i > $i).
% 0.20/0.50  thf(sk_C_type, type, sk_C: $i).
% 0.20/0.50  thf(sk_B_type, type, sk_B: $i).
% 0.20/0.50  thf(sk_A_type, type, sk_A: $i).
% 0.20/0.50  thf(v1_funct_1_type, type, v1_funct_1: $i > $o).
% 0.20/0.50  thf(dt_k5_relat_1, axiom,
% 0.20/0.50    (![A:$i,B:$i]:
% 0.20/0.50     ( ( ( v1_relat_1 @ A ) & ( v1_relat_1 @ B ) ) =>
% 0.20/0.50       ( v1_relat_1 @ ( k5_relat_1 @ A @ B ) ) ))).
% 0.20/0.50  thf('0', plain,
% 0.20/0.50      (![X8 : $i, X9 : $i]:
% 0.20/0.50         (~ (v1_relat_1 @ X8)
% 0.20/0.50          | ~ (v1_relat_1 @ X9)
% 0.20/0.50          | (v1_relat_1 @ (k5_relat_1 @ X8 @ X9)))),
% 0.20/0.50      inference('cnf', [status(esa)], [dt_k5_relat_1])).
% 0.20/0.50  thf('1', plain,
% 0.20/0.50      (![X8 : $i, X9 : $i]:
% 0.20/0.50         (~ (v1_relat_1 @ X8)
% 0.20/0.50          | ~ (v1_relat_1 @ X9)
% 0.20/0.50          | (v1_relat_1 @ (k5_relat_1 @ X8 @ X9)))),
% 0.20/0.50      inference('cnf', [status(esa)], [dt_k5_relat_1])).
% 0.20/0.50  thf(fc2_funct_1, axiom,
% 0.20/0.50    (![A:$i,B:$i]:
% 0.20/0.50     ( ( ( v1_relat_1 @ A ) & ( v1_funct_1 @ A ) & ( v1_relat_1 @ B ) & 
% 0.20/0.50         ( v1_funct_1 @ B ) ) =>
% 0.20/0.50       ( ( v1_relat_1 @ ( k5_relat_1 @ A @ B ) ) & 
% 0.20/0.50         ( v1_funct_1 @ ( k5_relat_1 @ A @ B ) ) ) ))).
% 0.20/0.50  thf('2', plain,
% 0.20/0.50      (![X10 : $i, X11 : $i]:
% 0.20/0.50         (~ (v1_funct_1 @ X10)
% 0.20/0.50          | ~ (v1_relat_1 @ X10)
% 0.20/0.50          | ~ (v1_relat_1 @ X11)
% 0.20/0.50          | ~ (v1_funct_1 @ X11)
% 0.20/0.50          | (v1_funct_1 @ (k5_relat_1 @ X10 @ X11)))),
% 0.20/0.50      inference('cnf', [status(esa)], [fc2_funct_1])).
% 0.20/0.50  thf(t22_funct_1, conjecture,
% 0.20/0.50    (![A:$i,B:$i]:
% 0.20/0.50     ( ( ( v1_relat_1 @ B ) & ( v1_funct_1 @ B ) ) =>
% 0.20/0.50       ( ![C:$i]:
% 0.20/0.50         ( ( ( v1_relat_1 @ C ) & ( v1_funct_1 @ C ) ) =>
% 0.20/0.50           ( ( r2_hidden @ A @ ( k1_relat_1 @ ( k5_relat_1 @ C @ B ) ) ) =>
% 0.20/0.50             ( ( k1_funct_1 @ ( k5_relat_1 @ C @ B ) @ A ) =
% 0.20/0.50               ( k1_funct_1 @ B @ ( k1_funct_1 @ C @ A ) ) ) ) ) ) ))).
% 0.20/0.50  thf(zf_stmt_0, negated_conjecture,
% 0.20/0.50    (~( ![A:$i,B:$i]:
% 0.20/0.50        ( ( ( v1_relat_1 @ B ) & ( v1_funct_1 @ B ) ) =>
% 0.20/0.50          ( ![C:$i]:
% 0.20/0.50            ( ( ( v1_relat_1 @ C ) & ( v1_funct_1 @ C ) ) =>
% 0.20/0.50              ( ( r2_hidden @ A @ ( k1_relat_1 @ ( k5_relat_1 @ C @ B ) ) ) =>
% 0.20/0.50                ( ( k1_funct_1 @ ( k5_relat_1 @ C @ B ) @ A ) =
% 0.20/0.50                  ( k1_funct_1 @ B @ ( k1_funct_1 @ C @ A ) ) ) ) ) ) ) )),
% 0.20/0.50    inference('cnf.neg', [status(esa)], [t22_funct_1])).
% 0.20/0.50  thf('3', plain,
% 0.20/0.50      ((r2_hidden @ sk_A @ (k1_relat_1 @ (k5_relat_1 @ sk_C @ sk_B)))),
% 0.20/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.50  thf(t8_funct_1, axiom,
% 0.20/0.50    (![A:$i,B:$i,C:$i]:
% 0.20/0.50     ( ( ( v1_relat_1 @ C ) & ( v1_funct_1 @ C ) ) =>
% 0.20/0.50       ( ( r2_hidden @ ( k4_tarski @ A @ B ) @ C ) <=>
% 0.20/0.50         ( ( r2_hidden @ A @ ( k1_relat_1 @ C ) ) & 
% 0.20/0.50           ( ( B ) = ( k1_funct_1 @ C @ A ) ) ) ) ))).
% 0.20/0.50  thf('4', plain,
% 0.20/0.50      (![X12 : $i, X13 : $i, X14 : $i]:
% 0.20/0.50         (~ (r2_hidden @ X12 @ (k1_relat_1 @ X13))
% 0.20/0.50          | ((X14) != (k1_funct_1 @ X13 @ X12))
% 0.20/0.50          | (r2_hidden @ (k4_tarski @ X12 @ X14) @ X13)
% 0.20/0.50          | ~ (v1_funct_1 @ X13)
% 0.20/0.50          | ~ (v1_relat_1 @ X13))),
% 0.20/0.50      inference('cnf', [status(esa)], [t8_funct_1])).
% 0.20/0.50  thf('5', plain,
% 0.20/0.50      (![X12 : $i, X13 : $i]:
% 0.20/0.50         (~ (v1_relat_1 @ X13)
% 0.20/0.50          | ~ (v1_funct_1 @ X13)
% 0.20/0.50          | (r2_hidden @ (k4_tarski @ X12 @ (k1_funct_1 @ X13 @ X12)) @ X13)
% 0.20/0.50          | ~ (r2_hidden @ X12 @ (k1_relat_1 @ X13)))),
% 0.20/0.50      inference('simplify', [status(thm)], ['4'])).
% 0.20/0.50  thf('6', plain,
% 0.20/0.50      (((r2_hidden @ 
% 0.20/0.50         (k4_tarski @ sk_A @ (k1_funct_1 @ (k5_relat_1 @ sk_C @ sk_B) @ sk_A)) @ 
% 0.20/0.50         (k5_relat_1 @ sk_C @ sk_B))
% 0.20/0.50        | ~ (v1_funct_1 @ (k5_relat_1 @ sk_C @ sk_B))
% 0.20/0.50        | ~ (v1_relat_1 @ (k5_relat_1 @ sk_C @ sk_B)))),
% 0.20/0.50      inference('sup-', [status(thm)], ['3', '5'])).
% 0.20/0.50  thf('7', plain,
% 0.20/0.50      ((~ (v1_funct_1 @ sk_B)
% 0.20/0.50        | ~ (v1_relat_1 @ sk_B)
% 0.20/0.50        | ~ (v1_relat_1 @ sk_C)
% 0.20/0.50        | ~ (v1_funct_1 @ sk_C)
% 0.20/0.50        | ~ (v1_relat_1 @ (k5_relat_1 @ sk_C @ sk_B))
% 0.20/0.50        | (r2_hidden @ 
% 0.20/0.50           (k4_tarski @ sk_A @ (k1_funct_1 @ (k5_relat_1 @ sk_C @ sk_B) @ sk_A)) @ 
% 0.20/0.50           (k5_relat_1 @ sk_C @ sk_B)))),
% 0.20/0.50      inference('sup-', [status(thm)], ['2', '6'])).
% 0.20/0.50  thf('8', plain, ((v1_funct_1 @ sk_B)),
% 0.20/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.50  thf('9', plain, ((v1_relat_1 @ sk_B)),
% 0.20/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.50  thf('10', plain, ((v1_relat_1 @ sk_C)),
% 0.20/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.50  thf('11', plain, ((v1_funct_1 @ sk_C)),
% 0.20/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.50  thf('12', plain,
% 0.20/0.50      ((~ (v1_relat_1 @ (k5_relat_1 @ sk_C @ sk_B))
% 0.20/0.50        | (r2_hidden @ 
% 0.20/0.50           (k4_tarski @ sk_A @ (k1_funct_1 @ (k5_relat_1 @ sk_C @ sk_B) @ sk_A)) @ 
% 0.20/0.50           (k5_relat_1 @ sk_C @ sk_B)))),
% 0.20/0.50      inference('demod', [status(thm)], ['7', '8', '9', '10', '11'])).
% 0.20/0.50  thf('13', plain,
% 0.20/0.50      ((~ (v1_relat_1 @ sk_B)
% 0.20/0.50        | ~ (v1_relat_1 @ sk_C)
% 0.20/0.50        | (r2_hidden @ 
% 0.20/0.50           (k4_tarski @ sk_A @ (k1_funct_1 @ (k5_relat_1 @ sk_C @ sk_B) @ sk_A)) @ 
% 0.20/0.50           (k5_relat_1 @ sk_C @ sk_B)))),
% 0.20/0.50      inference('sup-', [status(thm)], ['1', '12'])).
% 0.20/0.50  thf('14', plain, ((v1_relat_1 @ sk_B)),
% 0.20/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.50  thf('15', plain, ((v1_relat_1 @ sk_C)),
% 0.20/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.50  thf('16', plain,
% 0.20/0.50      ((r2_hidden @ 
% 0.20/0.50        (k4_tarski @ sk_A @ (k1_funct_1 @ (k5_relat_1 @ sk_C @ sk_B) @ sk_A)) @ 
% 0.20/0.50        (k5_relat_1 @ sk_C @ sk_B))),
% 0.20/0.50      inference('demod', [status(thm)], ['13', '14', '15'])).
% 0.20/0.50  thf(d8_relat_1, axiom,
% 0.20/0.50    (![A:$i]:
% 0.20/0.50     ( ( v1_relat_1 @ A ) =>
% 0.20/0.50       ( ![B:$i]:
% 0.20/0.50         ( ( v1_relat_1 @ B ) =>
% 0.20/0.50           ( ![C:$i]:
% 0.20/0.50             ( ( v1_relat_1 @ C ) =>
% 0.20/0.50               ( ( ( C ) = ( k5_relat_1 @ A @ B ) ) <=>
% 0.20/0.50                 ( ![D:$i,E:$i]:
% 0.20/0.50                   ( ( r2_hidden @ ( k4_tarski @ D @ E ) @ C ) <=>
% 0.20/0.50                     ( ?[F:$i]:
% 0.20/0.50                       ( ( r2_hidden @ ( k4_tarski @ F @ E ) @ B ) & 
% 0.20/0.50                         ( r2_hidden @ ( k4_tarski @ D @ F ) @ A ) ) ) ) ) ) ) ) ) ) ))).
% 0.20/0.50  thf('17', plain,
% 0.20/0.50      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i, X6 : $i]:
% 0.20/0.50         (~ (v1_relat_1 @ X0)
% 0.20/0.50          | ((X2) != (k5_relat_1 @ X1 @ X0))
% 0.20/0.50          | (r2_hidden @ (k4_tarski @ (sk_F_1 @ X6 @ X3 @ X0 @ X1) @ X6) @ X0)
% 0.20/0.50          | ~ (r2_hidden @ (k4_tarski @ X3 @ X6) @ X2)
% 0.20/0.50          | ~ (v1_relat_1 @ X2)
% 0.20/0.50          | ~ (v1_relat_1 @ X1))),
% 0.20/0.50      inference('cnf', [status(esa)], [d8_relat_1])).
% 0.20/0.50  thf('18', plain,
% 0.20/0.50      (![X0 : $i, X1 : $i, X3 : $i, X6 : $i]:
% 0.20/0.50         (~ (v1_relat_1 @ X1)
% 0.20/0.50          | ~ (v1_relat_1 @ (k5_relat_1 @ X1 @ X0))
% 0.20/0.50          | ~ (r2_hidden @ (k4_tarski @ X3 @ X6) @ (k5_relat_1 @ X1 @ X0))
% 0.20/0.50          | (r2_hidden @ (k4_tarski @ (sk_F_1 @ X6 @ X3 @ X0 @ X1) @ X6) @ X0)
% 0.20/0.50          | ~ (v1_relat_1 @ X0))),
% 0.20/0.50      inference('simplify', [status(thm)], ['17'])).
% 0.20/0.50  thf('19', plain,
% 0.20/0.50      ((~ (v1_relat_1 @ sk_B)
% 0.20/0.50        | (r2_hidden @ 
% 0.20/0.50           (k4_tarski @ 
% 0.20/0.50            (sk_F_1 @ (k1_funct_1 @ (k5_relat_1 @ sk_C @ sk_B) @ sk_A) @ 
% 0.20/0.50             sk_A @ sk_B @ sk_C) @ 
% 0.20/0.50            (k1_funct_1 @ (k5_relat_1 @ sk_C @ sk_B) @ sk_A)) @ 
% 0.20/0.50           sk_B)
% 0.20/0.50        | ~ (v1_relat_1 @ (k5_relat_1 @ sk_C @ sk_B))
% 0.20/0.50        | ~ (v1_relat_1 @ sk_C))),
% 0.20/0.50      inference('sup-', [status(thm)], ['16', '18'])).
% 0.20/0.50  thf('20', plain, ((v1_relat_1 @ sk_B)),
% 0.20/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.50  thf('21', plain,
% 0.20/0.50      (![X8 : $i, X9 : $i]:
% 0.20/0.50         (~ (v1_relat_1 @ X8)
% 0.20/0.50          | ~ (v1_relat_1 @ X9)
% 0.20/0.50          | (v1_relat_1 @ (k5_relat_1 @ X8 @ X9)))),
% 0.20/0.50      inference('cnf', [status(esa)], [dt_k5_relat_1])).
% 0.20/0.50  thf('22', plain,
% 0.20/0.50      ((r2_hidden @ 
% 0.20/0.50        (k4_tarski @ sk_A @ (k1_funct_1 @ (k5_relat_1 @ sk_C @ sk_B) @ sk_A)) @ 
% 0.20/0.50        (k5_relat_1 @ sk_C @ sk_B))),
% 0.20/0.50      inference('demod', [status(thm)], ['13', '14', '15'])).
% 0.20/0.50  thf('23', plain,
% 0.20/0.50      (![X0 : $i, X1 : $i, X2 : $i, X3 : $i, X6 : $i]:
% 0.20/0.50         (~ (v1_relat_1 @ X0)
% 0.20/0.50          | ((X2) != (k5_relat_1 @ X1 @ X0))
% 0.20/0.50          | (r2_hidden @ (k4_tarski @ X3 @ (sk_F_1 @ X6 @ X3 @ X0 @ X1)) @ X1)
% 0.20/0.50          | ~ (r2_hidden @ (k4_tarski @ X3 @ X6) @ X2)
% 0.20/0.50          | ~ (v1_relat_1 @ X2)
% 0.20/0.50          | ~ (v1_relat_1 @ X1))),
% 0.20/0.50      inference('cnf', [status(esa)], [d8_relat_1])).
% 0.20/0.50  thf('24', plain,
% 0.20/0.50      (![X0 : $i, X1 : $i, X3 : $i, X6 : $i]:
% 0.20/0.50         (~ (v1_relat_1 @ X1)
% 0.20/0.50          | ~ (v1_relat_1 @ (k5_relat_1 @ X1 @ X0))
% 0.20/0.50          | ~ (r2_hidden @ (k4_tarski @ X3 @ X6) @ (k5_relat_1 @ X1 @ X0))
% 0.20/0.50          | (r2_hidden @ (k4_tarski @ X3 @ (sk_F_1 @ X6 @ X3 @ X0 @ X1)) @ X1)
% 0.20/0.50          | ~ (v1_relat_1 @ X0))),
% 0.20/0.50      inference('simplify', [status(thm)], ['23'])).
% 0.20/0.50  thf('25', plain,
% 0.20/0.50      ((~ (v1_relat_1 @ sk_B)
% 0.20/0.50        | (r2_hidden @ 
% 0.20/0.50           (k4_tarski @ sk_A @ 
% 0.20/0.50            (sk_F_1 @ (k1_funct_1 @ (k5_relat_1 @ sk_C @ sk_B) @ sk_A) @ 
% 0.20/0.50             sk_A @ sk_B @ sk_C)) @ 
% 0.20/0.50           sk_C)
% 0.20/0.50        | ~ (v1_relat_1 @ (k5_relat_1 @ sk_C @ sk_B))
% 0.20/0.50        | ~ (v1_relat_1 @ sk_C))),
% 0.20/0.50      inference('sup-', [status(thm)], ['22', '24'])).
% 0.20/0.50  thf('26', plain, ((v1_relat_1 @ sk_B)),
% 0.20/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.50  thf('27', plain, ((v1_relat_1 @ sk_C)),
% 0.20/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.50  thf('28', plain,
% 0.20/0.50      (((r2_hidden @ 
% 0.20/0.50         (k4_tarski @ sk_A @ 
% 0.20/0.50          (sk_F_1 @ (k1_funct_1 @ (k5_relat_1 @ sk_C @ sk_B) @ sk_A) @ sk_A @ 
% 0.20/0.50           sk_B @ sk_C)) @ 
% 0.20/0.50         sk_C)
% 0.20/0.50        | ~ (v1_relat_1 @ (k5_relat_1 @ sk_C @ sk_B)))),
% 0.20/0.50      inference('demod', [status(thm)], ['25', '26', '27'])).
% 0.20/0.50  thf('29', plain,
% 0.20/0.50      ((~ (v1_relat_1 @ sk_B)
% 0.20/0.50        | ~ (v1_relat_1 @ sk_C)
% 0.20/0.50        | (r2_hidden @ 
% 0.20/0.50           (k4_tarski @ sk_A @ 
% 0.20/0.50            (sk_F_1 @ (k1_funct_1 @ (k5_relat_1 @ sk_C @ sk_B) @ sk_A) @ 
% 0.20/0.50             sk_A @ sk_B @ sk_C)) @ 
% 0.20/0.50           sk_C))),
% 0.20/0.50      inference('sup-', [status(thm)], ['21', '28'])).
% 0.20/0.50  thf('30', plain, ((v1_relat_1 @ sk_B)),
% 0.20/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.50  thf('31', plain, ((v1_relat_1 @ sk_C)),
% 0.20/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.50  thf('32', plain,
% 0.20/0.50      ((r2_hidden @ 
% 0.20/0.50        (k4_tarski @ sk_A @ 
% 0.20/0.50         (sk_F_1 @ (k1_funct_1 @ (k5_relat_1 @ sk_C @ sk_B) @ sk_A) @ sk_A @ 
% 0.20/0.50          sk_B @ sk_C)) @ 
% 0.20/0.50        sk_C)),
% 0.20/0.50      inference('demod', [status(thm)], ['29', '30', '31'])).
% 0.20/0.50  thf('33', plain,
% 0.20/0.50      (![X12 : $i, X13 : $i, X14 : $i]:
% 0.20/0.50         (~ (r2_hidden @ (k4_tarski @ X12 @ X14) @ X13)
% 0.20/0.50          | ((X14) = (k1_funct_1 @ X13 @ X12))
% 0.20/0.50          | ~ (v1_funct_1 @ X13)
% 0.20/0.50          | ~ (v1_relat_1 @ X13))),
% 0.20/0.50      inference('cnf', [status(esa)], [t8_funct_1])).
% 0.20/0.50  thf('34', plain,
% 0.20/0.50      ((~ (v1_relat_1 @ sk_C)
% 0.20/0.50        | ~ (v1_funct_1 @ sk_C)
% 0.20/0.50        | ((sk_F_1 @ (k1_funct_1 @ (k5_relat_1 @ sk_C @ sk_B) @ sk_A) @ sk_A @ 
% 0.20/0.50            sk_B @ sk_C) = (k1_funct_1 @ sk_C @ sk_A)))),
% 0.20/0.50      inference('sup-', [status(thm)], ['32', '33'])).
% 0.20/0.50  thf('35', plain, ((v1_relat_1 @ sk_C)),
% 0.20/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.50  thf('36', plain, ((v1_funct_1 @ sk_C)),
% 0.20/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.50  thf('37', plain,
% 0.20/0.50      (((sk_F_1 @ (k1_funct_1 @ (k5_relat_1 @ sk_C @ sk_B) @ sk_A) @ sk_A @ 
% 0.20/0.50         sk_B @ sk_C) = (k1_funct_1 @ sk_C @ sk_A))),
% 0.20/0.50      inference('demod', [status(thm)], ['34', '35', '36'])).
% 0.20/0.50  thf('38', plain, ((v1_relat_1 @ sk_C)),
% 0.20/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.50  thf('39', plain,
% 0.20/0.50      (((r2_hidden @ 
% 0.20/0.50         (k4_tarski @ (k1_funct_1 @ sk_C @ sk_A) @ 
% 0.20/0.50          (k1_funct_1 @ (k5_relat_1 @ sk_C @ sk_B) @ sk_A)) @ 
% 0.20/0.50         sk_B)
% 0.20/0.50        | ~ (v1_relat_1 @ (k5_relat_1 @ sk_C @ sk_B)))),
% 0.20/0.50      inference('demod', [status(thm)], ['19', '20', '37', '38'])).
% 0.20/0.50  thf('40', plain,
% 0.20/0.50      ((~ (v1_relat_1 @ sk_B)
% 0.20/0.50        | ~ (v1_relat_1 @ sk_C)
% 0.20/0.50        | (r2_hidden @ 
% 0.20/0.50           (k4_tarski @ (k1_funct_1 @ sk_C @ sk_A) @ 
% 0.20/0.50            (k1_funct_1 @ (k5_relat_1 @ sk_C @ sk_B) @ sk_A)) @ 
% 0.20/0.50           sk_B))),
% 0.20/0.50      inference('sup-', [status(thm)], ['0', '39'])).
% 0.20/0.50  thf('41', plain, ((v1_relat_1 @ sk_B)),
% 0.20/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.50  thf('42', plain, ((v1_relat_1 @ sk_C)),
% 0.20/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.50  thf('43', plain,
% 0.20/0.50      ((r2_hidden @ 
% 0.20/0.50        (k4_tarski @ (k1_funct_1 @ sk_C @ sk_A) @ 
% 0.20/0.50         (k1_funct_1 @ (k5_relat_1 @ sk_C @ sk_B) @ sk_A)) @ 
% 0.20/0.50        sk_B)),
% 0.20/0.50      inference('demod', [status(thm)], ['40', '41', '42'])).
% 0.20/0.50  thf('44', plain,
% 0.20/0.50      (![X12 : $i, X13 : $i, X14 : $i]:
% 0.20/0.50         (~ (r2_hidden @ (k4_tarski @ X12 @ X14) @ X13)
% 0.20/0.50          | ((X14) = (k1_funct_1 @ X13 @ X12))
% 0.20/0.50          | ~ (v1_funct_1 @ X13)
% 0.20/0.50          | ~ (v1_relat_1 @ X13))),
% 0.20/0.50      inference('cnf', [status(esa)], [t8_funct_1])).
% 0.20/0.50  thf('45', plain,
% 0.20/0.50      ((~ (v1_relat_1 @ sk_B)
% 0.20/0.50        | ~ (v1_funct_1 @ sk_B)
% 0.20/0.50        | ((k1_funct_1 @ (k5_relat_1 @ sk_C @ sk_B) @ sk_A)
% 0.20/0.50            = (k1_funct_1 @ sk_B @ (k1_funct_1 @ sk_C @ sk_A))))),
% 0.20/0.50      inference('sup-', [status(thm)], ['43', '44'])).
% 0.20/0.50  thf('46', plain, ((v1_relat_1 @ sk_B)),
% 0.20/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.50  thf('47', plain, ((v1_funct_1 @ sk_B)),
% 0.20/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.50  thf('48', plain,
% 0.20/0.50      (((k1_funct_1 @ (k5_relat_1 @ sk_C @ sk_B) @ sk_A)
% 0.20/0.50         = (k1_funct_1 @ sk_B @ (k1_funct_1 @ sk_C @ sk_A)))),
% 0.20/0.50      inference('demod', [status(thm)], ['45', '46', '47'])).
% 0.20/0.50  thf('49', plain,
% 0.20/0.50      (((k1_funct_1 @ (k5_relat_1 @ sk_C @ sk_B) @ sk_A)
% 0.20/0.50         != (k1_funct_1 @ sk_B @ (k1_funct_1 @ sk_C @ sk_A)))),
% 0.20/0.50      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.50  thf('50', plain, ($false),
% 0.20/0.50      inference('simplify_reflect-', [status(thm)], ['48', '49'])).
% 0.20/0.50  
% 0.20/0.50  % SZS output end Refutation
% 0.20/0.50  
% 0.20/0.51  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
