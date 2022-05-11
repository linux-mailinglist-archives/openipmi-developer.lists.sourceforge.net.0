Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 09012523A99
	for <lists+openipmi-developer@lfdr.de>; Wed, 11 May 2022 18:47:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nopUw-0000RW-8z; Wed, 11 May 2022 16:47:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <hca@linux.ibm.com>) id 1nopUv-0000RQ-5x
 for openipmi-developer@lists.sourceforge.net; Wed, 11 May 2022 16:47:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tjIW4ViQYza/lnoDnWyOhboEO5kjiPdt7taCyynzKFw=; b=jtjt34TNPGJMLQ/EH8FAXhS+cx
 GEV6jeLLbDpBhsHL5FJBMAay2akGfq9KOCB0W2MokoZYScF30bFn9a81CvNZQI99+raxFET1bXcGY
 G1eArekOEkCeBYRZAeTM224eMnNAxE4r5fSRISBmCa+sLkXh6zI9amKB9X5TOeJfJK9w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=tjIW4ViQYza/lnoDnWyOhboEO5kjiPdt7taCyynzKFw=; b=WMtmU23TbL7YWpIxN3bdDNLJDg
 4AqI68tuuGYckPl0rmNjUhFsE3hFk6h/uWrnIAIQKtU2UouHXxKgooub3SI/W46yx3GI9Znrgd55x
 3R4qcJrg9W5U3xD+y0N2YTnHtwTcHkOkZpQSLJgSUf20fr8GoIR77NzNwT6POU7mgT/w=;
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nopUs-0000Hj-Rn
 for openipmi-developer@lists.sourceforge.net; Wed, 11 May 2022 16:47:37 +0000
Received: from pps.filterd (m0098396.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 24BESoKr028080;
 Wed, 11 May 2022 16:46:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com;
 h=date : from : to : cc :
 subject : message-id : references : mime-version : content-type :
 in-reply-to; s=pp1; bh=tjIW4ViQYza/lnoDnWyOhboEO5kjiPdt7taCyynzKFw=;
 b=lxUbqAEO3GqUpU+Tuw2IWXF1fzXIGSDn1j9FVHjMmFIPrrH/+bQrVN9PaaYcbEJhBJIr
 7d0t++ZFM6UKMdcnwcUF0YasHW2SP51KwmfPJnRgOou9+kRarIXLa3hIMjmu5cX5t3FO
 6rItwaIor28IfP+e6c0HY1HIerMLLjGg06tg70umpoMhCUKjDu0piWYCrZz/VisJ+s0b
 0DuyX+X+ttOZsVNhvwPdzqfPCbp/RA3MDqZWBEVZBj0PN/wvhGTqQYzQ4imgN+k8TjhU
 NC3v9IrNMZOoN56TSdKZo20ktYuMVwJV19grssXUZ/JxpGndCu9D0HmYa5fO310s9Ten QA== 
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3g0etx3406-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 11 May 2022 16:46:00 +0000
Received: from m0098396.ppops.net (m0098396.ppops.net [127.0.0.1])
 by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 24BGebih023228;
 Wed, 11 May 2022 16:45:59 GMT
Received: from ppma03ams.nl.ibm.com (62.31.33a9.ip4.static.sl-reverse.com
 [169.51.49.98])
 by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3g0etx33y1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 11 May 2022 16:45:59 +0000
Received: from pps.filterd (ppma03ams.nl.ibm.com [127.0.0.1])
 by ppma03ams.nl.ibm.com (8.16.1.2/8.16.1.2) with SMTP id 24BGgY6p030999;
 Wed, 11 May 2022 16:45:56 GMT
Received: from b06cxnps3074.portsmouth.uk.ibm.com
 (d06relay09.portsmouth.uk.ibm.com [9.149.109.194])
 by ppma03ams.nl.ibm.com with ESMTP id 3fwgd8wsc9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 11 May 2022 16:45:55 +0000
Received: from d06av21.portsmouth.uk.ibm.com (d06av21.portsmouth.uk.ibm.com
 [9.149.105.232])
 by b06cxnps3074.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 24BGjqsM27197764
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 11 May 2022 16:45:52 GMT
Received: from d06av21.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id BA0B35204E;
 Wed, 11 May 2022 16:45:52 +0000 (GMT)
Received: from osiris (unknown [9.145.80.86])
 by d06av21.portsmouth.uk.ibm.com (Postfix) with ESMTPS id B9FCE52050;
 Wed, 11 May 2022 16:45:50 +0000 (GMT)
Date: Wed, 11 May 2022 18:45:49 +0200
From: Heiko Carstens <hca@linux.ibm.com>
To: "Guilherme G. Piccoli" <gpiccoli@igalia.com>
Message-ID: <YnvoPe2cTS31qbjb@osiris>
References: <20220427224924.592546-1-gpiccoli@igalia.com>
 <20220427224924.592546-23-gpiccoli@igalia.com>
 <7017c234-7c73-524a-11b6-fefdd5646f59@igalia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7017c234-7c73-524a-11b6-fefdd5646f59@igalia.com>
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: P8jYmW-Xe3lS0Lxn9LfjJuLQx8-pWyu5
X-Proofpoint-ORIG-GUID: 3EoVOe4XNkWaSjwGnBLNECSOqY142ccD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.858,Hydra:6.0.486,FMLib:17.11.64.514
 definitions=2022-05-11_07,2022-05-11_01,2022-02-23_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0
 clxscore=1015 malwarescore=0 phishscore=0 mlxscore=0 adultscore=0
 suspectscore=0 mlxlogscore=429 bulkscore=0 impostorscore=0
 priorityscore=1501 spamscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2202240000 definitions=main-2205110076
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, May 09, 2022 at 11:16:10AM -0300,
 Guilherme G. Piccoli
 wrote: > On 27/04/2022 19:49, Guilherme G. Piccoli wrote: > > Currently we
 have 3 notifier lists in the panic path, which will > > be wir [...] 
 Content analysis details:   (-0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [148.163.156.1 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nopUs-0000Hj-Rn
Subject: Re: [Openipmi-developer] [PATCH 22/30] panic: Introduce the panic
 post-reboot notifier list
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
Cc: linux-hyperv@vger.kernel.org, halves@canonical.com,
 linux-xtensa@linux-xtensa.org, peterz@infradead.org,
 alejandro.j.jimenez@oracle.com, linux-remoteproc@vger.kernel.org,
 feng.tang@intel.com, linux-mips@vger.kernel.org, hidehiro.kawai.ez@hitachi.com,
 sparclinux@vger.kernel.org, john.ogness@linutronix.de,
 Alexander Gordeev <agordeev@linux.ibm.com>, will@kernel.org,
 tglx@linutronix.de, linux-leds@vger.kernel.org, linux-s390@vger.kernel.org,
 mikelley@microsoft.com, arnd@arndb.de, bhe@redhat.com, corbet@lwn.net,
 paulmck@kernel.org, fabiomirmar@gmail.com, x86@kernel.org, mingo@redhat.com,
 bcm-kernel-feedback-list@broadcom.com, xen-devel@lists.xenproject.org,
 Christian Borntraeger <borntraeger@linux.ibm.com>, dyoung@redhat.com,
 vgoyal@redhat.com, mhiramat@kernel.org, pmladek@suse.com,
 dave.hansen@linux.intel.com, keescook@chromium.org,
 Vasily Gorbik <gor@linux.ibm.com>, linux-pm@vger.kernel.org,
 linux-um@lists.infradead.org, rostedt@goodmis.org, rcu@vger.kernel.org,
 gregkh@linuxfoundation.org, bp@alien8.de, luto@kernel.org,
 linux-tegra@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 andriy.shevchenko@linux.intel.com, vkuznets@redhat.com,
 linux-edac@vger.kernel.org, jgross@suse.com, linux-parisc@vger.kernel.org,
 netdev@vger.kernel.org, kernel@gpiccoli.net, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, stern@rowland.harvard.edu,
 senozhatsky@chromium.org, d.hatayama@jp.fujitsu.com,
 Sven Schnelle <svens@linux.ibm.com>, kernel-dev@igalia.com,
 linux-alpha@vger.kernel.org, akpm@linux-foundation.org,
 linuxppc-dev@lists.ozlabs.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Mon, May 09, 2022 at 11:16:10AM -0300, Guilherme G. Piccoli wrote:
> On 27/04/2022 19:49, Guilherme G. Piccoli wrote:
> > Currently we have 3 notifier lists in the panic path, which will
> > be wired in a way to allow the notifier callbacks to run in
> > different moments at panic time, in a subsequent patch.
> > 
> > But there is also an odd set of architecture calls hardcoded in
> > the end of panic path, after the restart machinery. They're
> > responsible for late time tunings / events, like enabling a stop
> > button (Sparc) or effectively stopping the machine (s390).
> > 
> > This patch introduces yet another notifier list to offer the
> > architectures a way to add callbacks in such late moment on
> > panic path without the need of ifdefs / hardcoded approaches.
> > 
> > Cc: Alexander Gordeev <agordeev@linux.ibm.com>
> > Cc: Christian Borntraeger <borntraeger@linux.ibm.com>
> > Cc: "David S. Miller" <davem@davemloft.net>
> > Cc: Heiko Carstens <hca@linux.ibm.com>
> > Cc: Sven Schnelle <svens@linux.ibm.com>
> > Cc: Vasily Gorbik <gor@linux.ibm.com>
> > Signed-off-by: Guilherme G. Piccoli <gpiccoli@igalia.com>
> 
> Hey S390/SPARC folks, sorry for the ping!
> 
> Any reviews on this V1 would be greatly appreciated, I'm working on V2
> and seeking feedback in the non-reviewed patches.

Sorry, missed that this is quite s390 specific. So, yes, this looks
good to me and nice to see that one of the remaining CONFIG_S390 in
common code will be removed!

For the s390 bits:
Acked-by: Heiko Carstens <hca@linux.ibm.com>


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
