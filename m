Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 81D68514CB0
	for <lists+openipmi-developer@lfdr.de>; Fri, 29 Apr 2022 16:24:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nkRXN-0000Zs-7v; Fri, 29 Apr 2022 14:24:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <schnelle@linux.ibm.com>) id 1nkRXL-0000ZY-DJ
 for openipmi-developer@lists.sourceforge.net; Fri, 29 Apr 2022 14:23:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Mime-Version:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+G1WvBMc9aZ+BJJcJ0yKF+ldFn3BMb8yfamF1OdJplQ=; b=cnjQ7f5EcfRSBrYN4JnqB/wwpE
 U7TFQSxnuS4l+s0sQfzAvGiujZ+vkiSRNf48CFvLk69vgss72GmckqtmRgrkTuOWe9SkEZonXG0ne
 sCoxnf2Dai6bs0DyhzB0FCpMBKKxG6NvmusTXQN6guzvIKcH0wGx2FjuTyebVaNs7Kvg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Mime-Version:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+G1WvBMc9aZ+BJJcJ0yKF+ldFn3BMb8yfamF1OdJplQ=; b=avOUMafRD+RGKYmTguYC1DDI2+
 7lFd4wSjTceOvDVObnryxKrOptorp7Gy7jKaT0XJtfywm5Rxt/m9R677nOtzskatnLSh2AXaVfEMx
 f+VygJcaeFIfil1b9K6LrOk6pxz167nWmQevKDAejn6iEXtKtoFfQPbkX1WI2m6W30mQ=;
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nkRXD-0005vR-H4
 for openipmi-developer@lists.sourceforge.net; Fri, 29 Apr 2022 14:23:57 +0000
Received: from pps.filterd (m0098413.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 23TE1bBZ023968;
 Fri, 29 Apr 2022 14:23:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com;
 h=message-id : subject :
 from : to : cc : date : in-reply-to : references : content-type :
 mime-version : content-transfer-encoding; s=pp1;
 bh=+G1WvBMc9aZ+BJJcJ0yKF+ldFn3BMb8yfamF1OdJplQ=;
 b=XZFkVJtrpbtLOqdB5AQHS+AqAbJPIy6ZPz0539t/l2oVz7543JOii2uoleB/cnjqRgmV
 O1/rlQrNBxxN+DjosanBTac9+7DcHH1JbsGSCSWNt3xaL7AVDsNGTBHdh4GSanJQe+G5
 MXU0VkIeTGyk7v887KL1HZaBTtm14eDNzlwgjbgx+ydB1EgVpRaObFi7hTLdoHi//byL
 GifUi4Opl6DN7MsKR40tabN7laSVOINLwpSwm7o3LEFIunPkA9xjbLhhxRxlbJFmVNxM
 R3JrD9P81PRGvQdtkdWUgV+KK73QRT6dFOudCxX568Cp2ilxElQYDE1icoyntdul0QPR cQ== 
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (PPS) with ESMTPS id 3fqsyj636w-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 29 Apr 2022 14:23:39 +0000
Received: from m0098413.ppops.net (m0098413.ppops.net [127.0.0.1])
 by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 23TE4OP4028292;
 Fri, 29 Apr 2022 14:23:38 GMT
Received: from ppma04ams.nl.ibm.com (63.31.33a9.ip4.static.sl-reverse.com
 [169.51.49.99])
 by mx0b-001b2d01.pphosted.com (PPS) with ESMTPS id 3fqsyj6368-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 29 Apr 2022 14:23:38 +0000
Received: from pps.filterd (ppma04ams.nl.ibm.com [127.0.0.1])
 by ppma04ams.nl.ibm.com (8.16.1.2/8.16.1.2) with SMTP id 23TEKrnJ032650;
 Fri, 29 Apr 2022 14:23:36 GMT
Received: from b06avi18626390.portsmouth.uk.ibm.com
 (b06avi18626390.portsmouth.uk.ibm.com [9.149.26.192])
 by ppma04ams.nl.ibm.com with ESMTP id 3fm939184a-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 29 Apr 2022 14:23:36 +0000
Received: from d06av23.portsmouth.uk.ibm.com (d06av23.portsmouth.uk.ibm.com
 [9.149.105.59])
 by b06avi18626390.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP
 id 23TEAP3F50200986
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 29 Apr 2022 14:10:25 GMT
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 4FB87A4040;
 Fri, 29 Apr 2022 14:23:34 +0000 (GMT)
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 9853FA4053;
 Fri, 29 Apr 2022 14:23:33 +0000 (GMT)
Received: from sig-9-145-61-57.uk.ibm.com (unknown [9.145.61.57])
 by d06av23.portsmouth.uk.ibm.com (Postfix) with ESMTP;
 Fri, 29 Apr 2022 14:23:33 +0000 (GMT)
Message-ID: <07c39877d9e940a96be41e21e22fe45dbb73d949.camel@linux.ibm.com>
From: Niklas Schnelle <schnelle@linux.ibm.com>
To: Arnd Bergmann <arnd@arndb.de>, Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 29 Apr 2022 16:23:33 +0200
In-Reply-To: <20220429135108.2781579-7-schnelle@linux.ibm.com>
References: <20220429135108.2781579-1-schnelle@linux.ibm.com>
 <20220429135108.2781579-7-schnelle@linux.ibm.com>
X-Mailer: Evolution 3.28.5 (3.28.5-18.el8) 
Mime-Version: 1.0
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: mP-YwAL0SztvsqODE36bIGF3Xag2W2D8
X-Proofpoint-ORIG-GUID: bYBDgac0vnj0x4Nm9JnXLItL86qpeoRT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.858,Hydra:6.0.486,FMLib:17.11.64.514
 definitions=2022-04-29_06,2022-04-28_01,2022-02-23_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015
 priorityscore=1501 spamscore=0 impostorscore=0 mlxscore=0 malwarescore=0
 mlxlogscore=999 suspectscore=0 phishscore=0 adultscore=0 bulkscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2202240000 definitions=main-2204290078
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  > Hello Niklas, > > On 29.04.22 15:50, Niklas Schnelle wrote:
 > > In a future patch HAS_IOPORT=n will result in inb()/outb() and friends
 > > not being declared. We thus need to add this dependency and [...] 
 Content analysis details:   (-0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1nkRXD-0005vR-H4
Subject: Re: [Openipmi-developer] [RFC v2 04/39] char: impi,
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
Cc: linux-arch@vger.kernel.org, Arnd Bergmann <arnd@kernel.org>,
 Corey Minyard <minyard@acm.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Jarkko Sakkinen <jarkko@kernel.org>, linux-pci@vger.kernel.org,
 "open list:TPM DEVICE DRIVER" <linux-integrity@vger.kernel.org>,
 Peter Huewe <peterhuewe@gmx.de>,
 "moderated list:IPMI SUBSYSTEM" <openipmi-developer@lists.sourceforge.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

> Hello Niklas,
> 
> On 29.04.22 15:50, Niklas Schnelle wrote:
> > In a future patch HAS_IOPORT=n will result in inb()/outb() and friends
> > not being declared. We thus need to add this dependency and ifdef
> > sections of code using inb()/outb() as alternative access methods.
> > 
> > Co-developed-by: Arnd Bergmann <arnd@kernel.org>
> > Signed-off-by: Niklas Schnelle <schnelle@linux.ibm.com>
> 
> [snip]
> 
> > diff --git a/drivers/char/tpm/tpm_infineon.c b/drivers/char/tpm/tpm_infineon.c
> > index 9c924a1440a9..2d2ae37153ba 100644
> > --- a/drivers/char/tpm/tpm_infineon.c
> > +++ b/drivers/char/tpm/tpm_infineon.c
> > @@ -51,34 +51,40 @@ static struct tpm_inf_dev tpm_dev;
> >  
> >  static inline void tpm_data_out(unsigned char data, unsigned char offset)
> >  {
> > +#ifdef CONFIG_HAS_IOPORT
> >       if (tpm_dev.iotype == TPM_INF_IO_PORT)
> >               outb(data, tpm_dev.data_regs + offset);
> >       else
> > +#endif
> 
> This looks ugly. Can't you declare inb/outb anyway and skip the definition,
> so you can use IS_ENABLED() here instead?
> 
> You can mark the declarations with __compiletime_error("some message"), so
> if an IS_ENABLED() reference is not removed at compile time, you get some
> readable error message instead of a link error.
> 
> Cheers,
> Ahmad

I didn't know about __compiletime_error() that certainly sounds
interesting even when using a normal #ifdef.

That said either with the function not being declared or this
__compiletime_error() mechanism I would think that using IS_ENABLED()
relies on compiler optimizations not to compile in the missing/error
function call, right? I'm not sure if that is something we should do.



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
