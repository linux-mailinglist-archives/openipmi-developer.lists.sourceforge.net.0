Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 65BBA35704C
	for <lists+openipmi-developer@lfdr.de>; Wed,  7 Apr 2021 17:30:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lUA8F-0006fO-Ny; Wed, 07 Apr 2021 15:30:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <mcgrof@gmail.com>) id 1lUA8E-0006f3-F8
 for openipmi-developer@lists.sourceforge.net; Wed, 07 Apr 2021 15:30:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+M5ErOA6vMHXgHMo812hqipKBEarvAzxNuznNu4dPh4=; b=fvYS5fQdztig9qBli8xISaMBQz
 3LWxB0I0w8M6FC2CILNi2khn2vl82oKBX4i2o0tMGsrTgm0LTphV+qvcBAs5686dE79mlJ8A548Hn
 +bDBafKBQBNV6movIwRSZ5FPIYKlAQqb6IfpGvltnzMZ0XJ9T14udUt+7+VeeNvX4I0c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+M5ErOA6vMHXgHMo812hqipKBEarvAzxNuznNu4dPh4=; b=NPYSM9tbfyboCVKUD5OsFs/X3d
 pdWTe2uKQVkZEagTQa/X/mfzX4Ee4h6hIT7ogez3ltTevCuE5D6OCUfgT2pqUjmnYcxcKl3Wg2+KB
 Wd1CRwbT15bmMTOjq6wIjoSH1e60uRVVTwa3bClBnIMsaruTBFkCuhLEN6JqcJfHQ69Q=;
Received: from mail-pj1-f45.google.com ([209.85.216.45])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lUA85-0006rw-Ev
 for openipmi-developer@lists.sourceforge.net; Wed, 07 Apr 2021 15:30:14 +0000
Received: by mail-pj1-f45.google.com with SMTP id
 lr1-20020a17090b4b81b02900ea0a3f38c1so3228154pjb.0
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 07 Apr 2021 08:30:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=+M5ErOA6vMHXgHMo812hqipKBEarvAzxNuznNu4dPh4=;
 b=ddRtnSH71UIvgdtFSHv1FU0MhAPm+wS7ds1A0Ynmop7s841PTMTmRBPRgfYavDOEiB
 ghumwdgpF3byNxS+yD5uNvv5WGPN7jZgUotFUoufvfnK9tCWLvQLGCZygWno6twYRcSl
 LAp4iVBzVWoivLRaUms4WLx8ThjsUgQxTUuCXv3gVsiz1uWpWT+aAem1si5pJJF9Ipd+
 e0tJbAlUFa5aDEIE+wolH7YnICmrn8S08yGHM8S0WxbZH7TusalIxTpDsi8+seYLtV3w
 n9y5dHMk9s2BmpijBikgaqZFC4JvkFmIf1LMlhPPXLJDdPzxONrYYYmEvARqKr/iTqI+
 CDkg==
X-Gm-Message-State: AOAM530oO3AttIQcT7Sfrl9GRxILukLp8Akr+RtRHFyzOAFOs6xdGx9+
 qZBGxBElakD3e0OxwOpoxqA=
X-Google-Smtp-Source: ABdhPJxpL5KaAnDuQDJzuUb5KCGFxZ3YcW99M+WHBna9dnMuIO92XOsuZyqjUKOy0DftFppakeCj7Q==
X-Received: by 2002:a17:902:b210:b029:e6:33b4:cd9e with SMTP id
 t16-20020a170902b210b02900e633b4cd9emr3418197plr.67.1617809399828; 
 Wed, 07 Apr 2021 08:29:59 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id f65sm22129550pgc.19.2021.04.07.08.29.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 07 Apr 2021 08:29:58 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id 00948402D7; Wed,  7 Apr 2021 15:29:56 +0000 (UTC)
Date: Wed, 7 Apr 2021 15:29:56 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Message-ID: <20210407152956.GE4332@42.do-not-panic.com>
References: <20210406133158.73700-1-andriy.shevchenko@linux.intel.com>
 <20210406165108.GA4332@42.do-not-panic.com>
 <CAHp75Ve9vBQqSegM2-ch9NUN-MdevxxOs5ZdHkk1W7AacN+Wrw@mail.gmail.com>
 <20210407143040.GB4332@42.do-not-panic.com>
 <CAHp75VeXiLa0b49eoZKVR1DSqTc9hKxpSgy294hMiaUzt0ugOA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHp75VeXiLa0b49eoZKVR1DSqTc9hKxpSgy294hMiaUzt0ugOA@mail.gmail.com>
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (mcgrof[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.216.45 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.45 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1lUA85-0006rw-Ev
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

On Wed, Apr 07, 2021 at 05:59:19PM +0300, Andy Shevchenko wrote:
> On Wed, Apr 7, 2021 at 5:30 PM Luis Chamberlain <mcgrof@kernel.org> wrote:
> > On Wed, Apr 07, 2021 at 10:33:44AM +0300, Andy Shevchenko wrote:
> > > On Wed, Apr 7, 2021 at 10:25 AM Luis Chamberlain <mcgrof@kernel.org> wrote:
> > > > On Tue, Apr 06, 2021 at 04:31:58PM +0300, Andy Shevchenko wrote:
> 
> ...
> 
> > > > Why is it worth it to add another file just for this?
> > >
> > > The main point is to break tons of loops that prevent having clean
> > > headers anymore.
> > >
> > > In this case, see bug.h, which is very important in this sense.
> >
> > OK based on the commit log this was not clear, it seemed more of moving
> > panic stuff to its own file, so just cleanup.
> 
> Sorry for that. it should have mentioned the kernel folder instead of
> lib. But I think it won't clarify the above.
> 
> In any case there are several purposes in this case
>  - dropping dependency in bug.h
>  - dropping a loop by moving out panic_notifier.h
>  - unload kernel.h from something which has its own domain
> 
> I think that you are referring to the commit message describing 3rd
> one, but not 1st and 2nd.

Right!

> I will amend this for the future splits, thanks!

Don't get me wrong, I love the motivation behind just the 3rd purpose,
however I figured there might be something more when I saw panic_notifier.h.
It was just not clear.

But awesome stuff!

  Luis


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
