Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D94C704DE3
	for <lists+openipmi-developer@lfdr.de>; Tue, 16 May 2023 14:37:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1pytvL-0007bM-MH;
	Tue, 16 May 2023 12:37:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <schnelle@linux.ibm.com>) id 1pytvK-0007bG-Au
 for openipmi-developer@lists.sourceforge.net;
 Tue, 16 May 2023 12:37:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=w5b3ImIf3nnbcFTz7oY9tOlzKERrU5xMQAvYBJ7V30U=; b=WMOvntDi4hpftM0SB18zwvsSDT
 CWWbHtLRCdl6wQEJcdmx6GfaFfjIPZS8eCmUfmTGj4VT/lBBvBqseYoThPCuCY4nla2uVpJyvE/Vz
 U4Qpn+TR1P6/qo33S84r2ULXRgNdoWmu7wKtUw3WG+nV5uJXHZgM5taiaAHTluegmsu8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=w5b3ImIf3nnbcFTz7oY9tOlzKERrU5xMQAvYBJ7V30U=; b=nQ5WZMGqOjCf9GDuQjsqx1u9j6
 NNuWF+RassbAT8ybKcC06UZIpXABhAds76Vf1H8Zhlb0tigv+KORgTEWcv3kNFnqLZONHz0G2o8OX
 4nqWHJVY3pBPE6HwuZRNf+OYOKqM3Cj+K38ySp81tjnCooyG17Wdh7aJVdCLeXxKD4y8=;
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pytvE-0006H2-6U for openipmi-developer@lists.sourceforge.net;
 Tue, 16 May 2023 12:37:02 +0000
Received: from pps.filterd (m0356517.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 34GCZ3xX028839; Tue, 16 May 2023 12:36:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com;
 h=message-id : subject :
 from : to : cc : date : in-reply-to : references : content-type :
 content-transfer-encoding : mime-version; s=pp1;
 bh=w5b3ImIf3nnbcFTz7oY9tOlzKERrU5xMQAvYBJ7V30U=;
 b=Icja5l/SBdvgM29tsNdD3O2EnFVMt6EmCmmESudlbRcD3QARDv1geZ7kSO+FJ390xdQw
 eJRRSTb6UjfHUbvnzoPSGTdz1Ut56958qyd78rXAdy+O1IuQTqZoQ9ijFkSJdbDvF8ij
 +fF0zksPSg8fw8QqraSKAax0omuFuJw60xizUM1RU9X+r/YdalQK/cSe3Y9GvvtfxQtq
 LjRLtVKc0aprvpy9X4nll2m5mtrvfz1greOgvATHoKY/QgfdFpyOoTf62RxtPh/7QUVM
 j3R//Pgil2L0E/YsK293YbbdOto6GrmL7YfKUnaK/I5Xq3vcflKFM9DzIM8qTpErRBkI fQ== 
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3qm9ak9dbr-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 16 May 2023 12:36:35 +0000
Received: from m0356517.ppops.net (m0356517.ppops.net [127.0.0.1])
 by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 34GCZJC8029892;
 Tue, 16 May 2023 12:35:53 GMT
Received: from ppma04ams.nl.ibm.com (63.31.33a9.ip4.static.sl-reverse.com
 [169.51.49.99])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3qm9ak9d16-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 16 May 2023 12:35:53 +0000
Received: from pps.filterd (ppma04ams.nl.ibm.com [127.0.0.1])
 by ppma04ams.nl.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id 34G4Zsop017459;
 Tue, 16 May 2023 12:35:47 GMT
Received: from smtprelay05.fra02v.mail.ibm.com ([9.218.2.225])
 by ppma04ams.nl.ibm.com (PPS) with ESMTPS id 3qj264smq3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 16 May 2023 12:35:47 +0000
Received: from smtpav06.fra02v.mail.ibm.com (smtpav06.fra02v.mail.ibm.com
 [10.20.54.105])
 by smtprelay05.fra02v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 34GCZjJ124642064
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 16 May 2023 12:35:45 GMT
Received: from smtpav06.fra02v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 24CB420040;
 Tue, 16 May 2023 12:35:45 +0000 (GMT)
Received: from smtpav06.fra02v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id B96F220043;
 Tue, 16 May 2023 12:35:44 +0000 (GMT)
Received: from [9.152.212.232] (unknown [9.152.212.232])
 by smtpav06.fra02v.mail.ibm.com (Postfix) with ESMTP;
 Tue, 16 May 2023 12:35:44 +0000 (GMT)
Message-ID: <85b69a87c1e6b5a682e2164c9abdc9e2f2cea0a4.camel@linux.ibm.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Date: Tue, 16 May 2023 14:35:44 +0200
In-Reply-To: <2023051656-mammary-cobweb-7265@gregkh>
References: <20230516110038.2413224-1-schnelle@linux.ibm.com>
 <20230516110038.2413224-4-schnelle@linux.ibm.com>
 <2023051656-mammary-cobweb-7265@gregkh>
User-Agent: Evolution 3.48.1 (3.48.1-1.fc38) 
MIME-Version: 1.0
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: B2S-2uTjJBK46yrksP0f_WG1gkEOt6GI
X-Proofpoint-ORIG-GUID: xn7Tbo_9c4JcWlF-ZDe50MR9XhH82cSZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-16_06,2023-05-16_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 mlxlogscore=999
 clxscore=1015 malwarescore=0 mlxscore=0 suspectscore=0 phishscore=0
 spamscore=0 priorityscore=1501 adultscore=0 lowpriorityscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2304280000 definitions=main-2305160107
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, 2023-05-16 at 13:46 +0200, Greg Kroah-Hartman wrote:
 > On Tue, May 16, 2023 at 12:59:59PM +0200, Niklas Schnelle wrote: > > In
 a future patch HAS_IOPORT=n will result in inb()/outb() and frien [...] 
 Content analysis details:   (-0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [148.163.156.1 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1pytvE-0006H2-6U
Subject: Re: [Openipmi-developer] [PATCH v4 03/41] char: impi,
 tpm: depend on HAS_IOPORT
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
From: Niklas Schnelle via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Niklas Schnelle <schnelle@linux.ibm.com>
Cc: linux-arch@vger.kernel.org, Arnd Bergmann <arnd@kernel.org>,
 Albert Ou <aou@eecs.berkeley.edu>, Arnd Bergmann <arnd@arndb.de>,
 Corey Minyard <minyard@acm.org>, "Rafael J. Wysocki" <rafael@kernel.org>,
 linux-pci@vger.kernel.org, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-kernel@vger.kernel.org, Jason Gunthorpe <jgg@ziepe.ca>,
 Jarkko Sakkinen <jarkko@kernel.org>, Alan Stern <stern@rowland.harvard.edu>,
 Corey Minyard <cminyard@mvista.com>,
 Uwe =?ISO-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Bjorn Helgaas <bhelgaas@google.com>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Peter Huewe <peterhuewe@gmx.de>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 openipmi-developer@lists.sourceforge.net, Palmer Dabbelt <palmer@dabbelt.com>,
 linux-integrity@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, 2023-05-16 at 13:46 +0200, Greg Kroah-Hartman wrote:
> On Tue, May 16, 2023 at 12:59:59PM +0200, Niklas Schnelle wrote:
> > In a future patch HAS_IOPORT=n will result in inb()/outb() and friends
> > not being declared. We thus need to add this dependency and ifdef
> > sections of code using inb()/outb() as alternative access methods.
> > 
> > Co-developed-by: Arnd Bergmann <arnd@kernel.org>
> > Signed-off-by: Arnd Bergmann <arnd@kernel.org>
> > Acked-by: Corey Minyard <cminyard@mvista.com> # IPMI
> > Reviewed-by: Jarkko Sakkinen <jarkko@kernel.org>
> > Signed-off-by: Niklas Schnelle <schnelle@linux.ibm.com>
> > ---
> > Note: The HAS_IOPORT Kconfig option was added in v6.4-rc1 so
> >       per-subsystem patches may be applied independently
> > 
> >  drivers/char/Kconfig             |  3 ++-
> >  drivers/char/ipmi/Makefile       | 11 ++++-------
> >  drivers/char/ipmi/ipmi_si_intf.c |  3 ++-
> >  drivers/char/ipmi/ipmi_si_pci.c  |  3 +++
> >  drivers/char/tpm/Kconfig         |  1 +
> >  drivers/char/tpm/tpm_infineon.c  | 16 ++++++++++++----
> >  drivers/char/tpm/tpm_tis_core.c  | 19 ++++++++-----------
> >  7 files changed, 32 insertions(+), 24 deletions(-)
> 
> TPM and IPMI patches go through different git trees, so odds are you are
> going to have to split this patch in 2.
> 
> thanks,
> 
> greg k-h

Ah right sorry about that. I'll split this into 3 patches between the
drivers/char/{Kconfig, ipmi/, and tpm/} changes.

Thanks,
Niklas


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
