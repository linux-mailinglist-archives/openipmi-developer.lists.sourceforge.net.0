Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C5009356EAE
	for <lists+openipmi-developer@lfdr.de>; Wed,  7 Apr 2021 16:31:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lU9Cz-0001Pk-L9; Wed, 07 Apr 2021 14:31:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <mcgrof@gmail.com>) id 1lU9Cx-0001PG-Rn
 for openipmi-developer@lists.sourceforge.net; Wed, 07 Apr 2021 14:31:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1vVuZ4MvRzeF+pr2v0xmBFFQwK6hdMJanVjlk9hErro=; b=TkgHG3ZNbLfba0XH1Zwam7blrh
 ZCGF6KIiLmbOQXcWr+Hx2xEZ0nAyVfpjoitjwzL/qub22R82xUXHMufr4TfLBwrHcuVKoqeH5+7Rq
 yaspVx2kxK0IzegdqJi+d+oAqWaVmq4WgMe+rPLDJBF8yraRD9YU3/UELLaeGkhzp5cg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1vVuZ4MvRzeF+pr2v0xmBFFQwK6hdMJanVjlk9hErro=; b=NFyEFdkHHIl1SFBj+U7sJ390l8
 8o5OKK0n3xCLVIADW/XXTjmqv6bplJLcl279dYKtQU9bZJx1bj8KRNWVQfSveQJaIYtx0tnEk9gHW
 sO9FMZrqXAFOVUBwNTh1m9DczG6bJY8EShGlLAYF9LsNoavIeoQq0i77noiZKthfVZtI=;
Received: from mail-pl1-f178.google.com ([209.85.214.178])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lU9Ci-00053x-Hk
 for openipmi-developer@lists.sourceforge.net; Wed, 07 Apr 2021 14:31:03 +0000
Received: by mail-pl1-f178.google.com with SMTP id p10so4298919pld.0
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 07 Apr 2021 07:30:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=1vVuZ4MvRzeF+pr2v0xmBFFQwK6hdMJanVjlk9hErro=;
 b=FZDb9jYWkDZ8NwSz01wF8Kl6Fm1NO8XTb5Tiimh9khvE3euIUgo4wyNLgbZEQtoiyS
 yyWvENvbNimYxMrQ2EBhCMTumjO1/UMN16CZvPMqZWTt9ak+yFbOgO+pQ/5Gwn/JqkUu
 ykwC4vsV9myhYxxWCBruo8EFJOo1jX+KUa1+ogBlTeGP0FQFIKDAyb9KymO+sTQezFKq
 PRsD+g/nc/6Lqg+8GNsXTbP5K2NELw+KcR1dmu1497qvomntnvhvM5/0J+AZmcmBVEUZ
 cm0AtyRepfBrfq3oNnt2a+8jWsGTH5ByvXImqALDowL+0/UlxHM3Mc29+Iw3sN6K39uJ
 QGzw==
X-Gm-Message-State: AOAM531nEbgTipAT4tIlFXkgEscy4ZJ/jFVJX67ftXj6D0tsVZYE/JgO
 zaJzF+Wj30y+Hw8SgOVfrV4=
X-Google-Smtp-Source: ABdhPJytaBCeu/N78G2ItU1as7w8fUmjf8wbl8aAQkobTbao0e2hHv5pq8RooRp01fzv5LCBwmpFDg==
X-Received: by 2002:a17:90a:6343:: with SMTP id
 v3mr3482681pjs.153.1617805842980; 
 Wed, 07 Apr 2021 07:30:42 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id k11sm5779292pjs.1.2021.04.07.07.30.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 07 Apr 2021 07:30:41 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id 09D07402D7; Wed,  7 Apr 2021 14:30:41 +0000 (UTC)
Date: Wed, 7 Apr 2021 14:30:40 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Message-ID: <20210407143040.GB4332@42.do-not-panic.com>
References: <20210406133158.73700-1-andriy.shevchenko@linux.intel.com>
 <20210406165108.GA4332@42.do-not-panic.com>
 <CAHp75Ve9vBQqSegM2-ch9NUN-MdevxxOs5ZdHkk1W7AacN+Wrw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHp75Ve9vBQqSegM2-ch9NUN-MdevxxOs5ZdHkk1W7AacN+Wrw@mail.gmail.com>
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (mcgrof[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.214.178 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.178 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1lU9Ci-00053x-Hk
Subject: Re: [Openipmi-developer] [PATCH v1 1/1] kernel.h: Split out panic
 and oops helpers
X-BeenThere: openipmi-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Developer list of OpenIPMI library and Linux driver
 <openipmi-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=openipmi-developer>
List-Post: <mailto:openipmi-developer@lists.sourceforge.net>
List-Help: <mailto:openipmi-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=subscribe>
Cc: Corey Minyard <cminyard@mvista.com>,
 Linux on Hyper-V List <linux-hyperv@vger.kernel.org>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 linux-remoteproc@vger.kernel.org, Michael Kelley <mikelley@microsoft.com>,
 Paul Mackerras <paulus@samba.org>, "H. Peter Anvin" <hpa@zytor.com>,
 Joel Fernandes <joel@joelfernandes.org>,
 "K. Y. Srinivasan" <kys@microsoft.com>, Thomas Gleixner <tglx@linutronix.de>,
 Linux-Arch <linux-arch@vger.kernel.org>, Wei Liu <wei.liu@kernel.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Stephen Hemminger <sthemmin@microsoft.com>, Corey Minyard <minyard@acm.org>,
 Michael Ellerman <mpe@ellerman.id.au>,
 "maintainer:X86 ARCHITECTURE \(32-BIT AND 64-BIT\)" <x86@kernel.org>,
 Ingo Molnar <mingo@redhat.com>, Iurii Zaikin <yzaikin@google.com>,
 Ohad Ben-Cohen <ohad@wizery.com>, Joerg Roedel <jroedel@suse.de>,
 Kees Cook <keescook@chromium.org>, "Paul E. McKenney" <paulmck@kernel.org>,
 Lai Jiangshan <jiangshanlai@gmail.com>, Haiyang Zhang <haiyangz@microsoft.com>,
 Josh Triplett <josh@joshtriplett.org>,
 "Steven Rostedt \(VMware\)" <rostedt@goodmis.org>, rcu@vger.kernel.org,
 Borislav Petkov <bp@alien8.de>, openipmi-developer@lists.sourceforge.net,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Vlastimil Babka <vbabka@suse.cz>,
 Mathieu Poirier <mathieu.poirier@linaro.org>, kexec@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, Eric Biederman <ebiederm@xmission.com>,
 Linux FS Devel <linux-fsdevel@vger.kernel.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 "open list:LINUX FOR POWERPC PA SEMI PWRFICIENT"
 <linuxppc-dev@lists.ozlabs.org>, Mike Rapoport <rppt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Apr 07, 2021 at 10:33:44AM +0300, Andy Shevchenko wrote:
> On Wed, Apr 7, 2021 at 10:25 AM Luis Chamberlain <mcgrof@kernel.org> wrote:
> >
> > On Tue, Apr 06, 2021 at 04:31:58PM +0300, Andy Shevchenko wrote:
> > > diff --git a/include/linux/panic_notifier.h b/include/linux/panic_notifier.h
> > > new file mode 100644
> > > index 000000000000..41e32483d7a7
> > > --- /dev/null
> > > +++ b/include/linux/panic_notifier.h
> > > @@ -0,0 +1,12 @@
> > > +/* SPDX-License-Identifier: GPL-2.0 */
> > > +#ifndef _LINUX_PANIC_NOTIFIERS_H
> > > +#define _LINUX_PANIC_NOTIFIERS_H
> > > +
> > > +#include <linux/notifier.h>
> > > +#include <linux/types.h>
> > > +
> > > +extern struct atomic_notifier_head panic_notifier_list;
> > > +
> > > +extern bool crash_kexec_post_notifiers;
> > > +
> > > +#endif       /* _LINUX_PANIC_NOTIFIERS_H */
> >
> > Why is it worth it to add another file just for this?
> 
> The main point is to break tons of loops that prevent having clean
> headers anymore.
>
> In this case, see bug.h, which is very important in this sense.

OK based on the commit log this was not clear, it seemed more of moving
panic stuff to its own file, so just cleanup.

> >  Seems like a very
> > small file.
> 
> If it is an argument, it's kinda strange. We have much smaller headers.

The motivation for such separate file was just not clear on the commit
log.

  Luis


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
