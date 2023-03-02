Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 18DDB6A8ABF
	for <lists+openipmi-developer@lfdr.de>; Thu,  2 Mar 2023 21:47:11 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1pXppS-0004rR-R7;
	Thu, 02 Mar 2023 20:47:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mcgrof@infradead.org>) id 1pXppR-0004rL-K8
 for openipmi-developer@lists.sourceforge.net;
 Thu, 02 Mar 2023 20:47:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3oCwpVDu4xcBlhkNHBH3geMu/7Wx6m5tuk0CiJ937us=; b=Zo/xdw1HfC0ROFQb1zC6rdqgk6
 4v97K6cPSvwr3T1Fa3XRx6pFqiIXuzWIkim3asqLm8uTbeEGAUjlC55zVh6Kru0tmIY3Mqlec2u1Q
 npj+z6yfnTBSIr24bXnaMeNqjrria7ctc0OMdAl5oXRlAiWNqVg2fjARXcICRq7tbGEQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:
 To:From:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=3oCwpVDu4xcBlhkNHBH3geMu/7Wx6m5tuk0CiJ937us=; b=H
 8qnD8DnAWzRzIbWGUwGGPPaQkYlansI6ygEXukGnNoZ/ri2NfK7wPWOgu3yBWVmfKc3bU2ulEoGHk
 LWMNyHM1kkAv/bwLYoXDRl7Zj4CSnNbCheuKsVQmZoZ8XT+0Pd/cp47Orgh7l5bkfijYmgjphgZQ6
 +/FUAOPiILDDt2JA=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pXppM-0006A5-3w for openipmi-developer@lists.sourceforge.net;
 Thu, 02 Mar 2023 20:47:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Sender:Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=3oCwpVDu4xcBlhkNHBH3geMu/7Wx6m5tuk0CiJ937us=; b=oPfHzWkN8o7ub3rjHyZDbsPtuV
 7OLcJfzIoHmz3hIhOOr5kBrnrOOjnqx+vnDYKGEwImYtId4tJmI3hI7TmpRvol1qy0/js0LDSCCef
 uYyVFwuRIv+72rBzXJJL0naQqm1tyQKKt/2w75lq7w6OQGgJpvTeV7VQJ6LrUilaqMDLDtvyolKf8
 0avj6KHqtDh0Bz8fQ0U6V+osbmh5p1GVtHHfZTjtL/mGvYZwDVOByysy24tuupVVhYrVm+iTXMJtH
 iifnMDagP5WH4KcQAHvfQb48U1z36CnTuk+x2Iz2ihBwpYE8DEkqJb+70NXox4icRbETMcGAnJpzt
 8LnDrLzQ==;
Received: from mcgrof by bombadil.infradead.org with local (Exim 4.94.2 #2
 (Red Hat Linux)) id 1pXpoc-003HXK-7q; Thu, 02 Mar 2023 20:46:14 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: ebiederm@xmission.com, keescook@chromium.org, yzaikin@google.com,
 jejb@linux.ibm.com, martin.petersen@oracle.com, minyard@acm.org,
 kys@microsoft.com, haiyangz@microsoft.com, wei.liu@kernel.org,
 decui@microsoft.com, song@kernel.org, robinmholt@gmail.com,
 steve.wahl@hpe.com, mike.travis@hpe.com, arnd@arndb.de,
 gregkh@linuxfoundation.org, jirislaby@kernel.org, jgross@suse.com,
 sstabellini@kernel.org, oleksandr_tyshchenko@epam.com,
 xen-devel@lists.xenproject.org
Date: Thu,  2 Mar 2023 12:46:05 -0800
Message-Id: <20230302204612.782387-1-mcgrof@kernel.org>
X-Mailer: git-send-email 2.37.1
MIME-Version: 1.0
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: As the large array of sysctls in kernel/sysctl.c is reduced
 we get to the point of wanting to optimize how we register sysctls by only
 dealing with flat simple structures, with no subdirectories. In p [...] 
 Content analysis details:   (-2.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.137.202.133 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1pXppM-0006A5-3w
Subject: [Openipmi-developer] [PATCH 0/7] sysctl: slowly deprecate
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
 Luis Chamberlain <mcgrof@kernel.org>, zhangpeng362@huawei.com,
 linux-fsdevel@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 nixiaoming@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

As the large array of sysctls in kernel/sysctl.c is reduced we get to
the point of wanting to optimize how we register sysctls by only dealing
with flat simple structures, with no subdirectories. In particular the
last empty element should not be needed. We'll get there, and save some
memory, but as we move forward that path will be come the more relevant
path to use in the sysctl registration. It is much simpler as it avoids
recursion.

Turns out we can also convert existing users of register_sysctl_table()
which just need their subdirectories created for them. This effort
addresses most users of register_sysctl_table() in drivers/ except
parport -- that needs a bit more review.

This is part of the process to deprecate older sysctl users which uses
APIs which can incur recursion, but don't need it [0]. This is the
second effort.

Yes -- we'll get to the point *each* of these conversions means saving
one empty syctl, but that change needs a bit more careful review before
merging. But since these conversion are also deleting tables for
subdirectories, the delta in size of the kernel should not incrase
really.

The most complex change is the sgi-xp change which does deal with
a case where we have a subdirectory with an entry, I just split
that in two registrations. No point in keeping recursion just for
a few minor if we can simplify code around. More eyeballs / review /
testing on that change is appreciated.

Sending these out early so they can get tested properly early on
linux-next. I'm happy to take these via sysctl-next [0] but since
I don' think register_sysctl_table() will be nuked on v6.4 I think
it's fine for each of these to go into each respective tree. I can
pick up last stragglers on sysctl-next. If you want me to take this
via sysctl-next too, just let me know and I'm happy to do that. Either
way works.

[0] https://lkml.kernel.org/r/20230302202826.776286-1-mcgrof@kernel.org

Luis Chamberlain (7):
  scsi: simplify sysctl registration with register_sysctl()
  ipmi: simplify sysctl registration
  hv: simplify sysctl registration
  md: simplify sysctl registration
  sgi-xp: simplify sysctl registration
  tty: simplify sysctl registration
  xen: simplify sysctl registration for balloon

 drivers/char/ipmi/ipmi_poweroff.c | 16 +---------------
 drivers/hv/vmbus_drv.c            | 11 +----------
 drivers/md/md.c                   | 22 +---------------------
 drivers/misc/sgi-xp/xpc_main.c    | 24 ++++++++++--------------
 drivers/scsi/scsi_sysctl.c        | 16 +---------------
 drivers/tty/tty_io.c              | 20 +-------------------
 drivers/xen/balloon.c             | 20 +-------------------
 7 files changed, 16 insertions(+), 113 deletions(-)

-- 
2.39.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
