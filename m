Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CA8C352EA4
	for <lists+openipmi-developer@lfdr.de>; Fri,  2 Apr 2021 19:44:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lSNpu-0000uD-Hy; Fri, 02 Apr 2021 17:43:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1lSNps-0000tw-29
 for openipmi-developer@lists.sourceforge.net; Fri, 02 Apr 2021 17:43:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uGwqbrko/lgN0zNPLpicuhELswkqiAHbqfnatqpxcIk=; b=OPFDBf0FjoGHhZt3hsEoAtqbAF
 wYakzbHsM4VtoDXbfe+Q74XeCvzqrfgq3QyMR6LFjSINlHk+lweye9PGDsR4Zo1oyehXBHmG9dWJo
 juzQQY+tYjkoPDS7C+4nCX0vr0gthrS+S/nFclheFlz20FNUcbI1ep4kC5uCLbeKxjBI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=uGwqbrko/lgN0zNPLpicuhELswkqiAHbqfnatqpxcIk=; b=F
 GQSSdsm5sb251Xdz16gjWT21EZWSSvaUezTDsFdlgdP4TW3QvZnMjgPT0mH0exv8wmkdVt8AidpDm
 /9R5mJYBKeiWQ+l/nrgZkRfN/j56p+KheCjqk6jf4s/cgEi25HVRNu+ndCGXFfu/T415cRM7i/Map
 5AH0Qu1PgfeUSiro=;
Received: from mga05.intel.com ([192.55.52.43])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lSNpU-0005B4-IK
 for openipmi-developer@lists.sourceforge.net; Fri, 02 Apr 2021 17:43:54 +0000
IronPort-SDR: CFNFw4rTJ5FpiFqodt2V+9W8b+9VhqoJY+ssgraVbqhztlrmFXU7ws7dNPi8jP/CY+DaeUwAuC
 G4c79joUk7eg==
X-IronPort-AV: E=McAfee;i="6000,8403,9942"; a="277702215"
X-IronPort-AV: E=Sophos;i="5.81,300,1610438400"; d="scan'208";a="277702215"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2021 10:43:26 -0700
IronPort-SDR: R3DMuhPkLfJbrnF3VglYYveAnNMX+QV3ajIGIJfwkUA/PicU4u4WeYPrjxfEOoHDnlDI9707mE
 2Zhgl/t/7FKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,300,1610438400"; d="scan'208";a="596812981"
Received: from black.fi.intel.com ([10.237.72.28])
 by orsmga005.jf.intel.com with ESMTP; 02 Apr 2021 10:43:24 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id 70C5522B; Fri,  2 Apr 2021 20:43:39 +0300 (EEST)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Corey Minyard <cminyard@mvista.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Date: Fri,  2 Apr 2021 20:43:24 +0300
Message-Id: <20210402174334.13466-1-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1lSNpU-0005B4-IK
Subject: [Openipmi-developer] [PATCH v2 00/10] ipmi_si: Set of clean ups
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
Cc: Corey Minyard <minyard@acm.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

The series contains set of clean ups, main parts of which are:
 - use ne platform_get_mem_or_io() API
 - use match_string() API

Since v2:
- patch 3: rephrased commit message (Corey)
- patch 5: added a comment that array maps to enum (Corey)
- patch 5: added "ipmi" prefix to the name of the array
- patch 6: just exported array w/o moving to header (Corey)
- wrapped up cover letter

Andy Shevchenko (10):
  ipmi_si: Switch to use platform_get_mem_or_io()
  ipmi_si: Remove bogus err_free label
  ipmi_si: Utilize temporary variable to hold device pointer
  ipmi_si: Use proper ACPI macros to check error code for failures
  ipmi_si: Introduce ipmi_panic_event_str[] array
  ipmi_si: Reuse si_to_str[] array in ipmi_hardcode_init_one()
  ipmi_si: Get rid of ->addr_source_cleanup()
  ipmi_si: Use strstrip() to remove surrounding spaces
  ipmi_si: Drop redundant check before calling put_device()
  ipmi_si: Join string literals back

 drivers/char/ipmi/ipmi_msghandler.c  | 54 ++++++----------
 drivers/char/ipmi/ipmi_si.h          |  8 ++-
 drivers/char/ipmi/ipmi_si_hardcode.c | 73 ++++++++-------------
 drivers/char/ipmi/ipmi_si_hotmod.c   | 24 ++-----
 drivers/char/ipmi/ipmi_si_intf.c     | 32 ++++------
 drivers/char/ipmi/ipmi_si_pci.c      | 22 ++-----
 drivers/char/ipmi/ipmi_si_platform.c | 95 ++++++++++++----------------
 7 files changed, 112 insertions(+), 196 deletions(-)

-- 
2.30.2



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
