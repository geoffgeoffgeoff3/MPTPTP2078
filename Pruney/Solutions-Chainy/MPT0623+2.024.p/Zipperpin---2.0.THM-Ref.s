%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.aMA1UCjQt1

% Computer   : n023.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:44:39 EST 2020

% Result     : Theorem 0.21s
% Output     : Refutation 0.21s
% Verified   : 
% Statistics : Number of formulae       :   83 ( 116 expanded)
%              Number of leaves         :   22 (  44 expanded)
%              Depth                    :   14
%              Number of atoms          :  601 (1085 expanded)
%              Number of equality atoms :   93 ( 172 expanded)
%              Maximal formula depth    :   14 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(sk_C_1_type,type,(
    sk_C_1: $i > $i > $i )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(sk_B_1_type,type,(
    sk_B_1: $i )).

thf(sk_C_type,type,(
    sk_C: $i > $i > $i )).

thf(k1_funct_1_type,type,(
    k1_funct_1: $i > $i > $i )).

thf(sk_B_type,type,(
    sk_B: $i > $i )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(k1_tarski_type,type,(
    k1_tarski: $i > $i )).

thf(k2_relat_1_type,type,(
    k2_relat_1: $i > $i )).

thf(v1_funct_1_type,type,(
    v1_funct_1: $i > $o )).

thf(k1_relat_1_type,type,(
    k1_relat_1: $i > $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(t15_funct_1,axiom,(
    ! [A: $i] :
      ( ( A != k1_xboole_0 )
     => ! [B: $i] :
        ? [C: $i] :
          ( ( ( k2_relat_1 @ C )
            = ( k1_tarski @ B ) )
          & ( ( k1_relat_1 @ C )
            = A )
          & ( v1_funct_1 @ C )
          & ( v1_relat_1 @ C ) ) ) )).

thf('0',plain,(
    ! [X14: $i,X15: $i] :
      ( ( ( k1_relat_1 @ ( sk_C_1 @ X14 @ X15 ) )
        = X15 )
      | ( X15 = k1_xboole_0 ) ) ),
    inference(cnf,[status(esa)],[t15_funct_1])).

thf('1',plain,(
    ! [X14: $i,X15: $i] :
      ( ( v1_relat_1 @ ( sk_C_1 @ X14 @ X15 ) )
      | ( X15 = k1_xboole_0 ) ) ),
    inference(cnf,[status(esa)],[t15_funct_1])).

thf('2',plain,(
    ! [X14: $i,X15: $i] :
      ( ( v1_funct_1 @ ( sk_C_1 @ X14 @ X15 ) )
      | ( X15 = k1_xboole_0 ) ) ),
    inference(cnf,[status(esa)],[t15_funct_1])).

thf(d3_tarski,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_tarski @ A @ B )
    <=> ! [C: $i] :
          ( ( r2_hidden @ C @ A )
         => ( r2_hidden @ C @ B ) ) ) )).

thf('3',plain,(
    ! [X1: $i,X3: $i] :
      ( ( r1_tarski @ X1 @ X3 )
      | ( r2_hidden @ ( sk_C @ X3 @ X1 ) @ X1 ) ) ),
    inference(cnf,[status(esa)],[d3_tarski])).

thf(l1_zfmisc_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_tarski @ ( k1_tarski @ A ) @ B )
    <=> ( r2_hidden @ A @ B ) ) )).

thf('4',plain,(
    ! [X8: $i,X10: $i] :
      ( ( r1_tarski @ ( k1_tarski @ X8 ) @ X10 )
      | ~ ( r2_hidden @ X8 @ X10 ) ) ),
    inference(cnf,[status(esa)],[l1_zfmisc_1])).

thf('5',plain,(
    ! [X0: $i,X1: $i] :
      ( ( r1_tarski @ X0 @ X1 )
      | ( r1_tarski @ ( k1_tarski @ ( sk_C @ X1 @ X0 ) ) @ X0 ) ) ),
    inference('sup-',[status(thm)],['3','4'])).

thf('6',plain,(
    ! [X14: $i,X15: $i] :
      ( ( ( k2_relat_1 @ ( sk_C_1 @ X14 @ X15 ) )
        = ( k1_tarski @ X14 ) )
      | ( X15 = k1_xboole_0 ) ) ),
    inference(cnf,[status(esa)],[t15_funct_1])).

thf(t18_funct_1,conjecture,(
    ! [A: $i,B: $i] :
      ~ ( ~ ( ( A = k1_xboole_0 )
            & ( B != k1_xboole_0 ) )
        & ! [C: $i] :
            ( ( ( v1_relat_1 @ C )
              & ( v1_funct_1 @ C ) )
           => ~ ( ( B
                  = ( k1_relat_1 @ C ) )
                & ( r1_tarski @ ( k2_relat_1 @ C ) @ A ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i] :
        ~ ( ~ ( ( A = k1_xboole_0 )
              & ( B != k1_xboole_0 ) )
          & ! [C: $i] :
              ( ( ( v1_relat_1 @ C )
                & ( v1_funct_1 @ C ) )
             => ~ ( ( B
                    = ( k1_relat_1 @ C ) )
                  & ( r1_tarski @ ( k2_relat_1 @ C ) @ A ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t18_funct_1])).

thf('7',plain,(
    ! [X16: $i] :
      ( ~ ( r1_tarski @ ( k2_relat_1 @ X16 ) @ sk_A )
      | ( sk_B_1
       != ( k1_relat_1 @ X16 ) )
      | ~ ( v1_funct_1 @ X16 )
      | ~ ( v1_relat_1 @ X16 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('8',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( r1_tarski @ ( k1_tarski @ X0 ) @ sk_A )
      | ( X1 = k1_xboole_0 )
      | ~ ( v1_relat_1 @ ( sk_C_1 @ X0 @ X1 ) )
      | ~ ( v1_funct_1 @ ( sk_C_1 @ X0 @ X1 ) )
      | ( sk_B_1
       != ( k1_relat_1 @ ( sk_C_1 @ X0 @ X1 ) ) ) ) ),
    inference('sup-',[status(thm)],['6','7'])).

thf('9',plain,(
    ! [X0: $i,X1: $i] :
      ( ( r1_tarski @ sk_A @ X0 )
      | ( sk_B_1
       != ( k1_relat_1 @ ( sk_C_1 @ ( sk_C @ X0 @ sk_A ) @ X1 ) ) )
      | ~ ( v1_funct_1 @ ( sk_C_1 @ ( sk_C @ X0 @ sk_A ) @ X1 ) )
      | ~ ( v1_relat_1 @ ( sk_C_1 @ ( sk_C @ X0 @ sk_A ) @ X1 ) )
      | ( X1 = k1_xboole_0 ) ) ),
    inference('sup-',[status(thm)],['5','8'])).

thf('10',plain,(
    ! [X0: $i,X1: $i] :
      ( ( X0 = k1_xboole_0 )
      | ( X0 = k1_xboole_0 )
      | ~ ( v1_relat_1 @ ( sk_C_1 @ ( sk_C @ X1 @ sk_A ) @ X0 ) )
      | ( sk_B_1
       != ( k1_relat_1 @ ( sk_C_1 @ ( sk_C @ X1 @ sk_A ) @ X0 ) ) )
      | ( r1_tarski @ sk_A @ X1 ) ) ),
    inference('sup-',[status(thm)],['2','9'])).

thf('11',plain,(
    ! [X0: $i,X1: $i] :
      ( ( r1_tarski @ sk_A @ X1 )
      | ( sk_B_1
       != ( k1_relat_1 @ ( sk_C_1 @ ( sk_C @ X1 @ sk_A ) @ X0 ) ) )
      | ~ ( v1_relat_1 @ ( sk_C_1 @ ( sk_C @ X1 @ sk_A ) @ X0 ) )
      | ( X0 = k1_xboole_0 ) ) ),
    inference(simplify,[status(thm)],['10'])).

thf('12',plain,(
    ! [X0: $i,X1: $i] :
      ( ( X0 = k1_xboole_0 )
      | ( X0 = k1_xboole_0 )
      | ( sk_B_1
       != ( k1_relat_1 @ ( sk_C_1 @ ( sk_C @ X1 @ sk_A ) @ X0 ) ) )
      | ( r1_tarski @ sk_A @ X1 ) ) ),
    inference('sup-',[status(thm)],['1','11'])).

thf('13',plain,(
    ! [X0: $i,X1: $i] :
      ( ( r1_tarski @ sk_A @ X1 )
      | ( sk_B_1
       != ( k1_relat_1 @ ( sk_C_1 @ ( sk_C @ X1 @ sk_A ) @ X0 ) ) )
      | ( X0 = k1_xboole_0 ) ) ),
    inference(simplify,[status(thm)],['12'])).

thf('14',plain,(
    ! [X0: $i,X1: $i] :
      ( ( sk_B_1 != X0 )
      | ( X0 = k1_xboole_0 )
      | ( X0 = k1_xboole_0 )
      | ( r1_tarski @ sk_A @ X1 ) ) ),
    inference('sup-',[status(thm)],['0','13'])).

thf('15',plain,(
    ! [X1: $i] :
      ( ( r1_tarski @ sk_A @ X1 )
      | ( sk_B_1 = k1_xboole_0 ) ) ),
    inference(simplify,[status(thm)],['14'])).

thf(s3_funct_1__e2_25__funct_1,axiom,(
    ! [A: $i] :
    ? [B: $i] :
      ( ! [C: $i] :
          ( ( r2_hidden @ C @ A )
         => ( ( k1_funct_1 @ B @ C )
            = k1_xboole_0 ) )
      & ( ( k1_relat_1 @ B )
        = A )
      & ( v1_funct_1 @ B )
      & ( v1_relat_1 @ B ) ) )).

thf('16',plain,(
    ! [X12: $i] :
      ( ( k1_relat_1 @ ( sk_B @ X12 ) )
      = X12 ) ),
    inference(cnf,[status(esa)],[s3_funct_1__e2_25__funct_1])).

thf(t65_relat_1,axiom,(
    ! [A: $i] :
      ( ( v1_relat_1 @ A )
     => ( ( ( k1_relat_1 @ A )
          = k1_xboole_0 )
      <=> ( ( k2_relat_1 @ A )
          = k1_xboole_0 ) ) ) )).

thf('17',plain,(
    ! [X11: $i] :
      ( ( ( k1_relat_1 @ X11 )
       != k1_xboole_0 )
      | ( ( k2_relat_1 @ X11 )
        = k1_xboole_0 )
      | ~ ( v1_relat_1 @ X11 ) ) ),
    inference(cnf,[status(esa)],[t65_relat_1])).

thf('18',plain,(
    ! [X0: $i] :
      ( ( X0 != k1_xboole_0 )
      | ~ ( v1_relat_1 @ ( sk_B @ X0 ) )
      | ( ( k2_relat_1 @ ( sk_B @ X0 ) )
        = k1_xboole_0 ) ) ),
    inference('sup-',[status(thm)],['16','17'])).

thf('19',plain,(
    ! [X12: $i] :
      ( v1_relat_1 @ ( sk_B @ X12 ) ) ),
    inference(cnf,[status(esa)],[s3_funct_1__e2_25__funct_1])).

thf('20',plain,(
    ! [X0: $i] :
      ( ( X0 != k1_xboole_0 )
      | ( ( k2_relat_1 @ ( sk_B @ X0 ) )
        = k1_xboole_0 ) ) ),
    inference(demod,[status(thm)],['18','19'])).

thf('21',plain,
    ( ( k2_relat_1 @ ( sk_B @ k1_xboole_0 ) )
    = k1_xboole_0 ),
    inference(simplify,[status(thm)],['20'])).

thf('22',plain,(
    ! [X16: $i] :
      ( ~ ( r1_tarski @ ( k2_relat_1 @ X16 ) @ sk_A )
      | ( sk_B_1
       != ( k1_relat_1 @ X16 ) )
      | ~ ( v1_funct_1 @ X16 )
      | ~ ( v1_relat_1 @ X16 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('23',plain,
    ( ~ ( r1_tarski @ k1_xboole_0 @ sk_A )
    | ~ ( v1_relat_1 @ ( sk_B @ k1_xboole_0 ) )
    | ~ ( v1_funct_1 @ ( sk_B @ k1_xboole_0 ) )
    | ( sk_B_1
     != ( k1_relat_1 @ ( sk_B @ k1_xboole_0 ) ) ) ),
    inference('sup-',[status(thm)],['21','22'])).

thf(t2_xboole_1,axiom,(
    ! [A: $i] :
      ( r1_tarski @ k1_xboole_0 @ A ) )).

thf('24',plain,(
    ! [X7: $i] :
      ( r1_tarski @ k1_xboole_0 @ X7 ) ),
    inference(cnf,[status(esa)],[t2_xboole_1])).

thf('25',plain,(
    ! [X12: $i] :
      ( v1_relat_1 @ ( sk_B @ X12 ) ) ),
    inference(cnf,[status(esa)],[s3_funct_1__e2_25__funct_1])).

thf('26',plain,(
    ! [X12: $i] :
      ( v1_funct_1 @ ( sk_B @ X12 ) ) ),
    inference(cnf,[status(esa)],[s3_funct_1__e2_25__funct_1])).

thf('27',plain,(
    ! [X12: $i] :
      ( ( k1_relat_1 @ ( sk_B @ X12 ) )
      = X12 ) ),
    inference(cnf,[status(esa)],[s3_funct_1__e2_25__funct_1])).

thf('28',plain,(
    sk_B_1 != k1_xboole_0 ),
    inference(demod,[status(thm)],['23','24','25','26','27'])).

thf('29',plain,(
    ! [X1: $i] :
      ( r1_tarski @ sk_A @ X1 ) ),
    inference('simplify_reflect-',[status(thm)],['15','28'])).

thf('30',plain,(
    ! [X7: $i] :
      ( r1_tarski @ k1_xboole_0 @ X7 ) ),
    inference(cnf,[status(esa)],[t2_xboole_1])).

thf(d10_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ( A = B )
    <=> ( ( r1_tarski @ A @ B )
        & ( r1_tarski @ B @ A ) ) ) )).

thf('31',plain,(
    ! [X4: $i,X6: $i] :
      ( ( X4 = X6 )
      | ~ ( r1_tarski @ X6 @ X4 )
      | ~ ( r1_tarski @ X4 @ X6 ) ) ),
    inference(cnf,[status(esa)],[d10_xboole_0])).

thf('32',plain,(
    ! [X0: $i] :
      ( ~ ( r1_tarski @ X0 @ k1_xboole_0 )
      | ( X0 = k1_xboole_0 ) ) ),
    inference('sup-',[status(thm)],['30','31'])).

thf('33',plain,(
    sk_A = k1_xboole_0 ),
    inference('sup-',[status(thm)],['29','32'])).

thf('34',plain,
    ( ( sk_A != k1_xboole_0 )
    | ( sk_B_1 = k1_xboole_0 ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('35',plain,
    ( ( sk_A != k1_xboole_0 )
   <= ( sk_A != k1_xboole_0 ) ),
    inference(split,[status(esa)],['34'])).

thf('36',plain,(
    ! [X12: $i] :
      ( ( k1_relat_1 @ ( sk_B @ X12 ) )
      = X12 ) ),
    inference(cnf,[status(esa)],[s3_funct_1__e2_25__funct_1])).

thf('37',plain,
    ( ( sk_B_1 = k1_xboole_0 )
   <= ( sk_B_1 = k1_xboole_0 ) ),
    inference(split,[status(esa)],['34'])).

thf('38',plain,(
    ! [X11: $i] :
      ( ( ( k1_relat_1 @ X11 )
       != k1_xboole_0 )
      | ( ( k2_relat_1 @ X11 )
        = k1_xboole_0 )
      | ~ ( v1_relat_1 @ X11 ) ) ),
    inference(cnf,[status(esa)],[t65_relat_1])).

thf('39',plain,
    ( ! [X0: $i] :
        ( ( ( k1_relat_1 @ X0 )
         != sk_B_1 )
        | ~ ( v1_relat_1 @ X0 )
        | ( ( k2_relat_1 @ X0 )
          = k1_xboole_0 ) )
   <= ( sk_B_1 = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['37','38'])).

thf('40',plain,
    ( ( sk_B_1 = k1_xboole_0 )
   <= ( sk_B_1 = k1_xboole_0 ) ),
    inference(split,[status(esa)],['34'])).

thf('41',plain,
    ( ! [X0: $i] :
        ( ( ( k1_relat_1 @ X0 )
         != sk_B_1 )
        | ~ ( v1_relat_1 @ X0 )
        | ( ( k2_relat_1 @ X0 )
          = sk_B_1 ) )
   <= ( sk_B_1 = k1_xboole_0 ) ),
    inference(demod,[status(thm)],['39','40'])).

thf('42',plain,
    ( ! [X0: $i] :
        ( ( X0 != sk_B_1 )
        | ( ( k2_relat_1 @ ( sk_B @ X0 ) )
          = sk_B_1 )
        | ~ ( v1_relat_1 @ ( sk_B @ X0 ) ) )
   <= ( sk_B_1 = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['36','41'])).

thf('43',plain,(
    ! [X12: $i] :
      ( v1_relat_1 @ ( sk_B @ X12 ) ) ),
    inference(cnf,[status(esa)],[s3_funct_1__e2_25__funct_1])).

thf('44',plain,
    ( ! [X0: $i] :
        ( ( X0 != sk_B_1 )
        | ( ( k2_relat_1 @ ( sk_B @ X0 ) )
          = sk_B_1 ) )
   <= ( sk_B_1 = k1_xboole_0 ) ),
    inference(demod,[status(thm)],['42','43'])).

thf('45',plain,
    ( ( ( k2_relat_1 @ ( sk_B @ sk_B_1 ) )
      = sk_B_1 )
   <= ( sk_B_1 = k1_xboole_0 ) ),
    inference(simplify,[status(thm)],['44'])).

thf('46',plain,(
    ! [X16: $i] :
      ( ~ ( r1_tarski @ ( k2_relat_1 @ X16 ) @ sk_A )
      | ( sk_B_1
       != ( k1_relat_1 @ X16 ) )
      | ~ ( v1_funct_1 @ X16 )
      | ~ ( v1_relat_1 @ X16 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('47',plain,
    ( ( ~ ( r1_tarski @ sk_B_1 @ sk_A )
      | ~ ( v1_relat_1 @ ( sk_B @ sk_B_1 ) )
      | ~ ( v1_funct_1 @ ( sk_B @ sk_B_1 ) )
      | ( sk_B_1
       != ( k1_relat_1 @ ( sk_B @ sk_B_1 ) ) ) )
   <= ( sk_B_1 = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['45','46'])).

thf('48',plain,
    ( ( sk_B_1 = k1_xboole_0 )
   <= ( sk_B_1 = k1_xboole_0 ) ),
    inference(split,[status(esa)],['34'])).

thf('49',plain,(
    ! [X7: $i] :
      ( r1_tarski @ k1_xboole_0 @ X7 ) ),
    inference(cnf,[status(esa)],[t2_xboole_1])).

thf('50',plain,
    ( ! [X0: $i] :
        ( r1_tarski @ sk_B_1 @ X0 )
   <= ( sk_B_1 = k1_xboole_0 ) ),
    inference('sup+',[status(thm)],['48','49'])).

thf('51',plain,(
    ! [X12: $i] :
      ( v1_relat_1 @ ( sk_B @ X12 ) ) ),
    inference(cnf,[status(esa)],[s3_funct_1__e2_25__funct_1])).

thf('52',plain,(
    ! [X12: $i] :
      ( v1_funct_1 @ ( sk_B @ X12 ) ) ),
    inference(cnf,[status(esa)],[s3_funct_1__e2_25__funct_1])).

thf('53',plain,(
    ! [X12: $i] :
      ( ( k1_relat_1 @ ( sk_B @ X12 ) )
      = X12 ) ),
    inference(cnf,[status(esa)],[s3_funct_1__e2_25__funct_1])).

thf('54',plain,
    ( ( sk_B_1 != sk_B_1 )
   <= ( sk_B_1 = k1_xboole_0 ) ),
    inference(demod,[status(thm)],['47','50','51','52','53'])).

thf('55',plain,(
    sk_B_1 != k1_xboole_0 ),
    inference(simplify,[status(thm)],['54'])).

thf('56',plain,
    ( ( sk_A != k1_xboole_0 )
    | ( sk_B_1 = k1_xboole_0 ) ),
    inference(split,[status(esa)],['34'])).

thf('57',plain,(
    sk_A != k1_xboole_0 ),
    inference('sat_resolution*',[status(thm)],['55','56'])).

thf('58',plain,(
    sk_A != k1_xboole_0 ),
    inference(simpl_trail,[status(thm)],['35','57'])).

thf('59',plain,(
    $false ),
    inference('simplify_reflect-',[status(thm)],['33','58'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.aMA1UCjQt1
% 0.13/0.34  % Computer   : n023.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 16:59:51 EST 2020
% 0.13/0.35  % CPUTime    : 
% 0.13/0.35  % Running portfolio for 600 s
% 0.13/0.35  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.13/0.35  % Number of cores: 8
% 0.13/0.35  % Python version: Python 3.6.8
% 0.13/0.35  % Running in FO mode
% 0.21/0.48  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.21/0.48  % Solved by: fo/fo7.sh
% 0.21/0.48  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.21/0.48  % done 48 iterations in 0.022s
% 0.21/0.48  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.21/0.48  % SZS output start Refutation
% 0.21/0.48  thf(sk_C_1_type, type, sk_C_1: $i > $i > $i).
% 0.21/0.48  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.21/0.48  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 0.21/0.48  thf(sk_B_1_type, type, sk_B_1: $i).
% 0.21/0.48  thf(sk_C_type, type, sk_C: $i > $i > $i).
% 0.21/0.48  thf(k1_funct_1_type, type, k1_funct_1: $i > $i > $i).
% 0.21/0.48  thf(sk_B_type, type, sk_B: $i > $i).
% 0.21/0.48  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.21/0.48  thf(k1_tarski_type, type, k1_tarski: $i > $i).
% 0.21/0.48  thf(k2_relat_1_type, type, k2_relat_1: $i > $i).
% 0.21/0.48  thf(v1_funct_1_type, type, v1_funct_1: $i > $o).
% 0.21/0.48  thf(k1_relat_1_type, type, k1_relat_1: $i > $i).
% 0.21/0.48  thf(sk_A_type, type, sk_A: $i).
% 0.21/0.48  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 0.21/0.48  thf(t15_funct_1, axiom,
% 0.21/0.48    (![A:$i]:
% 0.21/0.48     ( ( ( A ) != ( k1_xboole_0 ) ) =>
% 0.21/0.48       ( ![B:$i]:
% 0.21/0.48         ( ?[C:$i]:
% 0.21/0.48           ( ( ( k2_relat_1 @ C ) = ( k1_tarski @ B ) ) & 
% 0.21/0.48             ( ( k1_relat_1 @ C ) = ( A ) ) & ( v1_funct_1 @ C ) & 
% 0.21/0.48             ( v1_relat_1 @ C ) ) ) ) ))).
% 0.21/0.48  thf('0', plain,
% 0.21/0.48      (![X14 : $i, X15 : $i]:
% 0.21/0.48         (((k1_relat_1 @ (sk_C_1 @ X14 @ X15)) = (X15))
% 0.21/0.48          | ((X15) = (k1_xboole_0)))),
% 0.21/0.48      inference('cnf', [status(esa)], [t15_funct_1])).
% 0.21/0.48  thf('1', plain,
% 0.21/0.48      (![X14 : $i, X15 : $i]:
% 0.21/0.48         ((v1_relat_1 @ (sk_C_1 @ X14 @ X15)) | ((X15) = (k1_xboole_0)))),
% 0.21/0.48      inference('cnf', [status(esa)], [t15_funct_1])).
% 0.21/0.48  thf('2', plain,
% 0.21/0.48      (![X14 : $i, X15 : $i]:
% 0.21/0.48         ((v1_funct_1 @ (sk_C_1 @ X14 @ X15)) | ((X15) = (k1_xboole_0)))),
% 0.21/0.48      inference('cnf', [status(esa)], [t15_funct_1])).
% 0.21/0.48  thf(d3_tarski, axiom,
% 0.21/0.48    (![A:$i,B:$i]:
% 0.21/0.48     ( ( r1_tarski @ A @ B ) <=>
% 0.21/0.48       ( ![C:$i]: ( ( r2_hidden @ C @ A ) => ( r2_hidden @ C @ B ) ) ) ))).
% 0.21/0.48  thf('3', plain,
% 0.21/0.48      (![X1 : $i, X3 : $i]:
% 0.21/0.48         ((r1_tarski @ X1 @ X3) | (r2_hidden @ (sk_C @ X3 @ X1) @ X1))),
% 0.21/0.48      inference('cnf', [status(esa)], [d3_tarski])).
% 0.21/0.48  thf(l1_zfmisc_1, axiom,
% 0.21/0.48    (![A:$i,B:$i]:
% 0.21/0.48     ( ( r1_tarski @ ( k1_tarski @ A ) @ B ) <=> ( r2_hidden @ A @ B ) ))).
% 0.21/0.48  thf('4', plain,
% 0.21/0.48      (![X8 : $i, X10 : $i]:
% 0.21/0.48         ((r1_tarski @ (k1_tarski @ X8) @ X10) | ~ (r2_hidden @ X8 @ X10))),
% 0.21/0.48      inference('cnf', [status(esa)], [l1_zfmisc_1])).
% 0.21/0.48  thf('5', plain,
% 0.21/0.48      (![X0 : $i, X1 : $i]:
% 0.21/0.48         ((r1_tarski @ X0 @ X1)
% 0.21/0.48          | (r1_tarski @ (k1_tarski @ (sk_C @ X1 @ X0)) @ X0))),
% 0.21/0.48      inference('sup-', [status(thm)], ['3', '4'])).
% 0.21/0.48  thf('6', plain,
% 0.21/0.48      (![X14 : $i, X15 : $i]:
% 0.21/0.48         (((k2_relat_1 @ (sk_C_1 @ X14 @ X15)) = (k1_tarski @ X14))
% 0.21/0.48          | ((X15) = (k1_xboole_0)))),
% 0.21/0.48      inference('cnf', [status(esa)], [t15_funct_1])).
% 0.21/0.48  thf(t18_funct_1, conjecture,
% 0.21/0.48    (![A:$i,B:$i]:
% 0.21/0.48     ( ~( ( ~( ( ( A ) = ( k1_xboole_0 ) ) & ( ( B ) != ( k1_xboole_0 ) ) ) ) & 
% 0.21/0.48          ( ![C:$i]:
% 0.21/0.48            ( ( ( v1_relat_1 @ C ) & ( v1_funct_1 @ C ) ) =>
% 0.21/0.48              ( ~( ( ( B ) = ( k1_relat_1 @ C ) ) & 
% 0.21/0.48                   ( r1_tarski @ ( k2_relat_1 @ C ) @ A ) ) ) ) ) ) ))).
% 0.21/0.48  thf(zf_stmt_0, negated_conjecture,
% 0.21/0.48    (~( ![A:$i,B:$i]:
% 0.21/0.48        ( ~( ( ~( ( ( A ) = ( k1_xboole_0 ) ) & ( ( B ) != ( k1_xboole_0 ) ) ) ) & 
% 0.21/0.48             ( ![C:$i]:
% 0.21/0.48               ( ( ( v1_relat_1 @ C ) & ( v1_funct_1 @ C ) ) =>
% 0.21/0.48                 ( ~( ( ( B ) = ( k1_relat_1 @ C ) ) & 
% 0.21/0.48                      ( r1_tarski @ ( k2_relat_1 @ C ) @ A ) ) ) ) ) ) ) )),
% 0.21/0.48    inference('cnf.neg', [status(esa)], [t18_funct_1])).
% 0.21/0.48  thf('7', plain,
% 0.21/0.48      (![X16 : $i]:
% 0.21/0.48         (~ (r1_tarski @ (k2_relat_1 @ X16) @ sk_A)
% 0.21/0.48          | ((sk_B_1) != (k1_relat_1 @ X16))
% 0.21/0.48          | ~ (v1_funct_1 @ X16)
% 0.21/0.48          | ~ (v1_relat_1 @ X16))),
% 0.21/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.48  thf('8', plain,
% 0.21/0.48      (![X0 : $i, X1 : $i]:
% 0.21/0.48         (~ (r1_tarski @ (k1_tarski @ X0) @ sk_A)
% 0.21/0.48          | ((X1) = (k1_xboole_0))
% 0.21/0.48          | ~ (v1_relat_1 @ (sk_C_1 @ X0 @ X1))
% 0.21/0.48          | ~ (v1_funct_1 @ (sk_C_1 @ X0 @ X1))
% 0.21/0.48          | ((sk_B_1) != (k1_relat_1 @ (sk_C_1 @ X0 @ X1))))),
% 0.21/0.48      inference('sup-', [status(thm)], ['6', '7'])).
% 0.21/0.48  thf('9', plain,
% 0.21/0.48      (![X0 : $i, X1 : $i]:
% 0.21/0.48         ((r1_tarski @ sk_A @ X0)
% 0.21/0.48          | ((sk_B_1) != (k1_relat_1 @ (sk_C_1 @ (sk_C @ X0 @ sk_A) @ X1)))
% 0.21/0.48          | ~ (v1_funct_1 @ (sk_C_1 @ (sk_C @ X0 @ sk_A) @ X1))
% 0.21/0.48          | ~ (v1_relat_1 @ (sk_C_1 @ (sk_C @ X0 @ sk_A) @ X1))
% 0.21/0.48          | ((X1) = (k1_xboole_0)))),
% 0.21/0.48      inference('sup-', [status(thm)], ['5', '8'])).
% 0.21/0.48  thf('10', plain,
% 0.21/0.48      (![X0 : $i, X1 : $i]:
% 0.21/0.48         (((X0) = (k1_xboole_0))
% 0.21/0.48          | ((X0) = (k1_xboole_0))
% 0.21/0.48          | ~ (v1_relat_1 @ (sk_C_1 @ (sk_C @ X1 @ sk_A) @ X0))
% 0.21/0.48          | ((sk_B_1) != (k1_relat_1 @ (sk_C_1 @ (sk_C @ X1 @ sk_A) @ X0)))
% 0.21/0.48          | (r1_tarski @ sk_A @ X1))),
% 0.21/0.48      inference('sup-', [status(thm)], ['2', '9'])).
% 0.21/0.48  thf('11', plain,
% 0.21/0.48      (![X0 : $i, X1 : $i]:
% 0.21/0.48         ((r1_tarski @ sk_A @ X1)
% 0.21/0.48          | ((sk_B_1) != (k1_relat_1 @ (sk_C_1 @ (sk_C @ X1 @ sk_A) @ X0)))
% 0.21/0.48          | ~ (v1_relat_1 @ (sk_C_1 @ (sk_C @ X1 @ sk_A) @ X0))
% 0.21/0.48          | ((X0) = (k1_xboole_0)))),
% 0.21/0.48      inference('simplify', [status(thm)], ['10'])).
% 0.21/0.48  thf('12', plain,
% 0.21/0.48      (![X0 : $i, X1 : $i]:
% 0.21/0.48         (((X0) = (k1_xboole_0))
% 0.21/0.48          | ((X0) = (k1_xboole_0))
% 0.21/0.48          | ((sk_B_1) != (k1_relat_1 @ (sk_C_1 @ (sk_C @ X1 @ sk_A) @ X0)))
% 0.21/0.48          | (r1_tarski @ sk_A @ X1))),
% 0.21/0.48      inference('sup-', [status(thm)], ['1', '11'])).
% 0.21/0.48  thf('13', plain,
% 0.21/0.48      (![X0 : $i, X1 : $i]:
% 0.21/0.48         ((r1_tarski @ sk_A @ X1)
% 0.21/0.48          | ((sk_B_1) != (k1_relat_1 @ (sk_C_1 @ (sk_C @ X1 @ sk_A) @ X0)))
% 0.21/0.48          | ((X0) = (k1_xboole_0)))),
% 0.21/0.48      inference('simplify', [status(thm)], ['12'])).
% 0.21/0.48  thf('14', plain,
% 0.21/0.48      (![X0 : $i, X1 : $i]:
% 0.21/0.48         (((sk_B_1) != (X0))
% 0.21/0.48          | ((X0) = (k1_xboole_0))
% 0.21/0.48          | ((X0) = (k1_xboole_0))
% 0.21/0.48          | (r1_tarski @ sk_A @ X1))),
% 0.21/0.48      inference('sup-', [status(thm)], ['0', '13'])).
% 0.21/0.48  thf('15', plain,
% 0.21/0.48      (![X1 : $i]: ((r1_tarski @ sk_A @ X1) | ((sk_B_1) = (k1_xboole_0)))),
% 0.21/0.48      inference('simplify', [status(thm)], ['14'])).
% 0.21/0.48  thf(s3_funct_1__e2_25__funct_1, axiom,
% 0.21/0.48    (![A:$i]:
% 0.21/0.48     ( ?[B:$i]:
% 0.21/0.48       ( ( ![C:$i]:
% 0.21/0.48           ( ( r2_hidden @ C @ A ) =>
% 0.21/0.48             ( ( k1_funct_1 @ B @ C ) = ( k1_xboole_0 ) ) ) ) & 
% 0.21/0.48         ( ( k1_relat_1 @ B ) = ( A ) ) & ( v1_funct_1 @ B ) & 
% 0.21/0.48         ( v1_relat_1 @ B ) ) ))).
% 0.21/0.48  thf('16', plain, (![X12 : $i]: ((k1_relat_1 @ (sk_B @ X12)) = (X12))),
% 0.21/0.48      inference('cnf', [status(esa)], [s3_funct_1__e2_25__funct_1])).
% 0.21/0.48  thf(t65_relat_1, axiom,
% 0.21/0.48    (![A:$i]:
% 0.21/0.48     ( ( v1_relat_1 @ A ) =>
% 0.21/0.48       ( ( ( k1_relat_1 @ A ) = ( k1_xboole_0 ) ) <=>
% 0.21/0.48         ( ( k2_relat_1 @ A ) = ( k1_xboole_0 ) ) ) ))).
% 0.21/0.48  thf('17', plain,
% 0.21/0.48      (![X11 : $i]:
% 0.21/0.48         (((k1_relat_1 @ X11) != (k1_xboole_0))
% 0.21/0.48          | ((k2_relat_1 @ X11) = (k1_xboole_0))
% 0.21/0.48          | ~ (v1_relat_1 @ X11))),
% 0.21/0.48      inference('cnf', [status(esa)], [t65_relat_1])).
% 0.21/0.48  thf('18', plain,
% 0.21/0.48      (![X0 : $i]:
% 0.21/0.48         (((X0) != (k1_xboole_0))
% 0.21/0.48          | ~ (v1_relat_1 @ (sk_B @ X0))
% 0.21/0.48          | ((k2_relat_1 @ (sk_B @ X0)) = (k1_xboole_0)))),
% 0.21/0.48      inference('sup-', [status(thm)], ['16', '17'])).
% 0.21/0.48  thf('19', plain, (![X12 : $i]: (v1_relat_1 @ (sk_B @ X12))),
% 0.21/0.48      inference('cnf', [status(esa)], [s3_funct_1__e2_25__funct_1])).
% 0.21/0.48  thf('20', plain,
% 0.21/0.48      (![X0 : $i]:
% 0.21/0.48         (((X0) != (k1_xboole_0))
% 0.21/0.48          | ((k2_relat_1 @ (sk_B @ X0)) = (k1_xboole_0)))),
% 0.21/0.48      inference('demod', [status(thm)], ['18', '19'])).
% 0.21/0.48  thf('21', plain, (((k2_relat_1 @ (sk_B @ k1_xboole_0)) = (k1_xboole_0))),
% 0.21/0.48      inference('simplify', [status(thm)], ['20'])).
% 0.21/0.48  thf('22', plain,
% 0.21/0.48      (![X16 : $i]:
% 0.21/0.48         (~ (r1_tarski @ (k2_relat_1 @ X16) @ sk_A)
% 0.21/0.48          | ((sk_B_1) != (k1_relat_1 @ X16))
% 0.21/0.48          | ~ (v1_funct_1 @ X16)
% 0.21/0.48          | ~ (v1_relat_1 @ X16))),
% 0.21/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.48  thf('23', plain,
% 0.21/0.48      ((~ (r1_tarski @ k1_xboole_0 @ sk_A)
% 0.21/0.48        | ~ (v1_relat_1 @ (sk_B @ k1_xboole_0))
% 0.21/0.48        | ~ (v1_funct_1 @ (sk_B @ k1_xboole_0))
% 0.21/0.48        | ((sk_B_1) != (k1_relat_1 @ (sk_B @ k1_xboole_0))))),
% 0.21/0.48      inference('sup-', [status(thm)], ['21', '22'])).
% 0.21/0.48  thf(t2_xboole_1, axiom, (![A:$i]: ( r1_tarski @ k1_xboole_0 @ A ))).
% 0.21/0.48  thf('24', plain, (![X7 : $i]: (r1_tarski @ k1_xboole_0 @ X7)),
% 0.21/0.48      inference('cnf', [status(esa)], [t2_xboole_1])).
% 0.21/0.48  thf('25', plain, (![X12 : $i]: (v1_relat_1 @ (sk_B @ X12))),
% 0.21/0.48      inference('cnf', [status(esa)], [s3_funct_1__e2_25__funct_1])).
% 0.21/0.48  thf('26', plain, (![X12 : $i]: (v1_funct_1 @ (sk_B @ X12))),
% 0.21/0.48      inference('cnf', [status(esa)], [s3_funct_1__e2_25__funct_1])).
% 0.21/0.48  thf('27', plain, (![X12 : $i]: ((k1_relat_1 @ (sk_B @ X12)) = (X12))),
% 0.21/0.48      inference('cnf', [status(esa)], [s3_funct_1__e2_25__funct_1])).
% 0.21/0.48  thf('28', plain, (((sk_B_1) != (k1_xboole_0))),
% 0.21/0.48      inference('demod', [status(thm)], ['23', '24', '25', '26', '27'])).
% 0.21/0.48  thf('29', plain, (![X1 : $i]: (r1_tarski @ sk_A @ X1)),
% 0.21/0.48      inference('simplify_reflect-', [status(thm)], ['15', '28'])).
% 0.21/0.48  thf('30', plain, (![X7 : $i]: (r1_tarski @ k1_xboole_0 @ X7)),
% 0.21/0.48      inference('cnf', [status(esa)], [t2_xboole_1])).
% 0.21/0.48  thf(d10_xboole_0, axiom,
% 0.21/0.48    (![A:$i,B:$i]:
% 0.21/0.48     ( ( ( A ) = ( B ) ) <=> ( ( r1_tarski @ A @ B ) & ( r1_tarski @ B @ A ) ) ))).
% 0.21/0.48  thf('31', plain,
% 0.21/0.48      (![X4 : $i, X6 : $i]:
% 0.21/0.48         (((X4) = (X6)) | ~ (r1_tarski @ X6 @ X4) | ~ (r1_tarski @ X4 @ X6))),
% 0.21/0.48      inference('cnf', [status(esa)], [d10_xboole_0])).
% 0.21/0.48  thf('32', plain,
% 0.21/0.48      (![X0 : $i]: (~ (r1_tarski @ X0 @ k1_xboole_0) | ((X0) = (k1_xboole_0)))),
% 0.21/0.48      inference('sup-', [status(thm)], ['30', '31'])).
% 0.21/0.48  thf('33', plain, (((sk_A) = (k1_xboole_0))),
% 0.21/0.48      inference('sup-', [status(thm)], ['29', '32'])).
% 0.21/0.48  thf('34', plain, ((((sk_A) != (k1_xboole_0)) | ((sk_B_1) = (k1_xboole_0)))),
% 0.21/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.48  thf('35', plain,
% 0.21/0.48      ((((sk_A) != (k1_xboole_0))) <= (~ (((sk_A) = (k1_xboole_0))))),
% 0.21/0.48      inference('split', [status(esa)], ['34'])).
% 0.21/0.48  thf('36', plain, (![X12 : $i]: ((k1_relat_1 @ (sk_B @ X12)) = (X12))),
% 0.21/0.48      inference('cnf', [status(esa)], [s3_funct_1__e2_25__funct_1])).
% 0.21/0.48  thf('37', plain,
% 0.21/0.48      ((((sk_B_1) = (k1_xboole_0))) <= ((((sk_B_1) = (k1_xboole_0))))),
% 0.21/0.48      inference('split', [status(esa)], ['34'])).
% 0.21/0.48  thf('38', plain,
% 0.21/0.48      (![X11 : $i]:
% 0.21/0.48         (((k1_relat_1 @ X11) != (k1_xboole_0))
% 0.21/0.48          | ((k2_relat_1 @ X11) = (k1_xboole_0))
% 0.21/0.48          | ~ (v1_relat_1 @ X11))),
% 0.21/0.48      inference('cnf', [status(esa)], [t65_relat_1])).
% 0.21/0.48  thf('39', plain,
% 0.21/0.48      ((![X0 : $i]:
% 0.21/0.48          (((k1_relat_1 @ X0) != (sk_B_1))
% 0.21/0.48           | ~ (v1_relat_1 @ X0)
% 0.21/0.48           | ((k2_relat_1 @ X0) = (k1_xboole_0))))
% 0.21/0.48         <= ((((sk_B_1) = (k1_xboole_0))))),
% 0.21/0.48      inference('sup-', [status(thm)], ['37', '38'])).
% 0.21/0.48  thf('40', plain,
% 0.21/0.48      ((((sk_B_1) = (k1_xboole_0))) <= ((((sk_B_1) = (k1_xboole_0))))),
% 0.21/0.48      inference('split', [status(esa)], ['34'])).
% 0.21/0.48  thf('41', plain,
% 0.21/0.48      ((![X0 : $i]:
% 0.21/0.48          (((k1_relat_1 @ X0) != (sk_B_1))
% 0.21/0.48           | ~ (v1_relat_1 @ X0)
% 0.21/0.48           | ((k2_relat_1 @ X0) = (sk_B_1))))
% 0.21/0.48         <= ((((sk_B_1) = (k1_xboole_0))))),
% 0.21/0.48      inference('demod', [status(thm)], ['39', '40'])).
% 0.21/0.48  thf('42', plain,
% 0.21/0.48      ((![X0 : $i]:
% 0.21/0.48          (((X0) != (sk_B_1))
% 0.21/0.48           | ((k2_relat_1 @ (sk_B @ X0)) = (sk_B_1))
% 0.21/0.48           | ~ (v1_relat_1 @ (sk_B @ X0))))
% 0.21/0.48         <= ((((sk_B_1) = (k1_xboole_0))))),
% 0.21/0.48      inference('sup-', [status(thm)], ['36', '41'])).
% 0.21/0.48  thf('43', plain, (![X12 : $i]: (v1_relat_1 @ (sk_B @ X12))),
% 0.21/0.48      inference('cnf', [status(esa)], [s3_funct_1__e2_25__funct_1])).
% 0.21/0.48  thf('44', plain,
% 0.21/0.48      ((![X0 : $i]:
% 0.21/0.48          (((X0) != (sk_B_1)) | ((k2_relat_1 @ (sk_B @ X0)) = (sk_B_1))))
% 0.21/0.48         <= ((((sk_B_1) = (k1_xboole_0))))),
% 0.21/0.48      inference('demod', [status(thm)], ['42', '43'])).
% 0.21/0.48  thf('45', plain,
% 0.21/0.48      ((((k2_relat_1 @ (sk_B @ sk_B_1)) = (sk_B_1)))
% 0.21/0.48         <= ((((sk_B_1) = (k1_xboole_0))))),
% 0.21/0.48      inference('simplify', [status(thm)], ['44'])).
% 0.21/0.48  thf('46', plain,
% 0.21/0.48      (![X16 : $i]:
% 0.21/0.48         (~ (r1_tarski @ (k2_relat_1 @ X16) @ sk_A)
% 0.21/0.48          | ((sk_B_1) != (k1_relat_1 @ X16))
% 0.21/0.48          | ~ (v1_funct_1 @ X16)
% 0.21/0.48          | ~ (v1_relat_1 @ X16))),
% 0.21/0.48      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.48  thf('47', plain,
% 0.21/0.48      (((~ (r1_tarski @ sk_B_1 @ sk_A)
% 0.21/0.48         | ~ (v1_relat_1 @ (sk_B @ sk_B_1))
% 0.21/0.48         | ~ (v1_funct_1 @ (sk_B @ sk_B_1))
% 0.21/0.48         | ((sk_B_1) != (k1_relat_1 @ (sk_B @ sk_B_1)))))
% 0.21/0.48         <= ((((sk_B_1) = (k1_xboole_0))))),
% 0.21/0.48      inference('sup-', [status(thm)], ['45', '46'])).
% 0.21/0.48  thf('48', plain,
% 0.21/0.48      ((((sk_B_1) = (k1_xboole_0))) <= ((((sk_B_1) = (k1_xboole_0))))),
% 0.21/0.48      inference('split', [status(esa)], ['34'])).
% 0.21/0.48  thf('49', plain, (![X7 : $i]: (r1_tarski @ k1_xboole_0 @ X7)),
% 0.21/0.48      inference('cnf', [status(esa)], [t2_xboole_1])).
% 0.21/0.48  thf('50', plain,
% 0.21/0.48      ((![X0 : $i]: (r1_tarski @ sk_B_1 @ X0))
% 0.21/0.48         <= ((((sk_B_1) = (k1_xboole_0))))),
% 0.21/0.48      inference('sup+', [status(thm)], ['48', '49'])).
% 0.21/0.48  thf('51', plain, (![X12 : $i]: (v1_relat_1 @ (sk_B @ X12))),
% 0.21/0.48      inference('cnf', [status(esa)], [s3_funct_1__e2_25__funct_1])).
% 0.21/0.48  thf('52', plain, (![X12 : $i]: (v1_funct_1 @ (sk_B @ X12))),
% 0.21/0.48      inference('cnf', [status(esa)], [s3_funct_1__e2_25__funct_1])).
% 0.21/0.48  thf('53', plain, (![X12 : $i]: ((k1_relat_1 @ (sk_B @ X12)) = (X12))),
% 0.21/0.48      inference('cnf', [status(esa)], [s3_funct_1__e2_25__funct_1])).
% 0.21/0.48  thf('54', plain,
% 0.21/0.48      ((((sk_B_1) != (sk_B_1))) <= ((((sk_B_1) = (k1_xboole_0))))),
% 0.21/0.48      inference('demod', [status(thm)], ['47', '50', '51', '52', '53'])).
% 0.21/0.48  thf('55', plain, (~ (((sk_B_1) = (k1_xboole_0)))),
% 0.21/0.48      inference('simplify', [status(thm)], ['54'])).
% 0.21/0.48  thf('56', plain,
% 0.21/0.48      (~ (((sk_A) = (k1_xboole_0))) | (((sk_B_1) = (k1_xboole_0)))),
% 0.21/0.48      inference('split', [status(esa)], ['34'])).
% 0.21/0.48  thf('57', plain, (~ (((sk_A) = (k1_xboole_0)))),
% 0.21/0.48      inference('sat_resolution*', [status(thm)], ['55', '56'])).
% 0.21/0.48  thf('58', plain, (((sk_A) != (k1_xboole_0))),
% 0.21/0.48      inference('simpl_trail', [status(thm)], ['35', '57'])).
% 0.21/0.48  thf('59', plain, ($false),
% 0.21/0.48      inference('simplify_reflect-', [status(thm)], ['33', '58'])).
% 0.21/0.48  
% 0.21/0.48  % SZS output end Refutation
% 0.21/0.48  
% 0.21/0.49  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
