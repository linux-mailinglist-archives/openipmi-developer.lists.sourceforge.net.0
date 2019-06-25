Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DE3855193
	for <lists+openipmi-developer@lfdr.de>; Tue, 25 Jun 2019 16:24:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1hfmNH-0007pR-7O; Tue, 25 Jun 2019 14:24:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcamuso@redhat.com>) id 1hfmNF-0007pF-T8
 for openipmi-developer@lists.sourceforge.net; Tue, 25 Jun 2019 14:24:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Date:Message-ID:Subject:From:To:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=915/9vsBgmHOhqPqhN7tU7r6DY1WMdSxZ7RIL6FFNt0=; b=EPCHciAkwdr+UBvFOAUNOGX9m5
 odGwTAdka4VAhv6HJjD4WR1e02XXBJP8yXtWfDf/cWiWJy0j/6t/X1UuERhzYtqDi2RrjQDQ+HTyh
 dhGM8GGkW7zh2h6Xhcn68rXlacVCDFbVsVat3q723X1tPa1LkirJiVwO4vJPTuMd7fD8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Message-ID:
 Subject:From:To:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=915/9vsBgmHOhqPqhN7tU7r6DY1WMdSxZ7RIL6FFNt0=; b=S
 JNT4iuSgzYCjhLDk/pxP7Nbt2A/9ridzo4d7uBT+Rsjihvg4X0wtZX9EoktJMfMnOG5afoJU4kUHW
 olsM0G0x/VsTRDHd0Yg69jcE2UYg28SE2w9gfUgK+vnwsovvl3F2OW8bCm2Rf35RS7kuwOVqHNtBX
 JTEi12zeHfonuBdE=;
Received: from mx1.redhat.com ([209.132.183.28])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hfmNI-00DDrQ-Kb
 for openipmi-developer@lists.sourceforge.net; Tue, 25 Jun 2019 14:24:46 +0000
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 3010330C0DE5;
 Tue, 25 Jun 2019 14:24:34 +0000 (UTC)
Received: from dhcp-17-119.bos.redhat.com (dhcp-17-119.bos.redhat.com
 [10.18.17.119])
 by smtp.corp.redhat.com (Postfix) with ESMTP id DBE9310021B2;
 Tue, 25 Jun 2019 14:24:29 +0000 (UTC)
To: Corey Minyard <cminyard@mvista.com>,
 openipmi-developer@lists.sourceforge.net
From: Tony Camuso <tcamuso@redhat.com>
Message-ID: <352582dd-a26d-a788-d63b-36aa9c029fb0@redhat.com>
Date: Tue, 25 Jun 2019 10:24:29 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.45]); Tue, 25 Jun 2019 14:24:39 +0000 (UTC)
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1hfmNI-00DDrQ-Kb
Subject: [Openipmi-developer] IPMI test suite automation
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net


I'd like to know if there are any test suites out there for
automated IPMI testing, especially as new features emerge and
new bugs are exposed.

We have a few of our own, but they are relatively primitive
and don't provide a breadth and depth of coverage that could
affirm full functionality or catch all regressions.
Unfortunately, many regressions and functionality misses are
caught by our customers.

I know that Corey uses a VM with virtual IPMI, and I'd like
to know more about that, if there is a link somewhere that
has the information.

Virtual technology frees us from having to find systems using
all the various methods of reporting the IPMI as well as a
means to test all the functionality, and it provides a better
way to automate testing.

Regards,
Tony Camuso
Red Hat


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
