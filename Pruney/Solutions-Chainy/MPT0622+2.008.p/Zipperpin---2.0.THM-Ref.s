%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.eOMZvlOK6E

% Computer   : n007.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:44:35 EST 2020

% Result     : Theorem 0.21s
% Output     : Refutation 0.21s
% Verified   : 
% Statistics : Number of formulae       :   68 ( 147 expanded)
%              Number of leaves         :   17 (  50 expanded)
%              Depth                    :   13
%              Number of atoms          :  500 (2202 expanded)
%              Number of equality atoms :   56 ( 311 expanded)
%              Maximal formula depth    :   12 (   5 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(k1_tarski_type,type,(
    k1_tarski: $i > $i )).

thf(sk_C_type,type,(
    sk_C: $i > $i > $i )).

thf(sk_C_1_type,type,(
    sk_C_1: $i )).

thf(k2_tarski_type,type,(
    k2_tarski: $i > $i > $i )).

thf(v1_funct_1_type,type,(
    v1_funct_1: $i > $o )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(k1_relat_1_type,type,(
    k1_relat_1: $i > $i )).

thf(k1_funct_1_type,type,(
    k1_funct_1: $i > $i > $i )).

thf(k2_relat_1_type,type,(
    k2_relat_1: $i > $i )).

thf(t17_funct_1,conjecture,(
    ! [A: $i,B: $i] :
      ( ( ( v1_relat_1 @ B )
        & ( v1_funct_1 @ B ) )
     => ! [C: $i] :
          ( ( ( v1_relat_1 @ C )
            & ( v1_funct_1 @ C ) )
         => ( ( ( ( k1_relat_1 @ B )
                = ( k1_relat_1 @ C ) )
              & ( ( k2_relat_1 @ B )
                = ( k1_tarski @ A ) )
              & ( ( k2_relat_1 @ C )
                = ( k1_tarski @ A ) ) )
           => ( B = C ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i] :
        ( ( ( v1_relat_1 @ B )
          & ( v1_funct_1 @ B ) )
       => ! [C: $i] :
            ( ( ( v1_relat_1 @ C )
              & ( v1_funct_1 @ C ) )
           => ( ( ( ( k1_relat_1 @ B )
                  = ( k1_relat_1 @ C ) )
                & ( ( k2_relat_1 @ B )
                  = ( k1_tarski @ A ) )
                & ( ( k2_relat_1 @ C )
                  = ( k1_tarski @ A ) ) )
             => ( B = C ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t17_funct_1])).

thf('0',plain,
    ( ( k1_relat_1 @ sk_B )
    = ( k1_relat_1 @ sk_C_1 ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t9_funct_1,axiom,(
    ! [A: $i] :
      ( ( ( v1_relat_1 @ A )
        & ( v1_funct_1 @ A ) )
     => ! [B: $i] :
          ( ( ( v1_relat_1 @ B )
            & ( v1_funct_1 @ B ) )
         => ( ( ( ( k1_relat_1 @ A )
                = ( k1_relat_1 @ B ) )
              & ! [C: $i] :
                  ( ( r2_hidden @ C @ ( k1_relat_1 @ A ) )
                 => ( ( k1_funct_1 @ A @ C )
                    = ( k1_funct_1 @ B @ C ) ) ) )
           => ( A = B ) ) ) ) )).

thf('1',plain,(
    ! [X18: $i,X19: $i] :
      ( ~ ( v1_relat_1 @ X18 )
      | ~ ( v1_funct_1 @ X18 )
      | ( X19 = X18 )
      | ( r2_hidden @ ( sk_C @ X18 @ X19 ) @ ( k1_relat_1 @ X19 ) )
      | ( ( k1_relat_1 @ X19 )
       != ( k1_relat_1 @ X18 ) )
      | ~ ( v1_funct_1 @ X19 )
      | ~ ( v1_relat_1 @ X19 ) ) ),
    inference(cnf,[status(esa)],[t9_funct_1])).

thf('2',plain,(
    ! [X0: $i] :
      ( ( ( k1_relat_1 @ sk_B )
       != ( k1_relat_1 @ X0 ) )
      | ~ ( v1_relat_1 @ sk_C_1 )
      | ~ ( v1_funct_1 @ sk_C_1 )
      | ( r2_hidden @ ( sk_C @ X0 @ sk_C_1 ) @ ( k1_relat_1 @ sk_C_1 ) )
      | ( sk_C_1 = X0 )
      | ~ ( v1_funct_1 @ X0 )
      | ~ ( v1_relat_1 @ X0 ) ) ),
    inference('sup-',[status(thm)],['0','1'])).

thf('3',plain,(
    v1_relat_1 @ sk_C_1 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('4',plain,(
    v1_funct_1 @ sk_C_1 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('5',plain,
    ( ( k1_relat_1 @ sk_B )
    = ( k1_relat_1 @ sk_C_1 ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('6',plain,(
    ! [X0: $i] :
      ( ( ( k1_relat_1 @ sk_B )
       != ( k1_relat_1 @ X0 ) )
      | ( r2_hidden @ ( sk_C @ X0 @ sk_C_1 ) @ ( k1_relat_1 @ sk_B ) )
      | ( sk_C_1 = X0 )
      | ~ ( v1_funct_1 @ X0 )
      | ~ ( v1_relat_1 @ X0 ) ) ),
    inference(demod,[status(thm)],['2','3','4','5'])).

thf('7',plain,
    ( ~ ( v1_relat_1 @ sk_B )
    | ~ ( v1_funct_1 @ sk_B )
    | ( sk_C_1 = sk_B )
    | ( r2_hidden @ ( sk_C @ sk_B @ sk_C_1 ) @ ( k1_relat_1 @ sk_B ) ) ),
    inference(eq_res,[status(thm)],['6'])).

thf('8',plain,(
    v1_relat_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('9',plain,(
    v1_funct_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('10',plain,
    ( ( sk_C_1 = sk_B )
    | ( r2_hidden @ ( sk_C @ sk_B @ sk_C_1 ) @ ( k1_relat_1 @ sk_B ) ) ),
    inference(demod,[status(thm)],['7','8','9'])).

thf('11',plain,(
    sk_B != sk_C_1 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('12',plain,(
    r2_hidden @ ( sk_C @ sk_B @ sk_C_1 ) @ ( k1_relat_1 @ sk_B ) ),
    inference('simplify_reflect-',[status(thm)],['10','11'])).

thf('13',plain,
    ( ( k1_relat_1 @ sk_B )
    = ( k1_relat_1 @ sk_C_1 ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t12_funct_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( ( v1_relat_1 @ B )
        & ( v1_funct_1 @ B ) )
     => ( ( r2_hidden @ A @ ( k1_relat_1 @ B ) )
       => ( r2_hidden @ ( k1_funct_1 @ B @ A ) @ ( k2_relat_1 @ B ) ) ) ) )).

thf('14',plain,(
    ! [X16: $i,X17: $i] :
      ( ~ ( r2_hidden @ X16 @ ( k1_relat_1 @ X17 ) )
      | ( r2_hidden @ ( k1_funct_1 @ X17 @ X16 ) @ ( k2_relat_1 @ X17 ) )
      | ~ ( v1_funct_1 @ X17 )
      | ~ ( v1_relat_1 @ X17 ) ) ),
    inference(cnf,[status(esa)],[t12_funct_1])).

thf('15',plain,(
    ! [X0: $i] :
      ( ~ ( r2_hidden @ X0 @ ( k1_relat_1 @ sk_B ) )
      | ~ ( v1_relat_1 @ sk_C_1 )
      | ~ ( v1_funct_1 @ sk_C_1 )
      | ( r2_hidden @ ( k1_funct_1 @ sk_C_1 @ X0 ) @ ( k2_relat_1 @ sk_C_1 ) ) ) ),
    inference('sup-',[status(thm)],['13','14'])).

thf('16',plain,(
    v1_relat_1 @ sk_C_1 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('17',plain,(
    v1_funct_1 @ sk_C_1 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('18',plain,
    ( ( k2_relat_1 @ sk_C_1 )
    = ( k1_tarski @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('19',plain,
    ( ( k2_relat_1 @ sk_B )
    = ( k1_tarski @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('20',plain,
    ( ( k2_relat_1 @ sk_B )
    = ( k2_relat_1 @ sk_C_1 ) ),
    inference('sup+',[status(thm)],['18','19'])).

thf('21',plain,(
    ! [X0: $i] :
      ( ~ ( r2_hidden @ X0 @ ( k1_relat_1 @ sk_B ) )
      | ( r2_hidden @ ( k1_funct_1 @ sk_C_1 @ X0 ) @ ( k2_relat_1 @ sk_B ) ) ) ),
    inference(demod,[status(thm)],['15','16','17','20'])).

thf('22',plain,(
    r2_hidden @ ( k1_funct_1 @ sk_C_1 @ ( sk_C @ sk_B @ sk_C_1 ) ) @ ( k2_relat_1 @ sk_B ) ),
    inference('sup-',[status(thm)],['12','21'])).

thf('23',plain,
    ( ( k2_relat_1 @ sk_B )
    = ( k1_tarski @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t69_enumset1,axiom,(
    ! [A: $i] :
      ( ( k2_tarski @ A @ A )
      = ( k1_tarski @ A ) ) )).

thf('24',plain,(
    ! [X6: $i] :
      ( ( k2_tarski @ X6 @ X6 )
      = ( k1_tarski @ X6 ) ) ),
    inference(cnf,[status(esa)],[t69_enumset1])).

thf(d2_tarski,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( C
        = ( k2_tarski @ A @ B ) )
    <=> ! [D: $i] :
          ( ( r2_hidden @ D @ C )
        <=> ( ( D = A )
            | ( D = B ) ) ) ) )).

thf('25',plain,(
    ! [X0: $i,X2: $i,X3: $i,X4: $i] :
      ( ~ ( r2_hidden @ X4 @ X2 )
      | ( X4 = X3 )
      | ( X4 = X0 )
      | ( X2
       != ( k2_tarski @ X3 @ X0 ) ) ) ),
    inference(cnf,[status(esa)],[d2_tarski])).

thf('26',plain,(
    ! [X0: $i,X3: $i,X4: $i] :
      ( ( X4 = X0 )
      | ( X4 = X3 )
      | ~ ( r2_hidden @ X4 @ ( k2_tarski @ X3 @ X0 ) ) ) ),
    inference(simplify,[status(thm)],['25'])).

thf('27',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( r2_hidden @ X1 @ ( k1_tarski @ X0 ) )
      | ( X1 = X0 )
      | ( X1 = X0 ) ) ),
    inference('sup-',[status(thm)],['24','26'])).

thf('28',plain,(
    ! [X0: $i,X1: $i] :
      ( ( X1 = X0 )
      | ~ ( r2_hidden @ X1 @ ( k1_tarski @ X0 ) ) ) ),
    inference(simplify,[status(thm)],['27'])).

thf('29',plain,(
    ! [X0: $i] :
      ( ~ ( r2_hidden @ X0 @ ( k2_relat_1 @ sk_B ) )
      | ( X0 = sk_A ) ) ),
    inference('sup-',[status(thm)],['23','28'])).

thf('30',plain,
    ( ( k1_funct_1 @ sk_C_1 @ ( sk_C @ sk_B @ sk_C_1 ) )
    = sk_A ),
    inference('sup-',[status(thm)],['22','29'])).

thf('31',plain,(
    ! [X18: $i,X19: $i] :
      ( ~ ( v1_relat_1 @ X18 )
      | ~ ( v1_funct_1 @ X18 )
      | ( X19 = X18 )
      | ( ( k1_funct_1 @ X19 @ ( sk_C @ X18 @ X19 ) )
       != ( k1_funct_1 @ X18 @ ( sk_C @ X18 @ X19 ) ) )
      | ( ( k1_relat_1 @ X19 )
       != ( k1_relat_1 @ X18 ) )
      | ~ ( v1_funct_1 @ X19 )
      | ~ ( v1_relat_1 @ X19 ) ) ),
    inference(cnf,[status(esa)],[t9_funct_1])).

thf('32',plain,
    ( ( sk_A
     != ( k1_funct_1 @ sk_B @ ( sk_C @ sk_B @ sk_C_1 ) ) )
    | ~ ( v1_relat_1 @ sk_C_1 )
    | ~ ( v1_funct_1 @ sk_C_1 )
    | ( ( k1_relat_1 @ sk_C_1 )
     != ( k1_relat_1 @ sk_B ) )
    | ( sk_C_1 = sk_B )
    | ~ ( v1_funct_1 @ sk_B )
    | ~ ( v1_relat_1 @ sk_B ) ),
    inference('sup-',[status(thm)],['30','31'])).

thf('33',plain,(
    r2_hidden @ ( sk_C @ sk_B @ sk_C_1 ) @ ( k1_relat_1 @ sk_B ) ),
    inference('simplify_reflect-',[status(thm)],['10','11'])).

thf('34',plain,(
    ! [X16: $i,X17: $i] :
      ( ~ ( r2_hidden @ X16 @ ( k1_relat_1 @ X17 ) )
      | ( r2_hidden @ ( k1_funct_1 @ X17 @ X16 ) @ ( k2_relat_1 @ X17 ) )
      | ~ ( v1_funct_1 @ X17 )
      | ~ ( v1_relat_1 @ X17 ) ) ),
    inference(cnf,[status(esa)],[t12_funct_1])).

thf('35',plain,
    ( ~ ( v1_relat_1 @ sk_B )
    | ~ ( v1_funct_1 @ sk_B )
    | ( r2_hidden @ ( k1_funct_1 @ sk_B @ ( sk_C @ sk_B @ sk_C_1 ) ) @ ( k2_relat_1 @ sk_B ) ) ),
    inference('sup-',[status(thm)],['33','34'])).

thf('36',plain,(
    v1_relat_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('37',plain,(
    v1_funct_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('38',plain,(
    r2_hidden @ ( k1_funct_1 @ sk_B @ ( sk_C @ sk_B @ sk_C_1 ) ) @ ( k2_relat_1 @ sk_B ) ),
    inference(demod,[status(thm)],['35','36','37'])).

thf('39',plain,(
    ! [X0: $i] :
      ( ~ ( r2_hidden @ X0 @ ( k2_relat_1 @ sk_B ) )
      | ( X0 = sk_A ) ) ),
    inference('sup-',[status(thm)],['23','28'])).

thf('40',plain,
    ( ( k1_funct_1 @ sk_B @ ( sk_C @ sk_B @ sk_C_1 ) )
    = sk_A ),
    inference('sup-',[status(thm)],['38','39'])).

thf('41',plain,(
    v1_relat_1 @ sk_C_1 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('42',plain,(
    v1_funct_1 @ sk_C_1 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('43',plain,
    ( ( k1_relat_1 @ sk_B )
    = ( k1_relat_1 @ sk_C_1 ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('44',plain,(
    v1_funct_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('45',plain,(
    v1_relat_1 @ sk_B ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('46',plain,
    ( ( sk_A != sk_A )
    | ( ( k1_relat_1 @ sk_B )
     != ( k1_relat_1 @ sk_B ) )
    | ( sk_C_1 = sk_B ) ),
    inference(demod,[status(thm)],['32','40','41','42','43','44','45'])).

thf('47',plain,(
    sk_C_1 = sk_B ),
    inference(simplify,[status(thm)],['46'])).

thf('48',plain,(
    sk_B != sk_C_1 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('49',plain,(
    $false ),
    inference('simplify_reflect-',[status(thm)],['47','48'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.09/0.13  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.09/0.14  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.eOMZvlOK6E
% 0.14/0.35  % Computer   : n007.cluster.edu
% 0.14/0.35  % Model      : x86_64 x86_64
% 0.14/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.35  % Memory     : 8042.1875MB
% 0.14/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.35  % CPULimit   : 60
% 0.14/0.35  % DateTime   : Tue Dec  1 15:24:21 EST 2020
% 0.14/0.36  % CPUTime    : 
% 0.14/0.36  % Running portfolio for 600 s
% 0.14/0.36  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.14/0.36  % Number of cores: 8
% 0.14/0.36  % Python version: Python 3.6.8
% 0.14/0.36  % Running in FO mode
% 0.21/0.49  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.21/0.49  % Solved by: fo/fo7.sh
% 0.21/0.49  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.21/0.49  % done 49 iterations in 0.025s
% 0.21/0.49  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.21/0.49  % SZS output start Refutation
% 0.21/0.49  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.21/0.49  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 0.21/0.49  thf(sk_A_type, type, sk_A: $i).
% 0.21/0.49  thf(k1_tarski_type, type, k1_tarski: $i > $i).
% 0.21/0.49  thf(sk_C_type, type, sk_C: $i > $i > $i).
% 0.21/0.49  thf(sk_C_1_type, type, sk_C_1: $i).
% 0.21/0.49  thf(k2_tarski_type, type, k2_tarski: $i > $i > $i).
% 0.21/0.49  thf(v1_funct_1_type, type, v1_funct_1: $i > $o).
% 0.21/0.49  thf(sk_B_type, type, sk_B: $i).
% 0.21/0.49  thf(k1_relat_1_type, type, k1_relat_1: $i > $i).
% 0.21/0.49  thf(k1_funct_1_type, type, k1_funct_1: $i > $i > $i).
% 0.21/0.49  thf(k2_relat_1_type, type, k2_relat_1: $i > $i).
% 0.21/0.49  thf(t17_funct_1, conjecture,
% 0.21/0.49    (![A:$i,B:$i]:
% 0.21/0.49     ( ( ( v1_relat_1 @ B ) & ( v1_funct_1 @ B ) ) =>
% 0.21/0.49       ( ![C:$i]:
% 0.21/0.49         ( ( ( v1_relat_1 @ C ) & ( v1_funct_1 @ C ) ) =>
% 0.21/0.49           ( ( ( ( k1_relat_1 @ B ) = ( k1_relat_1 @ C ) ) & 
% 0.21/0.49               ( ( k2_relat_1 @ B ) = ( k1_tarski @ A ) ) & 
% 0.21/0.49               ( ( k2_relat_1 @ C ) = ( k1_tarski @ A ) ) ) =>
% 0.21/0.49             ( ( B ) = ( C ) ) ) ) ) ))).
% 0.21/0.49  thf(zf_stmt_0, negated_conjecture,
% 0.21/0.49    (~( ![A:$i,B:$i]:
% 0.21/0.49        ( ( ( v1_relat_1 @ B ) & ( v1_funct_1 @ B ) ) =>
% 0.21/0.49          ( ![C:$i]:
% 0.21/0.49            ( ( ( v1_relat_1 @ C ) & ( v1_funct_1 @ C ) ) =>
% 0.21/0.49              ( ( ( ( k1_relat_1 @ B ) = ( k1_relat_1 @ C ) ) & 
% 0.21/0.49                  ( ( k2_relat_1 @ B ) = ( k1_tarski @ A ) ) & 
% 0.21/0.49                  ( ( k2_relat_1 @ C ) = ( k1_tarski @ A ) ) ) =>
% 0.21/0.49                ( ( B ) = ( C ) ) ) ) ) ) )),
% 0.21/0.49    inference('cnf.neg', [status(esa)], [t17_funct_1])).
% 0.21/0.49  thf('0', plain, (((k1_relat_1 @ sk_B) = (k1_relat_1 @ sk_C_1))),
% 0.21/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.49  thf(t9_funct_1, axiom,
% 0.21/0.49    (![A:$i]:
% 0.21/0.49     ( ( ( v1_relat_1 @ A ) & ( v1_funct_1 @ A ) ) =>
% 0.21/0.49       ( ![B:$i]:
% 0.21/0.49         ( ( ( v1_relat_1 @ B ) & ( v1_funct_1 @ B ) ) =>
% 0.21/0.49           ( ( ( ( k1_relat_1 @ A ) = ( k1_relat_1 @ B ) ) & 
% 0.21/0.49               ( ![C:$i]:
% 0.21/0.49                 ( ( r2_hidden @ C @ ( k1_relat_1 @ A ) ) =>
% 0.21/0.49                   ( ( k1_funct_1 @ A @ C ) = ( k1_funct_1 @ B @ C ) ) ) ) ) =>
% 0.21/0.49             ( ( A ) = ( B ) ) ) ) ) ))).
% 0.21/0.49  thf('1', plain,
% 0.21/0.49      (![X18 : $i, X19 : $i]:
% 0.21/0.49         (~ (v1_relat_1 @ X18)
% 0.21/0.49          | ~ (v1_funct_1 @ X18)
% 0.21/0.49          | ((X19) = (X18))
% 0.21/0.49          | (r2_hidden @ (sk_C @ X18 @ X19) @ (k1_relat_1 @ X19))
% 0.21/0.49          | ((k1_relat_1 @ X19) != (k1_relat_1 @ X18))
% 0.21/0.49          | ~ (v1_funct_1 @ X19)
% 0.21/0.49          | ~ (v1_relat_1 @ X19))),
% 0.21/0.49      inference('cnf', [status(esa)], [t9_funct_1])).
% 0.21/0.49  thf('2', plain,
% 0.21/0.49      (![X0 : $i]:
% 0.21/0.49         (((k1_relat_1 @ sk_B) != (k1_relat_1 @ X0))
% 0.21/0.49          | ~ (v1_relat_1 @ sk_C_1)
% 0.21/0.49          | ~ (v1_funct_1 @ sk_C_1)
% 0.21/0.49          | (r2_hidden @ (sk_C @ X0 @ sk_C_1) @ (k1_relat_1 @ sk_C_1))
% 0.21/0.49          | ((sk_C_1) = (X0))
% 0.21/0.49          | ~ (v1_funct_1 @ X0)
% 0.21/0.49          | ~ (v1_relat_1 @ X0))),
% 0.21/0.49      inference('sup-', [status(thm)], ['0', '1'])).
% 0.21/0.49  thf('3', plain, ((v1_relat_1 @ sk_C_1)),
% 0.21/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.49  thf('4', plain, ((v1_funct_1 @ sk_C_1)),
% 0.21/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.49  thf('5', plain, (((k1_relat_1 @ sk_B) = (k1_relat_1 @ sk_C_1))),
% 0.21/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.49  thf('6', plain,
% 0.21/0.49      (![X0 : $i]:
% 0.21/0.49         (((k1_relat_1 @ sk_B) != (k1_relat_1 @ X0))
% 0.21/0.49          | (r2_hidden @ (sk_C @ X0 @ sk_C_1) @ (k1_relat_1 @ sk_B))
% 0.21/0.49          | ((sk_C_1) = (X0))
% 0.21/0.49          | ~ (v1_funct_1 @ X0)
% 0.21/0.49          | ~ (v1_relat_1 @ X0))),
% 0.21/0.49      inference('demod', [status(thm)], ['2', '3', '4', '5'])).
% 0.21/0.49  thf('7', plain,
% 0.21/0.49      ((~ (v1_relat_1 @ sk_B)
% 0.21/0.49        | ~ (v1_funct_1 @ sk_B)
% 0.21/0.49        | ((sk_C_1) = (sk_B))
% 0.21/0.49        | (r2_hidden @ (sk_C @ sk_B @ sk_C_1) @ (k1_relat_1 @ sk_B)))),
% 0.21/0.49      inference('eq_res', [status(thm)], ['6'])).
% 0.21/0.49  thf('8', plain, ((v1_relat_1 @ sk_B)),
% 0.21/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.49  thf('9', plain, ((v1_funct_1 @ sk_B)),
% 0.21/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.49  thf('10', plain,
% 0.21/0.49      ((((sk_C_1) = (sk_B))
% 0.21/0.49        | (r2_hidden @ (sk_C @ sk_B @ sk_C_1) @ (k1_relat_1 @ sk_B)))),
% 0.21/0.49      inference('demod', [status(thm)], ['7', '8', '9'])).
% 0.21/0.49  thf('11', plain, (((sk_B) != (sk_C_1))),
% 0.21/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.49  thf('12', plain,
% 0.21/0.49      ((r2_hidden @ (sk_C @ sk_B @ sk_C_1) @ (k1_relat_1 @ sk_B))),
% 0.21/0.49      inference('simplify_reflect-', [status(thm)], ['10', '11'])).
% 0.21/0.49  thf('13', plain, (((k1_relat_1 @ sk_B) = (k1_relat_1 @ sk_C_1))),
% 0.21/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.49  thf(t12_funct_1, axiom,
% 0.21/0.49    (![A:$i,B:$i]:
% 0.21/0.49     ( ( ( v1_relat_1 @ B ) & ( v1_funct_1 @ B ) ) =>
% 0.21/0.49       ( ( r2_hidden @ A @ ( k1_relat_1 @ B ) ) =>
% 0.21/0.49         ( r2_hidden @ ( k1_funct_1 @ B @ A ) @ ( k2_relat_1 @ B ) ) ) ))).
% 0.21/0.49  thf('14', plain,
% 0.21/0.49      (![X16 : $i, X17 : $i]:
% 0.21/0.49         (~ (r2_hidden @ X16 @ (k1_relat_1 @ X17))
% 0.21/0.49          | (r2_hidden @ (k1_funct_1 @ X17 @ X16) @ (k2_relat_1 @ X17))
% 0.21/0.49          | ~ (v1_funct_1 @ X17)
% 0.21/0.49          | ~ (v1_relat_1 @ X17))),
% 0.21/0.49      inference('cnf', [status(esa)], [t12_funct_1])).
% 0.21/0.49  thf('15', plain,
% 0.21/0.49      (![X0 : $i]:
% 0.21/0.49         (~ (r2_hidden @ X0 @ (k1_relat_1 @ sk_B))
% 0.21/0.49          | ~ (v1_relat_1 @ sk_C_1)
% 0.21/0.49          | ~ (v1_funct_1 @ sk_C_1)
% 0.21/0.49          | (r2_hidden @ (k1_funct_1 @ sk_C_1 @ X0) @ (k2_relat_1 @ sk_C_1)))),
% 0.21/0.49      inference('sup-', [status(thm)], ['13', '14'])).
% 0.21/0.49  thf('16', plain, ((v1_relat_1 @ sk_C_1)),
% 0.21/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.49  thf('17', plain, ((v1_funct_1 @ sk_C_1)),
% 0.21/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.49  thf('18', plain, (((k2_relat_1 @ sk_C_1) = (k1_tarski @ sk_A))),
% 0.21/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.49  thf('19', plain, (((k2_relat_1 @ sk_B) = (k1_tarski @ sk_A))),
% 0.21/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.49  thf('20', plain, (((k2_relat_1 @ sk_B) = (k2_relat_1 @ sk_C_1))),
% 0.21/0.49      inference('sup+', [status(thm)], ['18', '19'])).
% 0.21/0.49  thf('21', plain,
% 0.21/0.49      (![X0 : $i]:
% 0.21/0.49         (~ (r2_hidden @ X0 @ (k1_relat_1 @ sk_B))
% 0.21/0.49          | (r2_hidden @ (k1_funct_1 @ sk_C_1 @ X0) @ (k2_relat_1 @ sk_B)))),
% 0.21/0.49      inference('demod', [status(thm)], ['15', '16', '17', '20'])).
% 0.21/0.49  thf('22', plain,
% 0.21/0.49      ((r2_hidden @ (k1_funct_1 @ sk_C_1 @ (sk_C @ sk_B @ sk_C_1)) @ 
% 0.21/0.49        (k2_relat_1 @ sk_B))),
% 0.21/0.49      inference('sup-', [status(thm)], ['12', '21'])).
% 0.21/0.49  thf('23', plain, (((k2_relat_1 @ sk_B) = (k1_tarski @ sk_A))),
% 0.21/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.49  thf(t69_enumset1, axiom,
% 0.21/0.49    (![A:$i]: ( ( k2_tarski @ A @ A ) = ( k1_tarski @ A ) ))).
% 0.21/0.49  thf('24', plain, (![X6 : $i]: ((k2_tarski @ X6 @ X6) = (k1_tarski @ X6))),
% 0.21/0.49      inference('cnf', [status(esa)], [t69_enumset1])).
% 0.21/0.49  thf(d2_tarski, axiom,
% 0.21/0.49    (![A:$i,B:$i,C:$i]:
% 0.21/0.49     ( ( ( C ) = ( k2_tarski @ A @ B ) ) <=>
% 0.21/0.49       ( ![D:$i]:
% 0.21/0.49         ( ( r2_hidden @ D @ C ) <=> ( ( ( D ) = ( A ) ) | ( ( D ) = ( B ) ) ) ) ) ))).
% 0.21/0.49  thf('25', plain,
% 0.21/0.49      (![X0 : $i, X2 : $i, X3 : $i, X4 : $i]:
% 0.21/0.49         (~ (r2_hidden @ X4 @ X2)
% 0.21/0.49          | ((X4) = (X3))
% 0.21/0.49          | ((X4) = (X0))
% 0.21/0.49          | ((X2) != (k2_tarski @ X3 @ X0)))),
% 0.21/0.49      inference('cnf', [status(esa)], [d2_tarski])).
% 0.21/0.49  thf('26', plain,
% 0.21/0.49      (![X0 : $i, X3 : $i, X4 : $i]:
% 0.21/0.49         (((X4) = (X0))
% 0.21/0.49          | ((X4) = (X3))
% 0.21/0.49          | ~ (r2_hidden @ X4 @ (k2_tarski @ X3 @ X0)))),
% 0.21/0.49      inference('simplify', [status(thm)], ['25'])).
% 0.21/0.49  thf('27', plain,
% 0.21/0.49      (![X0 : $i, X1 : $i]:
% 0.21/0.49         (~ (r2_hidden @ X1 @ (k1_tarski @ X0)) | ((X1) = (X0)) | ((X1) = (X0)))),
% 0.21/0.49      inference('sup-', [status(thm)], ['24', '26'])).
% 0.21/0.49  thf('28', plain,
% 0.21/0.49      (![X0 : $i, X1 : $i]:
% 0.21/0.49         (((X1) = (X0)) | ~ (r2_hidden @ X1 @ (k1_tarski @ X0)))),
% 0.21/0.49      inference('simplify', [status(thm)], ['27'])).
% 0.21/0.49  thf('29', plain,
% 0.21/0.49      (![X0 : $i]: (~ (r2_hidden @ X0 @ (k2_relat_1 @ sk_B)) | ((X0) = (sk_A)))),
% 0.21/0.49      inference('sup-', [status(thm)], ['23', '28'])).
% 0.21/0.49  thf('30', plain, (((k1_funct_1 @ sk_C_1 @ (sk_C @ sk_B @ sk_C_1)) = (sk_A))),
% 0.21/0.49      inference('sup-', [status(thm)], ['22', '29'])).
% 0.21/0.49  thf('31', plain,
% 0.21/0.49      (![X18 : $i, X19 : $i]:
% 0.21/0.49         (~ (v1_relat_1 @ X18)
% 0.21/0.49          | ~ (v1_funct_1 @ X18)
% 0.21/0.49          | ((X19) = (X18))
% 0.21/0.49          | ((k1_funct_1 @ X19 @ (sk_C @ X18 @ X19))
% 0.21/0.49              != (k1_funct_1 @ X18 @ (sk_C @ X18 @ X19)))
% 0.21/0.49          | ((k1_relat_1 @ X19) != (k1_relat_1 @ X18))
% 0.21/0.49          | ~ (v1_funct_1 @ X19)
% 0.21/0.49          | ~ (v1_relat_1 @ X19))),
% 0.21/0.49      inference('cnf', [status(esa)], [t9_funct_1])).
% 0.21/0.49  thf('32', plain,
% 0.21/0.49      ((((sk_A) != (k1_funct_1 @ sk_B @ (sk_C @ sk_B @ sk_C_1)))
% 0.21/0.49        | ~ (v1_relat_1 @ sk_C_1)
% 0.21/0.49        | ~ (v1_funct_1 @ sk_C_1)
% 0.21/0.49        | ((k1_relat_1 @ sk_C_1) != (k1_relat_1 @ sk_B))
% 0.21/0.49        | ((sk_C_1) = (sk_B))
% 0.21/0.49        | ~ (v1_funct_1 @ sk_B)
% 0.21/0.49        | ~ (v1_relat_1 @ sk_B))),
% 0.21/0.49      inference('sup-', [status(thm)], ['30', '31'])).
% 0.21/0.49  thf('33', plain,
% 0.21/0.49      ((r2_hidden @ (sk_C @ sk_B @ sk_C_1) @ (k1_relat_1 @ sk_B))),
% 0.21/0.49      inference('simplify_reflect-', [status(thm)], ['10', '11'])).
% 0.21/0.49  thf('34', plain,
% 0.21/0.49      (![X16 : $i, X17 : $i]:
% 0.21/0.49         (~ (r2_hidden @ X16 @ (k1_relat_1 @ X17))
% 0.21/0.49          | (r2_hidden @ (k1_funct_1 @ X17 @ X16) @ (k2_relat_1 @ X17))
% 0.21/0.49          | ~ (v1_funct_1 @ X17)
% 0.21/0.49          | ~ (v1_relat_1 @ X17))),
% 0.21/0.49      inference('cnf', [status(esa)], [t12_funct_1])).
% 0.21/0.49  thf('35', plain,
% 0.21/0.49      ((~ (v1_relat_1 @ sk_B)
% 0.21/0.49        | ~ (v1_funct_1 @ sk_B)
% 0.21/0.49        | (r2_hidden @ (k1_funct_1 @ sk_B @ (sk_C @ sk_B @ sk_C_1)) @ 
% 0.21/0.49           (k2_relat_1 @ sk_B)))),
% 0.21/0.49      inference('sup-', [status(thm)], ['33', '34'])).
% 0.21/0.49  thf('36', plain, ((v1_relat_1 @ sk_B)),
% 0.21/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.49  thf('37', plain, ((v1_funct_1 @ sk_B)),
% 0.21/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.49  thf('38', plain,
% 0.21/0.49      ((r2_hidden @ (k1_funct_1 @ sk_B @ (sk_C @ sk_B @ sk_C_1)) @ 
% 0.21/0.49        (k2_relat_1 @ sk_B))),
% 0.21/0.49      inference('demod', [status(thm)], ['35', '36', '37'])).
% 0.21/0.49  thf('39', plain,
% 0.21/0.49      (![X0 : $i]: (~ (r2_hidden @ X0 @ (k2_relat_1 @ sk_B)) | ((X0) = (sk_A)))),
% 0.21/0.49      inference('sup-', [status(thm)], ['23', '28'])).
% 0.21/0.49  thf('40', plain, (((k1_funct_1 @ sk_B @ (sk_C @ sk_B @ sk_C_1)) = (sk_A))),
% 0.21/0.49      inference('sup-', [status(thm)], ['38', '39'])).
% 0.21/0.49  thf('41', plain, ((v1_relat_1 @ sk_C_1)),
% 0.21/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.49  thf('42', plain, ((v1_funct_1 @ sk_C_1)),
% 0.21/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.49  thf('43', plain, (((k1_relat_1 @ sk_B) = (k1_relat_1 @ sk_C_1))),
% 0.21/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.49  thf('44', plain, ((v1_funct_1 @ sk_B)),
% 0.21/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.49  thf('45', plain, ((v1_relat_1 @ sk_B)),
% 0.21/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.49  thf('46', plain,
% 0.21/0.49      ((((sk_A) != (sk_A))
% 0.21/0.49        | ((k1_relat_1 @ sk_B) != (k1_relat_1 @ sk_B))
% 0.21/0.49        | ((sk_C_1) = (sk_B)))),
% 0.21/0.49      inference('demod', [status(thm)],
% 0.21/0.49                ['32', '40', '41', '42', '43', '44', '45'])).
% 0.21/0.49  thf('47', plain, (((sk_C_1) = (sk_B))),
% 0.21/0.49      inference('simplify', [status(thm)], ['46'])).
% 0.21/0.49  thf('48', plain, (((sk_B) != (sk_C_1))),
% 0.21/0.49      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.49  thf('49', plain, ($false),
% 0.21/0.49      inference('simplify_reflect-', [status(thm)], ['47', '48'])).
% 0.21/0.49  
% 0.21/0.49  % SZS output end Refutation
% 0.21/0.49  
% 0.21/0.50  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
