Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DA0F6B304E
	for <lists+openipmi-developer@lfdr.de>; Thu,  9 Mar 2023 23:19:34 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1paObe-0007hf-Sw;
	Thu, 09 Mar 2023 22:19:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mcgrof@infradead.org>) id 1paObd-0007hZ-Po
 for openipmi-developer@lists.sourceforge.net;
 Thu, 09 Mar 2023 22:19:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jK36Zpm8T2on+df54b6OGLN8ramQR+T+L8HPs8R5yHE=; b=XcRur5D4IGUk+Z/HbRMCaNPBEq
 quzpcRB1S4yy0ybIF5lxWw4uwjPubyQ0wTyd1W3k0aexE3NN6a/gzESQd7YKjOPPk5IH1pH9EDefa
 HZ4rOSk7JTNmj8htY56RgedeK9Hh8Amq/2fu5JR6Sx6DZXCi9y19l8AZDMQ/xj3qDFDI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jK36Zpm8T2on+df54b6OGLN8ramQR+T+L8HPs8R5yHE=; b=ctTb0n7IHKcfcZd3XVsezaUUJa
 Nh9p1EmGDvwaca6Gh1Adr/WrYcBB3c2dRgOrGoqWF/Tcnw8LnNKCNrhG/9vpeTKwevhmRdKmaBk/z
 BJ5sW9J1qSpwJ4zBqDLZ/PAWJ7a4rGnPoXeuznh5IxVwzzorqM75SU4kgGx1VOxwRWBc=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1paOba-0000MH-W7 for openipmi-developer@lists.sourceforge.net;
 Thu, 09 Mar 2023 22:19:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=jK36Zpm8T2on+df54b6OGLN8ramQR+T+L8HPs8R5yHE=; b=MQBnApNDuji9teSFgOuyjM3C/p
 Lgjgf584li4FUT3/bLPnV5yqTuo2UTXDrn/714v2Ip8g3XpbRRwZD7nJgpfEz6h2qyYzLRoVFAzS5
 tMd/9xsj+xvHf9pg1aj6/tfQOstrhGZ+G1zt8z2KHggdwT/JzAOm9MQzVoQv6izhooEbpCzv0yw5r
 tM+8qfELGYvw7DcEBgzyGxOP+nBEwfiCipPOReirB45OyXkLojYq6dLPJAZ2LdHzds1OUB+inU0LV
 2hzU4mCm7TVY5QLhVwYJxgZVITHlU54t7YIlOR63U6xiYpBenGFdRnv1EDD5XMZzQjyOtadrDKozg
 W7Wm31lw==;
Received: from mcgrof by bombadil.infradead.org with local (Exim 4.94.2 #2
 (Red Hat Linux)) id 1paOao-00C8rx-Vc; Thu, 09 Mar 2023 22:18:34 +0000
Date: Thu, 9 Mar 2023 14:18:34 -0800
From: Luis Chamberlain <mcgrof@kernel.org>
To: ebiederm@xmission.com, keescook@chromium.org, yzaikin@google.com,
 jejb@linux.ibm.com, martin.petersen@oracle.com, minyard@acm.org,
 kys@microsoft.com, haiyangz@microsoft.com, wei.liu@kernel.org,
 decui@microsoft.com, song@kernel.org, robinmholt@gmail.com,
 steve.wahl@hpe.com, mike.travis@hpe.com, arnd@arndb.de,
 gregkh@linuxfoundation.org, jirislaby@kernel.org, jgross@suse.com,
 sstabellini@kernel.org, oleksandr_tyshchenko@epam.com,
 xen-devel@lists.xenproject.org
Message-ID: <ZApbOilWsw9Sk/k4@bombadil.infradead.org>
References: <20230302204612.782387-1-mcgrof@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230302204612.782387-1-mcgrof@kernel.org>
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Mar 02, 2023 at 12:46:05PM -0800, Luis Chamberlain
 wrote: > I'm happy to take these via sysctl-next [0] but since > I don' think
 register_sysctl_table() will be nuked on v6.4 I think > it's fi [...] 
 Content analysis details:   (-2.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.137.202.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1paOba-0000MH-W7
Subject: Re: [Openipmi-developer] [PATCH 0/7] sysctl: slowly deprecate
 register_sysctl_table()
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
Cc: j.granados@samsung.com, linux-hyperv@vger.kernel.org,
 linux-scsi@vger.kernel.org, sujiaxun@uniontech.com, tangmeng@uniontech.com,
 apparmor@lists.ubuntu.com, patches@lists.linux.dev, willy@infradead.org,
 linux-kernel@vger.kernel.org, linux-raid@vger.kernel.org,
 zhangpeng362@huawei.com, linux-fsdevel@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net, nixiaoming@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Thu, Mar 02, 2023 at 12:46:05PM -0800, Luis Chamberlain wrote:
> I'm happy to take these via sysctl-next [0] but since
> I don' think register_sysctl_table() will be nuked on v6.4 I think
> it's fine for each of these to go into each respective tree. I can
> pick up last stragglers on sysctl-next. If you want me to take this
> via sysctl-next too, just let me know and I'm happy to do that. Either
> way works.

As I noted I've dropped the following already-picked-up patches from
my queue:

ipmi: simplify sysctl registration
sgi-xp: simplify sysctl registration
tty: simplify sysctl registration

I've taken the rest now through sysctl-next:

scsi: simplify sysctl registration with register_sysctl()
hv: simplify sysctl registration
md: simplify sysctl registration
xen: simplify sysctl registration for balloon

If a maintainer would prefer to take one on through their
tree fine by me too, just let me know and I'll drop the patch.

  Luis


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
