Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BA723557A8
	for <lists+openipmi-developer@lfdr.de>; Tue,  6 Apr 2021 17:23:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lTnYL-0003lD-3w; Tue, 06 Apr 2021 15:23:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <arnd@arndb.de>) id 1lTnYJ-0003kn-Hv
 for openipmi-developer@lists.sourceforge.net; Tue, 06 Apr 2021 15:23:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/KC6mbKtCLzeUTflrbvtCs8F/1T1K9YJwDuoZ9BBCPg=; b=Qfc5z1COfQt1P6PrOfK4GAqzZs
 1mvQ5kr9PgdqMFbM97SkF9/o/kBMVpqyz7CjH6sq95NOLBNosuemubo0TJET+Hwt42LtcYvka7d1z
 a6+mCpgcZ9cwjihGe71Tg//dnw4kOTukUAiPQyyHerTVTVmfWk6GvbCEIbwZDNIEnvGg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/KC6mbKtCLzeUTflrbvtCs8F/1T1K9YJwDuoZ9BBCPg=; b=CsaJp/lqIYvvRNwI1UfT7oaatf
 uTjavnyTNb82yvOoMwxlnm1bENl3u9vdarbREvEG6X1y6K421cCzsIrtsz6S5mChRo+6/B150IwGB
 j9803MviGvr70nvYKeKYj5Jxa9iaasLUpBQYCUIiDzXXsPzt95kcuudp98n1cZhFmXWk=;
Received: from mout.kundenserver.de ([212.227.126.135])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lTnY3-00BLhK-Im
 for openipmi-developer@lists.sourceforge.net; Tue, 06 Apr 2021 15:23:39 +0000
Received: from mail-ot1-f49.google.com ([209.85.210.49]) by
 mrelayeu.kundenserver.de (mreue011 [213.165.67.97]) with ESMTPSA (Nemesis) id
 1MzR0i-1lpqOe1XM0-00vQtw for <openipmi-developer@lists.sourceforge.net>; Tue,
 06 Apr 2021 17:10:08 +0200
Received: by mail-ot1-f49.google.com with SMTP id
 k14-20020a9d7dce0000b02901b866632f29so14972528otn.1
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 06 Apr 2021 08:10:08 -0700 (PDT)
X-Gm-Message-State: AOAM533MMuCxQHvFPhm9qSnihTV65RkviSFiBkXsqA7hik41gPWOveEX
 a9VnJc8cn2S8Zw8xkOWMSnZK5Twyf6F1daNf8kg=
X-Google-Smtp-Source: ABdhPJymivlM3E85H8Q+0NCLICsUYllvqqVKgV6xTox+xVrAvu7QQQ8spiRatNW1320IbQIk/CTiHARLx2Yc4o/NYxk=
X-Received: by 2002:a05:6830:148c:: with SMTP id
 s12mr28037074otq.251.1617721807123; 
 Tue, 06 Apr 2021 08:10:07 -0700 (PDT)
MIME-Version: 1.0
References: <20210406133158.73700-1-andriy.shevchenko@linux.intel.com>
In-Reply-To: <20210406133158.73700-1-andriy.shevchenko@linux.intel.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 6 Apr 2021 17:09:50 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3PBvj_JEgxqSD6fg_J8kZzUz_KthZ66RdA5tF4CPPbdg@mail.gmail.com>
Message-ID: <CAK8P3a3PBvj_JEgxqSD6fg_J8kZzUz_KthZ66RdA5tF4CPPbdg@mail.gmail.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
X-Provags-ID: V03:K1:PcNmy7TIvpGF8h0Yk2Yh8zSBRjcjNEzYqLUMujOeieUUSCvPe/p
 cmP/Q6u5SUqHq+vlIo6nzxcB85ooeuP0pe2qUVytqoAsyAQAGoGQSJBwgVoOFFELRDWwW8y
 lTHVhRaENgX6KaJKyQZEWsi/u6Tds+Ibz5Ol/Hbt0zSdtioEXtZjaiRwNYtWFGkvDLV7EJm
 GSZSnNvvhJgTjEMOxzLcA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:eZwXzJdg7cI=:sWH0tymqNb5UyPt//Gs0V6
 QxxTGVWaMlwVZMcO5+VMiLVjoJaIYrpTxMXywYCSzuEMyszXllv82SqcNihs8No8xUh5zzfD4
 k9iWPfHU0VJ/wMxpOtLQZ6vWmyYqdL8LEmJ1Xm1TD+xrKUX/96TvCRoSTYjTS/rg+yOGS1PSY
 qvcsFjeUSq0HSbG8CIT26Tf+EPVuy2ozLmL+cYw/8r0nyUI0UbgCDGXsF0BoZ8WaesnwPgsgR
 0d+6mB836gKwFo4xSi8L9IVQ8B6FuSKPlltIk0DyN6cNe8uodxPc8jBEuW+eL5wt4KgRTAwLK
 hnc9VkMttHesY+lIfVitBI4Ryytps+r529pnb01sUPMlfoRN8uVu7xEkDYRv/O/CjHdLj6V5T
 M3NNWouOeZP04R8NEkuzhEPORWIDkpjZhErQrGPia3wJiGn5maTp4RNHhvWztUKdGgfXffjtL
 nNMARYlQnO/zvgCPMf3g/drfRbKwNTQ3sJKLW4FjC1m4R5+Nb9gpe0VJTazq+8Q67yF0tou3j
 QEUY3Wv7J6cKQUTIai/oVN3Jjk6ao3k5mYAUJJr640utTzn/ZhNt6BfTcslO+Eem7fNSgVcJ9
 nnadXIiTlamN5JDWXQLlcDaY32RbWgR0ng
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [212.227.126.135 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.227.126.135 listed in wl.mailspike.net]
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1lTnY3-00BLhK-Im
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
 linux-arch <linux-arch@vger.kernel.org>, Wei Liu <wei.liu@kernel.org>,
 Stephen Hemminger <sthemmin@microsoft.com>, Corey Minyard <minyard@acm.org>,
 Michael Ellerman <mpe@ellerman.id.au>,
 the arch/x86 maintainers <x86@kernel.org>, Ingo Molnar <mingo@redhat.com>,
 Iurii Zaikin <yzaikin@google.com>, Ohad Ben-Cohen <ohad@wizery.com>,
 Joerg Roedel <jroedel@suse.de>, Kees Cook <keescook@chromium.org>,
 "Paul E. McKenney" <paulmck@kernel.org>,
 Lai Jiangshan <jiangshanlai@gmail.com>, Haiyang Zhang <haiyangz@microsoft.com>,
 Josh Triplett <josh@joshtriplett.org>,
 "Steven Rostedt \(VMware\)" <rostedt@goodmis.org>, rcu@vger.kernel.org,
 Borislav Petkov <bp@alien8.de>, openipmi-developer@lists.sourceforge.net,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Vlastimil Babka <vbabka@suse.cz>,
 Mathieu Poirier <mathieu.poirier@linaro.org>, kexec@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, Eric Biederman <ebiederm@xmission.com>,
 Linux FS-devel Mailing List <linux-fsdevel@vger.kernel.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, Mike Rapoport <rppt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, Apr 6, 2021 at 3:31 PM Andy Shevchenko
<andriy.shevchenko@linux.intel.com> wrote:
>
> kernel.h is being used as a dump for all kinds of stuff for a long time.
> Here is the attempt to start cleaning it up by splitting out panic and
> oops helpers.
>
> At the same time convert users in header and lib folder to use new header.
> Though for time being include new header back to kernel.h to avoid twisted
> indirected includes for existing users.
>
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>

Nice!

Acked-by: Arnd Bergmann <arnd@arndb.de>


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
